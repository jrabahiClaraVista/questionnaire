<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;

class ClientType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('hash', 'hidden')
            ->add('question1', 'Symfony\Component\Form\Extension\Core\Type\ChoiceType', array(
                'choices' => array(
                      '0'   => 0,
                      '1'   => 1,
                      '2'   => 2,
                      '3'   => 3,
                      '4'   => 4,
                      '5'   => 5,
                      '6'   => 6,
                      '7'   => 7,
                      '8'   => 8,
                      '9'   => 9,
                      '10'   => 10
                  ),
                'label' => false,
                'expanded' => true,
                'multiple' => false,
                'choices_as_values' => true,
                'required' => false,
                'empty_value' => false,
                )
              )
            ->add('commentaire1', 'textarea', array('required' => false) )
            ->add('question2', 'hidden', array('required' => false) )
            ->add('commentaire2', 'textarea', array('required' => false) )
            ->add('question3', 'hidden', array('required' => false) )
            ->add('commentaire3', 'textarea', array('required' => false) )
            ->add('question4', 'hidden', array('required' => false) )
            ->add('commentaire4', 'textarea', array('required' => false) )
            ->add('question5', 'hidden', array('required' => false) )
            ->add('commentaire5', 'textarea', array('required' => false) )
            //->add('question6', 'hidden', array('required' => false) )
            //->add('commentaire6', 'textarea', array('required' => false) )
            ->add('Envoyer', 'submit')
            ->add('Suivant1', 'submit')
            ->add('Suivant2', 'submit')
            ->add('Suivant3', 'submit')
            ->add('Suivant4', 'submit')
//            ->add('Suivant5', 'submit')
        ;
    }
    
    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Client'
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'appbundle_client';
    }
}
