<?php

namespace AppBundle\Service;

use Doctrine\ORM\EntityManager;

use AppBundle\Entity\Client;

//use Ijanki\Bundle\FtpBundle\Exception\FtpException;

class ExportCronService
{

  public function __construct(EntityManager $entityManager)
  {
    $this->em = $entityManager;
  }

  public function createExportClientCSVFile()
  {
    
    @unlink('D:\wamp\www\StoreApp\web\export\export.csv');
    $results = $this->em->getRepository('AppBundle:Client')->findAll();

    //$results = array_pop($results);

    $handle = fopen('D:\wamp\www\questionnaire\web\exports\export.csv', 'w+');
    // Nom des colonnes du CSV 
    fputcsv($handle, array(
      'id',
      'hash',
      'Date_de_commande',
      'question1',
      'question2',
      'question3',
      'question4',
      'question5',
      'created_at',
      'modified_at',
      'last_visit_at',
      'commentaire1',
      'commentaire2',
      'commentaire3',
      'commentaire4',
      'commentaire5'
      ),';');

    //Champs
    foreach( $results as $row ) 
    {
      if( $row->getCreatedAt() instanceof \DateTime )
      {
        $date1 = $row->getCreatedAt()->format("Y-m-d H:I:s");
      }
      else{
        $date1 = null;
      }

      if( $row->getModifiedAt() instanceof \DateTime )
      {
        $date2 = $row->getModifiedAt()->format("Y-m-d H:I:s");
      }
      else{
        $date2 = null;
      }

      if( $row->getLastVisitAt() instanceof \DateTime )
      {
        $date3 = $row->getLastVisitAt()->format("Y-m-d H:I:s");
      }
      else{
        $date3 = null;
      }
      
      fputcsv($handle,array(
        $row->getId(),
        $row->getHash(),
        $row->getDateCommande(),
        $row->getQuestion1(),
        $row->getQuestion2(),
        $row->getQuestion3(),
        $row->getQuestion4(),
        $row->getQuestion5(),
        $date1,
        $date2,
        $date3,
        $row->getCommentaire1(),
        $row->getCommentaire2(),
        $row->getCommentaire3(),
        $row->getCommentaire4(),
        $row->getCommentaire5()
        ),'|');
    }

    fclose($handle);

  }

}
