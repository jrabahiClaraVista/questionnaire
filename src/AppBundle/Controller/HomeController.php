<?php

namespace AppBundle\Controller;


// src/OC/PlatformBundle/Controller/AdvertController.php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use AppBundle\Entity\Client;
use AppBundle\Form\ClientType;
use AppBundle\Form\Client2Type;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\RedirectResponse;

use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

// Annotaitonss :
// Pour gérer les autorisations
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
// Pour gérer le ParamConverter et utiliser un entité en parametre à la place d'une simple variable
use Sensio\Bundle\FrameworkExtraBundle\Configuration\ParamConverter;


class HomeController extends Controller
{
    /**
     * @ParamConverter("client", options={"mapping": {"client_id": "id"}})
     */
    public function indexAction(Client $client, Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        if( $client == null){
            throw new NotFoundHttpException();
        }

        if( $client->getValidatedAt() instanceof \DateTime ){
            return $this->render('AppBundle:Home:merci.html.twig', array(
                'client' => $client
                    )
                );
        }

        $client_check = $em->getRepository('AppBundle:Client')->findOneBy(array('hash' => $client->getHash(), 'dateCommande' => $client->getDateCommande()));

        if($client_check != null){
            $client = $client_check;
            $client->setLastVisitAt(new \DateTime());
        }
        else{
            $client->setLastVisitAt(new \DateTime());
        }
        $em->flush();

        if($client->getType() == 'Montre'){
            $form = $this->createForm(new ClientType(), $client);
        }
        else{
            $form = $this->createForm(new Client2Type(), $client);
        }

        $form->handleRequest($request);

        $data = $form->getData();

        if ( $request->getMethod() == 'POST' || $request->isXmlHttpRequest() ) {
            
            $client->setQuestion1($data->getQuestion1());
            $client->setQuestion2($data->getQuestion2());
            $client->setQuestion3($data->getQuestion3());
            $client->setQuestion4($data->getQuestion4());
            $client->setQuestion5($data->getQuestion5());
            $client->setQuestion6($data->getQuestion6());
            $client->setCommentaire1($data->getCommentaire1());
            $client->setCommentaire2($data->getCommentaire2());
            $client->setCommentaire3($data->getCommentaire3());
            $client->setCommentaire4($data->getCommentaire4());
            $client->setCommentaire5($data->getCommentaire5());
            $client->setCommentaire6($data->getCommentaire6());

            if(     $data->getQuestion1() >= 0 && $data->getQuestion2() != 0 && $data->getQuestion3() != 0
                &&  $data->getQuestion4() != 0 && $data->getQuestion5() != 0 && $data->getQuestion6() != 0 )
            {
                $client->setValidatedAt( new \DateTime() );
            }

            $em->flush();

            if($request->getMethod() == 'POST'){
                return $this->render('AppBundle:Home:merci.html.twig', array(
                'client' => $client
                    )
                );
            }
        }

        if($client->getType() == 'Montre'){
            return $this->render('AppBundle:Home:index.html.twig', array(
                'client' => $client,
                'form'   => $form->createView()
                )
            );
        }  
       else{
            return $this->render('AppBundle:Home:index2.html.twig', array(
                'client' => $client,
                'form'   => $form->createView()
                )
            );
        }        
    }

    public function dateAction($hash, Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $date = explode(" ", $request->get('d'));
        $date = explode("/",$date[0]);

        $dateCommande = $date[2].'-'.$date[1].'-'.$date[0];

        if(count($date) < 2 ){
            $dateCommande = $request->get('d');
        }

        $note =  intval($request->get('n'));

        $dateCommande = new \DateTime($dateCommande);

        $type = $request->get('t');

        $client = $em->getRepository('AppBundle:Client')->findOneBy(array('hash' => $hash, 'dateCommande' => $dateCommande));

        if ($client == null) {
            $client = new Client();
            $client->setHash($hash);
            $client->setDateCommande($dateCommande);

            if($type == 'm' or $type == null){
                $client->setType("Montre");
            }
            elseif($type == 'pb'){
                $client->setType("Pile/Bracelet");
                $client->setQuestion4(-1);
                $client->setQuestion5(-1);
            }

            if($note != null and in_array($note,array(0,1,2,3,4,5,6,7,8,9,10))){
                $client->setQuestion1($note);
            }

            $em->persist($client);
            $em->flush();
        }

        /*$response = $this->forward('AppBundle:Home:index', array(
            'client_id' => $client->getId(),
        ));*/
        $response =  new RedirectResponse($this->generateUrl('app_home', array('client_id' => $client->getId())));

        // ... further modify the response or return it directly

        return $response;
    }

    /**
     * @ParamConverter("client", options={"mapping": {"client_id": "id"}})
     */
    public function merciAction(Client $client, Request $request)
    {

        return $this->render('AppBundle:Home:merci.html.twig', array(
            'client' => $client
            )
        );
    }

    public function defaultAction(Request $request)
    {

        return $this->render('AppBundle:Home:default.html.twig', array(
            )
        );
    }
}
