<?php

/**
 * The home manager controller for hobbydom.
 *
 */
class hobbydomHomeManagerController extends modExtraManagerController
{
    /** @var hobbydom $hobbydom */
    public $hobbydom;


    /**
     *
     */
    public function initialize()
    {
        $this->hobbydom = $this->modx->getService('hobbydom', 'hobbydom', MODX_CORE_PATH . 'components/hobbydom/model/');
        parent::initialize();
    }


    /**
     * @return array
     */
    public function getLanguageTopics()
    {
        return ['hobbydom:default'];
    }


    /**
     * @return bool
     */
    public function checkPermissions()
    {
        return true;
    }


    /**
     * @return null|string
     */
    public function getPageTitle()
    {
        return $this->modx->lexicon('hobbydom');
    }


    /**
     * @return void
     */
    public function loadCustomCssJs()
    {
        $this->addCss($this->hobbydom->config['cssUrl'] . 'mgr/main.css');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/hobbydom.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/misc/utils.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/misc/combo.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/widgets/items.grid.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/widgets/items.windows.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/widgets/home.panel.js');
        $this->addJavascript($this->hobbydom->config['jsUrl'] . 'mgr/sections/home.js');

        $this->addHtml('<script type="text/javascript">
        hobbydom.config = ' . json_encode($this->hobbydom->config) . ';
        hobbydom.config.connector_url = "' . $this->hobbydom->config['connectorUrl'] . '";
        Ext.onReady(function() {MODx.load({ xtype: "hobbydom-page-home"});});
        </script>');
    }


    /**
     * @return string
     */
    public function getTemplateFile()
    {
        $this->content .= '<div id="hobbydom-panel-home-div"></div>';

        return '';
    }
}