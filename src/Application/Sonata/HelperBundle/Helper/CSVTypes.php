<?php
// Fungus/ShortyBundle/Helper/CSVTypes.php
namespace Application\Sonata\HelperBundle\Helper;

class CSVTypes {
    const User          = 0;
    const Campaign      = 1;
    const Client        = 2;
    const Recipient     = 3;
    const Field         = 4;
    const Import        = 5;
    const KpiMonth      = 6;
    const KpiYearToDate = 7;

    public static function getTypes() {
        return array(
                self::User          => 'User',
                self::Campaign      => 'Campaign',
                self::Client        => 'Client',
                self::Recipient     => 'Recipient',
                self::Field         => 'Field',
                self::Import        => 'Import',
                self::KpiMonth      => 'KpiMonth',
                self::KpiYearToDate => 'KpiYearToDate',

        );
    }

    public static function getTypesAndIds() {
        
        $all=self::getTypes();
        $return=array();
        
        foreach($all as $key => $value) {
            $return[]=array("id" => $key, "title" => $value);
        }

        return $return;
    }

    public static function getNameOfType($type) {
        
        $allTypes=self::getTypes();
        
        if (isset($allTypes[$type])) return $allTypes[$type];
        
        return "- Unknown Type -";
    }

    public static function getEntityClass($type) {
        
        switch ($type) {
            case self::User:            return "ApplicationSonataUserBundle:User";
            case self::Campaign:        return "AppBundle:Campaign";
            case self::Client:          return "AppBundle:Client";
            case self::Recipient:       return "AppBundle:Recipient";
            case self::Field:           return "AppBundle:Field";
            case self::Import:          return "AppBundle:Import";
            case self::KpiMonth:        return "AppBundle:KpiMonth";
            case self::KpiYearToDate:   return "AppBundle:KpiYearToDate";
            default: return false;
        }
    }

    public static function existsType($type) {
        
        $allTypes=self::getTypes();
        
        if (isset($allTypes[$type])) return true;
        
        return false;
    }

}
