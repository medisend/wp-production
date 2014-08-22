<?php
if (!defined('ABSPATH'))
exit; // Exit if accessed directly
define('ImicFrameworkPath', dirname(__FILE__) . '/');
/*
* Here you include files which is required by theme
*/
require_once(ImicFrameworkPath . 'imic-theme-functions.php');
/* META BOX FRAMEWORK
================================================== */
require_once(ImicFrameworkPath . '/meta-box/meta-box.php');
require_once(ImicFrameworkPath . '/meta-boxes.php');
/* SHORTCODES
 ================================================== */
require_once (ImicFrameworkPath . 'shortcodes.php');
/* MEGA MENU
	================================================== */  
	include_once(ImicFrameworkPath . '/imic-megamenu/imic-megamenu.php');
/* CUSTOM POST TYPES
================================================== */
require_once(ImicFrameworkPath . '/custom-post-types/gallery-type.php');
require_once(ImicFrameworkPath . '/custom-post-types/staff-type.php');
require_once(ImicFrameworkPath . '/custom-post-types/sermon-type.php');
require_once(ImicFrameworkPath . '/custom-post-types/event-type.php');
/* PLUGIN INCLUDES
================================================== */
include_once(ImicFrameworkPath . '/plugin-includes.php');
/* WIDGETS INCLUDES
================================================== */
include_once(ImicFrameworkPath . '/widgets/upcoming_events.php');
include_once(ImicFrameworkPath . '/widgets/latest_gallery.php');
include_once(ImicFrameworkPath . '/widgets/selected_post.php');
include_once(ImicFrameworkPath . '/widgets/custom_category.php');
include_once(ImicFrameworkPath . '/widgets/recent_sermons.php');
include_once(ImicFrameworkPath . '/widgets/sermon_speakers.php');
include_once(ImicFrameworkPath . '/widgets/twitter_feeds/twitter_feeds.php');
include_once(ImicFrameworkPath . '/widgets/Advertisement.php');
/* LOAD STYLESHEETS
================================================== */
if (!function_exists('imic_enqueue_styles')) {
function imic_enqueue_styles() {
global $imic_options;
        wp_register_style('imic_bootstrap', IMIC_THEME_PATH . '/css/bootstrap.css', array(), NULL, 'all');
        wp_register_style('imic_mediaelementplayer', IMIC_THEME_PATH . '/plugins/mediaelement/mediaelementplayer.css', array(), NULL, 'all');
        wp_register_style('imic_main', IMIC_THEME_PATH . '/style.css', array(), NULL, 'all');
        wp_register_style('imic_prettyPhoto', IMIC_THEME_PATH . '/plugins/prettyphoto/css/prettyPhoto.css', array(), NULL, 'all');
        wp_register_style('imic_colors', IMIC_THEME_PATH . '/colors/' . $imic_options['theme_color_scheme'], array(), NULL, 'all');
        wp_register_style('imic_fullcalendar_css', IMIC_THEME_PATH . '/plugins/fullcalendar/fullcalendar.css', array(), NULL, 'all');
        wp_register_style('imic_fullcalendar_print', IMIC_THEME_PATH . '/plugins/fullcalendar/fullcalendar.print.css', array(), NULL, 'all');
        //**Enqueue STYLESHEETPATH**//
        wp_enqueue_style('imic_bootstrap');
        wp_enqueue_style('imic_mediaelementplayer');
        wp_enqueue_style('imic_main');
        wp_enqueue_style('imic_prettyPhoto');
        if ($imic_options['theme_color_type'][0] == 0) {
            wp_enqueue_style('imic_colors');
        }
        wp_enqueue_style('imic_fullcalendar_css');
        wp_enqueue_style('imic_fullcalendar_print');
        //**End Enqueue STYLESHEETPATH**//
    }
    add_action('wp_enqueue_scripts', 'imic_enqueue_styles', 99);
}
if (!function_exists('imic_enqueue_scripts')) {
    function imic_enqueue_scripts() {
        global $imic_options;
        $monthNamesValue = $imic_options['calendar_month_name'];
        $monthNames = (empty($monthNamesValue)) ? array() : explode(',', trim($monthNamesValue));
        $monthNamesShortValue = $imic_options['calendar_month_name_short'];
        $monthNamesShort = (empty($monthNamesShortValue)) ? array() : explode(',', trim($monthNamesShortValue));
        $dayNamesValue = $imic_options['calendar_day_name'];
        $dayNames = (empty($dayNamesValue)) ? array() : explode(',', trim($dayNamesValue));
        $dayNamesShortValue = $imic_options['calendar_day_name_short'];
        $dayNamesShort = (empty($dayNamesShortValue)) ? array() : explode(',', trim($dayNamesShortValue));
        //**register script**//
        wp_register_script('imic_jquery_modernizr', IMIC_THEME_PATH . '/js/modernizr.js', 'jquery');
        wp_register_script('imic_jquery_session', IMIC_THEME_PATH . '/js/jquery.session.js', 'jquery');
        wp_register_script('imic_jquery_prettyphoto', IMIC_THEME_PATH . '/plugins/prettyphoto/js/prettyphoto.js', array(), '', true);
        wp_register_script('imic_jquery_helper_plugins', IMIC_THEME_PATH . '/js/helper-plugins.js', array(), '', true);
        wp_register_script('imic_jquery_bootstrap', IMIC_THEME_PATH . '/js/bootstrap.js', array(), '', true);
        wp_register_script('imic_jquery_waypoints', IMIC_THEME_PATH . '/js/waypoints.js', array(), '', true);
        wp_register_script('imic_jquery_mediaelement_and_player', IMIC_THEME_PATH . '/plugins/mediaelement/mediaelement-and-player.min.js', array(), '', true);
        wp_register_script('imic_jquery_init', IMIC_THEME_PATH . '/js/init.js', array(), '', true);
        wp_register_script('imic_jquery_flexslider', IMIC_THEME_PATH . '/plugins/flexslider/js/jquery.flexslider.js', array(), '', true);
        wp_register_script('imic_jquery_countdown', IMIC_THEME_PATH . '/plugins/countdown/js/jquery.countdown.min.js', array(), '', true);
        wp_register_script('imic_fullcalendar_ui', IMIC_THEME_PATH . '/plugins/fullcalendar/jquery-ui.custom.min.js', array(), '', true);
        wp_register_script('imic_fullcalendar', IMIC_THEME_PATH . '/plugins/fullcalendar/fullcalendar.min.js', array(), '', true);
        wp_register_script('imic_sticky', IMIC_THEME_PATH . '/js/sticky.js', array(), '', true);
        wp_register_script('imic_calender_events', IMIC_THEME_PATH . '/js/calender_events.js', array(), '', true);
        //**End register script**//
        //**Enqueue script**//
        wp_enqueue_script('imic_jquery_modernizr');
        wp_enqueue_script('jquery');
        wp_enqueue_script('imic_jquery_session');
        wp_enqueue_script('imic_jquery_prettyphoto');
        wp_enqueue_script('imic_jquery_helper_plugins');
        wp_enqueue_script('imic_jquery_bootstrap');
        wp_enqueue_script('imic_jquery_waypoints');
        wp_enqueue_script('imic_jquery_mediaelement_and_player');
        wp_enqueue_script('imic_jquery_init');
        wp_enqueue_script('imic_jquery_flexslider');
        wp_enqueue_script('imic_jquery_countdown');
        wp_enqueue_script('imic_fullcalendar_ui');
        wp_enqueue_script('imic_fullcalendar');
        if ($imic_options['enable-header-stick'] == 1) {
            wp_enqueue_script('imic_sticky');
        }
        if (is_singular() && comments_open() && get_option('thread_comments')) {
            wp_enqueue_script('comment-reply');
        }
        wp_enqueue_script('imic_calender_events');
        wp_localize_script('imic_calender_events', 'calenderEvents', array('homeurl' => get_template_directory_uri(), 'monthNames' => $monthNames, 'monthNamesShort' => $monthNamesShort, 'dayNames' => $dayNames, 'dayNamesShort' => $dayNamesShort));
        wp_enqueue_script('event_ajax', IMIC_THEME_PATH . '/js/event_ajax.js', '', '', true);
        wp_localize_script('event_ajax', 'urlajax', array('ajaxurl' => admin_url('admin-ajax.php'), 'single_event' => is_singular('event')));
		wp_localize_script('imic_jquery_countdown', 'upcoming_data', array('c_time' =>time()));
        //**End Enqueue script**//
    }
    add_action('wp_enqueue_scripts', 'imic_enqueue_scripts');
}
/* LOAD BACKEND SCRIPTS
  ================================================== */
function imic_admin_scripts() {
     wp_register_script('imic-admin-functions', IMIC_THEME_PATH . '/js/imic_admin.js', 'jquery', NULL, TRUE);
     wp_enqueue_script('imic-admin-functions');
}
add_action('admin_init', 'imic_admin_scripts');
/* LOAD BACKEND STYLE
  ================================================== */
function imic_admin_styles() {
    add_editor_style(IMIC_THEME_PATH . '/css/editor-style.css');
    echo '<style>.imic-image-select-repeatable-bg-image{width:50px;}</style>';
}
add_action('admin_head', 'imic_admin_styles');
?>