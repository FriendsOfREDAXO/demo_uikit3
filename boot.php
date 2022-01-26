<?php
// UIKit3 for backend
if (rex::isBackend() && rex::getUser()) {
        rex_view::addCssFile($this->getAssetsUrl('demo_uikit3/css/uikit.min.css'));
        rex_view::addJsFile($this->getAssetsUrl('demo_uikit3/js/uikit.min.js'));
        rex_view::addJsFile($this->getAssetsUrl('demo_uikit3/js/uikit-icons.min.js'));
}
// Some helper functions
rex_extension::register('PACKAGES_INCLUDED', function($ep) {
        include_once rex_path::addon('demo_uikit3/inc').'helper_func.php';
});
