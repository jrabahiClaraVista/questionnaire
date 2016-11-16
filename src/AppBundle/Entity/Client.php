<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Context\ExecutionContextInterface;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * Client
 *
 * @ORM\Table(name="app_client")
 * @ORM\Entity(repositoryClass="AppBundle\Entity\ClientRepository")
 * @ORM\HasLifecycleCallbacks()
 */
class Client
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="hash", type="string", length=255)
     */
    private $hash;

    /**
     * @var integer
     *
     * @ORM\Column(name="question1", type="integer")
     */
    private $question1;

    /**
     * @var integer
     *
     * @ORM\Column(name="question2", type="integer")
     */
    private $question2;

    /**
     * @var integer
     *
     * @ORM\Column(name="question3", type="integer")
     */
    private $question3;

    /**
     * @var integer
     *
     * @ORM\Column(name="question4", type="integer")
     */
    private $question4;

    /**
     * @var integer
     *
     * @ORM\Column(name="question5", type="integer")
     */
    private $question5;

    /**
     * @var text
     *
     * @ORM\Column(name="commentaire1", type="text", nullable=true)
     */
    private $commentaire1;

    /**
     * @var text
     *
     * @ORM\Column(name="commentaire2", type="text", nullable=true)
     */
    private $commentaire2;

    /**
     * @var text
     *
     * @ORM\Column(name="commentaire3", type="text", nullable=true)
     */
    private $commentaire3;

    /**
     * @var text
     *
     * @ORM\Column(name="commentaire4", type="text", nullable=true)
     */
    private $commentaire4;

    /**
     * @var text
     *
     * @ORM\Column(name="commentaire5", type="text", nullable=true)
     */
    private $commentaire5;


    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetime")
     * @Gedmo\Timestampable(on="create")
     */
    private $createdAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="modified_at", type="datetime", nullable=true)
     * @Gedmo\Timestampable(on="update")
     */
    private $modifiedAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="last_visit_at", type="datetime", nullable=true)
     * @Gedmo\Timestampable(on="create")
     */
    private $lastVisitAt;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_commande", type="datetime")
     * @Gedmo\Timestampable(on="create")
     */
    private $dateCommande;

    /**
     * @var boolean
     *
     * @ORM\Column(name="validated", type="boolean")
     */
    private $validated;

    public function __construct()
    {
        $this->createdAt    = new \DateTime();
        $this->modifiedAt   = null;
        $this->lastVisitAt  = new \DateTime();
        //$this->dateCommande = new \DateTime();
        $this->question1    = 0;
        $this->question2    = 0;
        $this->question3    = 0;
        $this->question4    = 0;
        $this->question5    = 0;
        $this->validated    = 0;
    }

    /**
     * Get fullName
     *
     * @return \Client
     */
    public function getFullName()
    {
        return $this->hash;
    }

    // Function for sonata to render text-link relative to the entity

    /**
     * __toString
     * 
     * @return string
     */
    public function __toString() {
        return $this->hash;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Get hash
     *
     * @return string
     */
    public function getHash()
    {
        return $this->hash;
    }

    /**
     * Set hash
     *
     * @return Client
     */
    public function setHash($hash)
    {
        $this->hash = $hash;

        return $this;
    }

    /**
     * Get validated
     *
     * @return boolean
     */
    public function getValidated()
    {
        return $this->validated;
    }

    /**
     * Set validated
     *
     * @return Client
     */
    public function setValidated($validated)
    {
        $this->validated = $validated;

        return $this;
    }

    /**
     * Get question1
     *
     * @return integer
     */
    public function getQuestion1()
    {
        return $this->question1;
    }

    /**
     * Set question1
     *
     * @return Client
     */
    public function setQuestion1($question1)
    {
        $this->question1 = $question1;

        return $this;
    }

    /**
     * Get question2
     *
     * @return integer
     */
    public function getQuestion2()
    {
        return $this->question2;
    }

    /**
     * Set question2
     *
     * @return Client
     */
    public function setQuestion2($question2)
    {
        $this->question2 = $question2;

        return $this;
    }

    /**
     * Get question3
     *
     * @return integer
     */
    public function getQuestion3()
    {
        return $this->question3;
    }

    /**
     * Set question3
     *
     * @return Client
     */
    public function setQuestion3($question3)
    {
        $this->question3 = $question3;

        return $this;
    }

    /**
     * Get question4
     *
     * @return integer
     */
    public function getQuestion4()
    {
        return $this->question4;
    }

    /**
     * Set question4
     *
     * @return Client
     */
    public function setQuestion4($question4)
    {
        $this->question4 = $question4;

        return $this;
    }

    /**
     * Get question5
     *
     * @return integer
     */
    public function getQuestion5()
    {
        return $this->question5;
    }

    /**
     * Set question5
     *
     * @return Client
     */
    public function setQuestion5($question5)
    {
        $this->question5 = $question5;

        return $this;
    }

    /**
     * Get question1
     *
     * @return text
     */
    public function getCommentaire1()
    {
        return $this->commentaire1;
    }

    /**
     * Set commentaire1
     *
     * @return Client
     */
    public function setCommentaire1($commentaire1)
    {
        $this->commentaire1 = $commentaire1;

        return $this;
    }

    /**
     * Get commentaire2
     *
     * @return text
     */
    public function getCommentaire2()
    {
        return $this->commentaire2;
    }

    /**
     * Set commentaire2
     *
     * @return Client
     */
    public function setCommentaire2($commentaire2)
    {
        $this->commentaire2 = $commentaire2;

        return $this;
    }

    /**
     * Get commentaire3
     *
     * @return text
     */
    public function getCommentaire3()
    {
        return $this->commentaire3;
    }

    /**
     * Set commentaire3
     *
     * @return Client
     */
    public function setCommentaire3($commentaire3)
    {
        $this->commentaire3 = $commentaire3;

        return $this;
    }

    /**
     * Get commentaire4
     *
     * @return text
     */
    public function getCommentaire4()
    {
        return $this->commentaire4;
    }

    /**
     * Set commentaire4
     *
     * @return Client
     */
    public function setCommentaire4($commentaire4)
    {
        $this->commentaire4 = $commentaire4;

        return $this;
    }

    /**
     * Get commentaire5
     *
     * @return text
     */
    public function getCommentaire5()
    {
        return $this->commentaire5;
    }

    /**
     * Set commentaire5
     *
     * @return Client
     */
    public function setCommentaire5($commentaire5)
    {
        $this->commentaire5 = $commentaire5;

        return $this;
    }

    /**
     * Set createdAt
     *
     * @param \DateTime $createdAt
     *
     * @return Client
     */
    public function setCreatedAt($createdAt)
    {
        if( !($createdAt instanceof \DateTime) ) $createdAt = new \DateTime($createdAt);
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get createdAt
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
    }

    /**
     * Set modifiedAt
     *
     * @param \DateTime $modifiedAt
     *
     * @return Client
     */
    public function setModifiedAt($modifiedAt)
    {
        if( !($modifiedAt instanceof \DateTime) ) $modifiedAt = new \DateTime($modifiedAt);
        $this->modifiedAt = $modifiedAt;

        return $this;
    }

    /**
     * Get modifiedAt
     *
     * @return \DateTime
     */
    public function getModifiedAt()
    {
        return $this->modifiedAt;
    }

    /**
     * Set lastVisitAt
     *
     * @param \DateTime $lastVisitAt
     *
     * @return Client
     */
    public function setLastVisitAt($lastVisitAt)
    {
        if( !($lastVisitAt instanceof \DateTime) ) $lastVisitAt = new \DateTime($lastVisitAt);
        $this->lastVisitAt = $lastVisitAt;

        return $this;
    }

    /**
     * Get lastVisitAt
     *
     * @return \DateTime
     */
    public function getLastVisitAt()
    {
        return $this->lastVisitAt;
    }

    /**
     * Set dateCommande
     *
     * @param \DateTime $dateCommande
     *
     * @return Client
     */
    public function setDateCommande($dateCommande)
    {
        if( !($dateCommande instanceof \DateTime) ) $dateCommande = new \DateTime($dateCommande);
        $this->dateCommande = $dateCommande;

        return $this;
    }

    /**
     * Get dateCommande
     *
     * @return \DateTime
     */
    public function getDateCommande()
    {
        return $this->dateCommande;
    }

    /**
     * @ORM\PrePersist
     * @ORM\PreUpdate
     */
    public function updateModifiedAt()
    {
        $this->modifiedAt = new \DateTime();
        return $this;
    }

    
}
