<?php

namespace AppBundle\Service;



use Symfony\Bundle\FrameworkBundle\Command\ContainerAwareCommand;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

use Symfony\Component\DependencyInjection\ContainerInterface;

use Doctrine\ORM\EntityManager;


use AppBundle\Entity\Client;

//use Ijanki\Bundle\FtpBundle\Exception\FtpException;

class ExportCronService
{
  private $pdo;
  private $em;
  private $container;

  public function __construct(EntityManager $entityManager, ContainerInterface $container)
  {
      $this->em           = $entityManager;
      $this->container    = $container;

      $this->pdo = $this->container->get('app.pdo_connect');
      $this->pdo = $this->pdo->initPdoClienteling();
  }

  public function deleteHistoDays(InputInterface $input, OutputInterface $output, $days){
    $date = new \DateTime();
    $date = $date->format("Ymd");

    $sql1 = "DELETE from app_client 
          WHERE modified_at <= DATE_SUB( now(), INTERVAL $days DAY ) 
    ";

    try
    {
      $stmt1->execute();
    }
    catch(Exception $e)
    {
      $output->writeln($e->getMessage());
      die('Erreur 1 : '.$e->getMessage());
    }

    $output->writeln("Les anciennes lignes ont été supprimees");
  }

  public function createExportClientCSVFile()
  {
    $now = new \DateTime();

    $date_check1 =  new \DateTime();
    $date_check2 =  new \DateTime();

    $date_check1->setTime(0,0);
    $date_check2->setTime(1,0);


    if ( ($now >= $date_check1) && ($now <= $date_check2) )
    {
      $date = new \DateTime('-1 days');
      $date = $date->format('Ymd');
    }
    else
    {
      $date = new \DateTime();
      $date = $date->format('Ymd');
    }

    @rename('/data/ftp/exports/export.csv', '/data/ftp/exports/export_'.$date.'.csv');
    $results = $this->em->getRepository('AppBundle:Client')->getDailyClient();

    //$results = array_pop($results);

    $handle = fopen('/data/ftp/exports/export.csv', 'w+');
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
      'question6',
      'created_at',
      'modified_at',
      'last_visit_at',
      'commentaire1',
      'commentaire2',
      'commentaire3',
      'commentaire4',
      'commentaire5',
      'commentaire6',
      'type',
      'validated_at'
      ),';');

    //Champs
    foreach( $results as $row )
    {
      if( $row->getDateCommande() instanceof \DateTime )
      {
        $dateC = $row->getDateCommande()->format("Y-m-d H:i:s");
      }
      else{
        $dateC = null;
      }

      if( $row->getCreatedAt() instanceof \DateTime )
      {
        $date1 = $row->getCreatedAt()->format("Y-m-d H:i:s");
      }
      else{
        $date1 = null;
      }

      if( $row->getModifiedAt() instanceof \DateTime )
      {
        $date2 = $row->getModifiedAt()->format("Y-m-d H:i:s");
      }
      else{
        $date2 = null;
      }

      if( $row->getLastVisitAt() instanceof \DateTime )
      {
        $date3 = $row->getLastVisitAt()->format("Y-m-d H:i:s");
      }
      else{
        $date3 = null;
      }

      if( $row->getValidatedAt() instanceof \DateTime )
      {
        $date4 = $row->getValidatedAt()->format("Y-m-d H:i:s");
      }
      else{
        $date4 = null;
      }

      fputcsv($handle,array(
        $row->getId(),
        $row->getHash(),
        $dateC,
        $row->getQuestion1(),
        $row->getQuestion2(),
        $row->getQuestion3(),
        $row->getQuestion4(),
        $row->getQuestion5(),
        $row->getQuestion6(),
        $date1,
        $date2,
        $date3,
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire1() ) ) ) ),
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire2() ) ) ) ),
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire3() ) ) ) ),
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire4() ) ) ) ),
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire5() ) ) ) ),
        str_replace("  ", " ",str_replace("\r", " ", str_replace("\r\n", " ", str_replace("\n", " ", $row->getCommentaire6() ) ) ) ),
        $row->getType(),
        $date4
        ),'|');
    }

    fclose($handle);

  }

}
