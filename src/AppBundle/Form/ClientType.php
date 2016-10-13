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
            ->add('question1', 'hidden', array('required' => false) )
            ->add('commentaire1', 'textarea', array('required' => false) )
            ->add('question2', 'hidden', array('required' => false) )
            ->add('commentaire2', 'textarea', array('required' => false) )
            ->add('question3', 'hidden', array('required' => false) )
            ->add('commentaire3', 'textarea', array('required' => false) )
            ->add('question4', 'hidden', array('required' => false) )
            ->add('commentaire4', 'textarea', array('required' => false) )
            ->add('question5', 'hidden', array('required' => false) )
            ->add('commentaire5', 'textarea', array('required' => false) )
            ->add('Envoyer', 'submit')
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
