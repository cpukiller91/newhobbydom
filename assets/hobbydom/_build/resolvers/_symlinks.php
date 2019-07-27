<?php
/** @var xPDOTransport $transport */
/** @var array $options */
/** @var modX $modx */
if ($transport->xpdo) {
    $modx =& $transport->xpdo;

    $dev = MODX_BASE_PATH . 'Extras/hobbydom/';
    /** @var xPDOCacheManager $cache */
    $cache = $modx->getCacheManager();
    if (file_exists($dev) && $cache) {
        if (!is_link($dev . 'assets/components/hobbydom')) {
            $cache->deleteTree(
                $dev . 'assets/components/hobbydom/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_ASSETS_PATH . 'components/hobbydom/', $dev . 'assets/components/hobbydom');
        }
        if (!is_link($dev . 'core/components/hobbydom')) {
            $cache->deleteTree(
                $dev . 'core/components/hobbydom/',
                ['deleteTop' => true, 'skipDirs' => false, 'extensions' => []]
            );
            symlink(MODX_CORE_PATH . 'components/hobbydom/', $dev . 'core/components/hobbydom');
        }
    }
}

return true;