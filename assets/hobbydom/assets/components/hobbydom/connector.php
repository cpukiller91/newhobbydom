<?php
if (file_exists(dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php')) {
    /** @noinspection PhpIncludeInspection */
    require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php';
} else {
    require_once dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/config.core.php';
}
/** @noinspection PhpIncludeInspection */
require_once MODX_CORE_PATH . 'config/' . MODX_CONFIG_KEY . '.inc.php';
/** @noinspection PhpIncludeInspection */
require_once MODX_CONNECTORS_PATH . 'index.php';
/** @var hobbydom $hobbydom */
$hobbydom = $modx->getService('hobbydom', 'hobbydom', MODX_CORE_PATH . 'components/hobbydom/model/');
$modx->lexicon->load('hobbydom:default');

// handle request
$corePath = $modx->getOption('hobbydom_core_path', null, $modx->getOption('core_path') . 'components/hobbydom/');
$path = $modx->getOption('processorsPath', $hobbydom->config, $corePath . 'processors/');
$modx->getRequest();

/** @var modConnectorRequest $request */
$request = $modx->request;
$request->handleRequest([
    'processors_path' => $path,
    'location' => '',
]);