<?php

class hobbydomItemCreateProcessor extends modObjectCreateProcessor
{
    public $objectType = 'hobbydomItem';
    public $classKey = 'hobbydomItem';
    public $languageTopics = ['hobbydom'];
    //public $permission = 'create';


    /**
     * @return bool
     */
    public function beforeSet()
    {
        $name = trim($this->getProperty('name'));
        if (empty($name)) {
            $this->modx->error->addField('name', $this->modx->lexicon('hobbydom_item_err_name'));
        } elseif ($this->modx->getCount($this->classKey, ['name' => $name])) {
            $this->modx->error->addField('name', $this->modx->lexicon('hobbydom_item_err_ae'));
        }

        return parent::beforeSet();
    }

}

return 'hobbydomItemCreateProcessor';