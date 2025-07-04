<?php

define('FORMR_VERSION', file_get_contents(__DIR__ . '/VERSION'));

const APPLICATION_ROOT = __DIR__ . '/';
const APPLICATION_PATH = APPLICATION_ROOT . 'application/';
const APPLICATION_CRYPTO_KEY_FILE = APPLICATION_ROOT . 'formr-crypto.key';
// Load composer Autoloader
require_once APPLICATION_ROOT . 'vendor/autoload.php';

// Initialize settings array and define routes
$settings = array();
$settings['content_settings'] = array();
$settings['routes'] = array(
    'admin' => 'AdminController',
    'admin/run' => 'AdminRunController',
    'admin/survey' => 'AdminSurveyController',
    'admin/mail' => 'AdminMailController',
    'admin/advanced' => 'AdminAdvancedController',
    'admin/account' => 'AdminAccountController',
    'public' => 'PublicController',
    'api' => 'ApiController',
    'run' => 'RunController'
);

// Include helper functions
require_once APPLICATION_PATH . 'Functions.php';

// Load application settings
/* @var $settings array */
require_once APPLICATION_ROOT . 'config/settings.php';

// Define default assets
if (php_sapi_name() != 'cli') {
    require_once APPLICATION_ROOT . 'config/assets.php';
    require_once APPLICATION_ROOT . 'config/css-classes.php';
}

// Set current formr version (bumped on release)
$settings['version'] = FORMR_VERSION;

// Load application autoloader
$autoloader = require_once APPLICATION_PATH . 'Autoloader.php';

// Initialize Config
Config::initialize($settings);

// Global Setup
function __formr_setup($settings = array()): void
{

    if (!empty($_SERVER['HTTP_X_FORWARDED_PROTO'])) {
        $protocol = $_SERVER['HTTP_X_FORWARDED_PROTO'] . '://';
    } elseif (!isset($_SERVER['HTTPS']) || $_SERVER['HTTPS'] === '' || $_SERVER['HTTPS'] === 'off') {
        $protocol = 'http://';
    } else {
        $protocol = 'https://';
    }

    if (!empty($_SERVER['HTTP_X_FORWARDED_HOST'])) {
        $server_name = $_SERVER['HTTP_X_FORWARDED_HOST'];
    } elseif (!empty($_SERVER['SERVER_NAME'])) {
        $server_name = $_SERVER['SERVER_NAME'];
    } else {
        $server_name = '';
    }

    define('SERVER_NAME', $server_name);


    $online = true;

    define('PROTOCOL', $protocol);
    define('WEBROOT', $protocol . $server_name . '/');
    define('ONLINE', $online);
    define('SSL', $protocol === "https://");
    define('RUNROOT', WEBROOT);
    define('DEBUG', $settings['display_errors']);
    define('FMRSD_CONTEXT', getenv('FMRSD_CONTEXT'));

    // General PHP-side configuration
    error_reporting(-1);
    if (DEBUG > 0) {
        ini_set('display_errors', 1);
    } else {
        ini_set('display_errors', 0);
    }

    ini_set("log_errors", 1);
    ini_set("error_log", get_log_file('errors.log'));
    ini_set('session.gc_maxlifetime', $settings['session_cookie_lifetime']);
    ini_set('session.cookie_lifetime', $settings['session_cookie_lifetime']);

    // Set cryptography module
    try {
        Crypto::setup();
    } catch (Exception $e) {
        formr_log_exception($e);
        formr_error(503, 'Service Unavailable', 'Encryption service unavailable', null, false);
    }

    // Set default timzone, encoding and shutdown function.
    date_default_timezone_set($settings['timezone']);
    mb_internal_encoding('UTF-8');
    register_shutdown_function('shutdown_formr_org');
}

// Bootstrap setup
__formr_setup($settings);

// Check if maintenance is ongoing
formr_check_maintenance();

