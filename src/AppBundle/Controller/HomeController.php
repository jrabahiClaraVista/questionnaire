<?php

namespace AppBundle\Controller;


// src/OC/PlatformBundle/Controller/AdvertController.php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use AppBundle\Entity\Client;
use AppBundle\Form\ClientType;

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

        $client->setLastVisitAt(new \DateTime());            
        $em->flush();

        $form = $this->createForm(new ClientType(), $client);

        $form->handleRequest($request);

        $data = $form->getData();

        if ( $request->getMethod() == 'POST' || $request->isXmlHttpRequest() ) {
            
            $client->setQuestion1($data->getQuestion1());
            $client->setQuestion2($data->getQuestion2());
            $client->setQuestion3($data->getQuestion3());
            $client->setQuestion4($data->getQuestion4());
            $client->setQuestion5($data->getQuestion5());
            $client->setCommentaire1($data->getCommentaire1());
            $client->setCommentaire2($data->getCommentaire2());
            $client->setCommentaire3($data->getCommentaire3());
            $client->setCommentaire4($data->getCommentaire4());
            $client->setCommentaire5($data->getCommentaire5());

            if( $data->getQuestion1() > 0 && $data->getQuestion2() > 0 && $data->getQuestion3() > 0 && $data->getQuestion4() > 0 && $data->getQuestion5() > 0 )
            {
                $client->setValidatedAt( new \DateTime() );
            }

            $em->flush();

            if($request->getMethod() == 'POST'){
                return $this->render('AppBundle:Home:merci.html.twig', array(
                    )
                );
            }
        }

        return $this->render('AppBundle:Home:index.html.twig', array(
            'client' => $client,
            'form'   => $form->createView()
            )
        );        
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

        $dateCommande = new \DateTime($dateCommande);

        $client = $em->getRepository('AppBundle:Client')->findOneBy(array('hash' => $hash, 'dateCommande' => $dateCommande));

        if ($client == null) {
            $client = new Client();
            $client->setHash($hash);
            $client->setDateCommande($dateCommande);

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
}
