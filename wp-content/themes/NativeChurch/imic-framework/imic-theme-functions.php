<?php
if (!defined('ABSPATH'))
    exit; // Exit if accessed directly
/*
 *
 * 	imic Framework Theme Functions
 * 	------------------------------------------------
 * 	imic Framework v2.0
 * 	Copyright imic  2014 - http://www.imicreation.com/
 * 	imic_theme_activation()
 * 	imic_maintenance_mode()
 * 	imic_custom_login_logo()
 * 	imic_add_nofollow_cat()
 * 	imic_admin_bar_menu()
 * 	imic_admin_css()
 * 	imic_analytics()
 * 	imic_custom_styles()
 * 	imic_custom_script()
 *      imic_content_filter()
 *      imic_video_embed()
 *      imic_video_youtube()
 *      imic_video_vimeo()
 * 	imic_register_sidebars()
 *      imic_custom_taxonomies_terms_links()    
 * 	event_time_columns()
 * 	event_time_column_content()
 * 	sortable_event_column()
 *      event_time_orderby()
 *      imic_default_sidebar()
 *      imic_register_meta_box()
 *      class IMIC_Custom_Nav
 *      imic_get_all_types()
 *      imic_day_diff()
  *      imic_get_recursive_event_data()
 *      imic_get_cat_list()
 *      imic_widget_titles()
 *      widget_text filter
 *      imic_month_translate()
 *      imic_short_month_translate()
 */
/* THEME ACTIVATION
  ================================================== */
if (!function_exists('imic_theme_activation')) {
    function imic_theme_activation() {
        global $pagenow;
        if (is_admin() && 'themes.php' == $pagenow && isset($_GET['activated'])) {
            #set frontpage to display_posts
            update_option('show_on_front', 'posts');
            #provide hook so themes can execute theme specific functions on activation
            do_action('imic_theme_activation');
            #redirect to options page
//            header('Location: ' . admin_url() . 'admin.php?page=imic_options&tab=0');
//            wp_redirect(admin_url() . 'admin.php?page=imic_options&tab=0');
        }
    }
    add_action('admin_init', 'imic_theme_activation');
}
/* MAINTENANCE MODE
  ================================================== */
if (!function_exists('imic_maintenance_mode')) {
    function imic_maintenance_mode() {
        $options = get_option('imic_options');
        $custom_logo = $custom_logo_output = $maintenance_mode = "";
        if (isset($options['custom_admin_login_logo'])) {
            $custom_logo = $options['custom_admin_login_logo'];
        }
        $custom_logo_output = '<img src="' . $custom_logo['url'] . '" alt="maintenance" style="height: 62px!important;margin: 0 auto; display: block;" />';
        if (isset($options['enable_maintenance'])) {
            $maintenance_mode = $options['enable_maintenance'];
        } else {
            $maintenance_mode = false;
        }
        if ($maintenance_mode) {
            if (!current_user_can('edit_themes') || !is_user_logged_in()) {
                wp_die($custom_logo_output . '<p style="text-align:center">' . __('We are currently in maintenance mode, please check back shortly.', 'framework') . '</p>', __('Maintenance Mode', 'framework'));
            }
        }
    }
    add_action('get_header', 'imic_maintenance_mode');
}
/* CUSTOM LOGIN LOGO
  ================================================== */
if (!function_exists('imic_custom_login_logo')) {
    function imic_custom_login_logo() {
        $options = get_option('imic_options');
        $custom_logo = "";
        if (isset($options['custom_admin_login_logo'])) {
            $custom_logo = $options['custom_admin_login_logo'];
        }
        echo '<style type="text/css">
			    .login h1 a { background-image:url(' . $custom_logo['url'] . ') !important; background-size: auto !important; width: auto !important; height: 95px !important; }
			</style>';
    }
    add_action('login_head', 'imic_custom_login_logo');
}
/* CATEGORY REL FIX
  ================================================== */
if (!function_exists('imic_add_nofollow_cat')) {
    function imic_add_nofollow_cat($text) {
        $text = str_replace('rel="category tag"', "", $text);
        return $text;
    }
    add_filter('the_category', 'imic_add_nofollow_cat');
}
/* CUSTOM ADMIN MENU ITEMS
  ================================================== */
if (!function_exists('imic_admin_bar_menu')) {
    function imic_admin_bar_menu() {
        global $wp_admin_bar;
        if (current_user_can('manage_options')) {
            $theme_options = array(
                'id' => '1',
                'title' => __('Theme Options', 'framework'),
                'href' => admin_url('/admin.php?page=imic_options'),
                'meta' => array('target' => 'blank')
            );
            $wp_admin_bar->add_menu($theme_options);
            $theme_customizer = array(
                'id' => '2',
                'title' => __('Color Customizer', 'framework'),
                'href' => admin_url('/customize.php'),
                'meta' => array('target' => 'blank')
            );
            $wp_admin_bar->add_menu($theme_customizer);
        }
    }
    add_action('admin_bar_menu', 'imic_admin_bar_menu', 99);
}
/* ADMIN CUSTOM POST TYPE ICONS
  ================================================== */
if (!function_exists('imic_admin_css')) {
    function imic_admin_css() {
        $mywp_version = get_bloginfo('version');
        if ($mywp_version < 3.8) {
            ?>
            <style type="text/css" media="screen">
                #menu-posts-event .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/portfolio.png) no-repeat 6px 7px!important;
                    background-size: 17px 15px;
                }
                #menu-posts-events:hover .wp-menu-image, #menu-posts-events.wp-has-current-submenu .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/portfolio_rollover.png) no-repeat 6px 7px!important;
                }
                #menu-posts-staff .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/team.png) no-repeat 6px 11px!important;
                    background-size: 18px 9px;
                }
                #menu-posts-staff:hover .wp-menu-image, #menu-posts-staff.wp-has-current-submenu .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/team_rollover.png) no-repeat 6px 11px!important;
                }
                #menu-posts-sermons .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/jobs.png) no-repeat 6px 11px!important;
                    background-size: 18px 9px;
                }
                #menu-posts-sermons:hover .wp-menu-image, #menu-posts-sermons.wp-has-current-submenu .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/jobs_rollover.png) no-repeat 6px 11px!important;
                }
                #menu-posts-gallery .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/showcase.png) no-repeat 6px 11px!important;
                    background-size: 18px 9px;
                }
                #menu-posts-gallery:hover .wp-menu-image, #menu-posts-gallery.wp-has-current-submenu .wp-menu-image {
                    background: url(<?php echo get_template_directory_uri(); ?>/images/wp/showcase_rollover.png) no-repeat 6px 11px!important;
                }
                #menu-posts-slide .wp-menu-image img {
                    width: 16px;
                }
                #toplevel_page_imic_theme_options .wp-menu-image img {
                    width: 11px;
                    margin-top: -2px;
                    margin-left: 3px;
                }
                .toplevel_page_imic_theme_options #adminmenu li#toplevel_page_imic_theme_options.wp-has-current-submenu a.wp-has-current-submenu, .toplevel_page_imic_theme_options #adminmenu #toplevel_page_imic_theme_options .wp-menu-arrow div, .toplevel_page_imic_theme_options #adminmenu #toplevel_page_imic_theme_options .wp-menu-arrow {
                    background: #222;
                    border-color: #222;
                }
                #wpbody-content {
                    min-height: 815px;
                }
                .wp-list-table th#thumbnail, .wp-list-table td.thumbnail {
                    width: 80px;
                }
                .wp-list-table td.thumbnail img {
                    max-width: 100%;
                    height: auto;
                }
            </style>
            <?php
        } else {
            ?>
            <style type="text/css" media="screen">
                .icon16.icon-post:before, #adminmenu #menu-posts-event div.wp-menu-image:before
                {
                    content: "\f337";
                }
                .icon16.icon-post:before, #adminmenu #menu-posts-sermons div.wp-menu-image:before
                {
                    content: "\f110";
                }
                .icon16.icon-post:before, #adminmenu #menu-posts-staff div.wp-menu-image:before
                {
                    content: "\f307";
                }
                .icon16.icon-post:before, #adminmenu #menu-posts-gallery div.wp-menu-image:before
                {
                    content: "\f161";
                }
                #menu-posts-slide .wp-menu-image img {
                    width: 16px;
                }
                #toplevel_page_imic_theme_options .wp-menu-image img {
                    width: 11px;
                    margin-top: -2px;
                    margin-left: 3px;
                }
                .toplevel_page_imic_theme_options #adminmenu li#toplevel_page_imic_theme_options.wp-has-current-submenu a.wp-has-current-submenu, .toplevel_page_imic_theme_options #adminmenu #toplevel_page_imic_theme_options .wp-menu-arrow div, .toplevel_page_imic_theme_options #adminmenu #toplevel_page_imic_theme_options .wp-menu-arrow {
                    background: #222;
                    border-color: #222;
                }
                #wpbody-content {
                    min-height: 815px;
                }
                .wp-list-table th#thumbnail, .wp-list-table td.thumbnail {
                    width: 80px;
                }
                .wp-list-table td.thumbnail img {
                    max-width: 100%;
                    height: auto;
                }
            </style>	
            <?php
        }
    }
    add_action('admin_head', 'imic_admin_css');
}
/* ----------------------------------------------------------------------------------- */
/* Show analytics code in footer */
/* ----------------------------------------------------------------------------------- */
if (!function_exists('imic_analytics')) {
    function imic_analytics() {
        $options = get_option('imic_options');
        if ($options['tracking-code'] != "") {
            echo $options['tracking-code'];
        }
    }
    add_action('wp_head', 'imic_analytics');
}
/* CUSTOM CSS OUTPUT
  ================================================== */
if (!function_exists('imic_custom_styles')) {
    function imic_custom_styles() {
        $options = get_option('imic_options');
       
        // OPEN STYLE TAG
        echo '<style type="text/css">' . "\n";
        // Custom CSS
        $custom_css = $options['custom_css'];
		 $header_height = $options['header_area_height'];
                        $header_height=!empty($header_height)?$header_height:80;
			$logo_height=!empty($header_height)?$header_height-15:65;
                       $slider_height=!empty($header_height)?$header_height+1:81;
		      $slider_margin=!empty($header_height)?$header_height+1:81;
        if ($options['theme_color_type'][0] == 1) {
            $customColor = $options['custom_theme_color'];
            echo '.text-primary, .btn-primary .badge, .btn-link,a.list-group-item.active > .badge,.nav-pills > .active > a > .badge, p.drop-caps:first-child:first-letter, .accent-color, .events-listing .event-detail h4 a, .featured-sermon h4 a, .page-header h1, .post-more, ul.nav-list-primary > li a:hover, .widget_recent_comments a, .navigation .megamenu-container .megamenu-sub-title{
                                    color:' . $customColor . ';
                            }
                            a:hover{
                                    color:' . $customColor . ';
                            }
                            .events-listing .event-detail h4 a:hover, .featured-sermon h4 a:hover, .featured-gallery p, .post-more:hover, .widget_recent_comments a:hover{
                                    opacity:.9
                            }
                            p.drop-caps.secondary:first-child:first-letter, .accent-bg, .fa.accent-color, .btn-primary,
                            .btn-primary.disabled,
                            .btn-primary[disabled],
                            fieldset[disabled] .btn-primary,
                            .btn-primary.disabled:hover,
                            .btn-primary[disabled]:hover,
                            fieldset[disabled] .btn-primary:hover,
                            .btn-primary.disabled:focus,
                            .btn-primary[disabled]:focus,
                            fieldset[disabled] .btn-primary:focus,
                            .btn-primary.disabled:active,
                            .btn-primary[disabled]:active,
                            fieldset[disabled] .btn-primary:active,
                            .btn-primary.disabled.active,
                            .btn-primary[disabled].active,
                            fieldset[disabled] .btn-primary.active,
                            .dropdown-menu > .active > a,
                            .dropdown-menu > .active > a:hover,
                            .dropdown-menu > .active > a:focus,
                            .nav-pills > li.active > a,
                            .nav-pills > li.active > a:hover,
                            .nav-pills > li.active > a:focus,
                            .pagination > .active > a,
                            .pagination > .active > span,
                            .pagination > .active > a:hover,
                            .pagination > .active > span:hover,
                            .pagination > .active > a:focus,
                            .pagination > .active > span:focus,
                            .label-primary,
                            .progress-bar,
                            a.list-group-item.active,
                            a.list-group-item.active:hover,
                            a.list-group-item.active:focus,.panel-primary > .panel-heading, .carousel-indicators .active, .owl-theme .owl-controls .owl-page.active span, .owl-theme .owl-controls.clickable .owl-page:hover span, hr.sm, .flex-control-nav a:hover, .flex-control-nav a.flex-active, .title-note, .timer-col #days, .featured-block strong, .featured-gallery, .nav-backed-header, .next-prev-nav a, .event-description .panel-heading, .media-box .media-box-wrapper, .staff-item .social-icons a, .accordion-heading .accordion-toggle.active, .accordion-heading:hover .accordion-toggle, .accordion-heading:hover .accordion-toggle.inactive, .nav-tabs li a:hover, .nav-tabs li a:active, .nav-tabs li.active a, .fc-event, .site-header .social-icons a, .fc-event-inner{
                              background-color: ' . $customColor . ';
                            }
                            .mejs-controls .mejs-time-rail .mejs-time-loaded{
                              background: ' . $customColor . ';
                            }
                            .btn-primary:hover,
                            .btn-primary:focus,
                            .btn-primary:active,
                            .btn-primary.active,
                            .open .dropdown-toggle.btn-primary, .next-prev-nav a:hover, .staff-item .social-icons a:hover, .site-header .social-icons a:hover{
                              background: ' . $customColor . ';
                              opacity:.9
                            }
                            .nav .open > a,
                            .nav .open > a:hover,
                            .nav .open > a:focus,
                            .pagination > .active > a,
                            .pagination > .active > span,
                            .pagination > .active > a:hover,
                            .pagination > .active > span:hover,
                            .pagination > .active > a:focus,
                            .pagination > .active > span:focus,
                            a.thumbnail:hover,
                            a.thumbnail:focus,
                            a.thumbnail.active,
                            a.list-group-item.active,
                            a.list-group-item.active:hover,
                            a.list-group-item.active:focus,
                            .panel-primary,
                            .panel-primary > .panel-heading, .fc-event{
                                    border-color:' . $customColor . ';
                            }
                            .panel-primary > .panel-heading + .panel-collapse .panel-body{
                                    border-top-color:' . $customColor . ';
                            }
                            .panel-primary > .panel-footer + .panel-collapse .panel-body{
                                    border-bottom-color:' . $customColor . ';
                            }
                            blockquote{
                                    border-left-color:' . $customColor . ';
                            }';
        }
		echo '.site-header .topbar{
							height:'.$header_height.'px;
							}
							.site-header h1.logo{
							height:'.$logo_height.'px;
							}
							.hero-slider{
							top:-'.$slider_height.'px;
							margin-bottom:-'.$slider_margin.'px;
							}';
        // USER STYLES
        if ($custom_css) {
            echo "\n" . '/*========== User Custom CSS Styles ==========*/' . "\n";
            echo $custom_css;
        }
        // CLOSE STYLE TAG
        echo "</style>" . "\n";
    }
    add_action('wp_head', 'imic_custom_styles');
}
/* CUSTOM JS OUTPUT
  ================================================== */
if (!function_exists('imic_custom_script')) {
    function imic_custom_script() {
        $options = get_option('imic_options');
        $custom_js = $options['custom_js'];
        if ($custom_js) {
            echo'<script type ="text/javascript">';
            echo $custom_js;
            echo '</script>';
        }
    }
    add_action('wp_footer', 'imic_custom_script');
}
/* SHORTCODE FIX
  ================================================== */
if (!function_exists('imic_content_filter')) {
    function imic_content_filter($content) {
        // array of custom shortcodes requiring the fix 
        $block = join("|", array("imic_button", "icon", "iconbox", "imic_image", "anchor", "paragraph", "divider", "heading", "alert", "blockquote", "dropcap", "code", "label", "container", "spacer", "span", "one_full", "one_half", "one_third", "one_fourth", "one_sixth","two_third", "progress_bar", "imic_count", "imic_tooltip", "imic_video", "htable", "thead", "tbody", "trow", "thcol", "tcol", "pricing_table", "pt_column", "pt_package", "pt_button", "pt_details", "pt_price", "list", "list_item", "list_item_dt", "list_item_dd", "accordions", "accgroup", "acchead", "accbody", "toggles", "togglegroup", "togglehead", "togglebody", "tabs", "tabh", "tab", "tabc", "tabrow", "section", "pagination", "page_first", "page_last", "page", "modal_box", "imic_form", "fullcalendar", "staff","fullscreenvideo"));
        // opening tag
        $rep = preg_replace("/(<p>)?\[($block)(\s[^\]]+)?\](<\/p>|<br \/>)?/", "[$2$3]", $content);
        // closing tag
        $rep = preg_replace("/(<p>)?\[\/($block)](<\/p>|<br \/>)?/", "[/$2]", $rep);
        return $rep;
    }
    add_filter("the_content", "imic_content_filter");
}
/* VIDEO EMBED FUNCTIONS
  ================================================== */
if (!function_exists('imic_video_embed')) {
    function imic_video_embed($url, $width = 200, $height = 150) {
        if (strpos($url, 'youtube') || strpos($url, 'youtu.be')) {
            return imic_video_youtube($url, $width, $height);
        } else {
            return imic_video_vimeo($url, $width, $height);
        }
    }
}
/* Video Youtube
  ================================================== */
if (!function_exists('imic_video_youtube')) {
    function imic_video_youtube($url, $width = 200, $height = 150) {
        preg_match('/[\\?\\&]v=([^\\?\\&]+)/', $url, $video_id);
        return '<iframe itemprop="video" src="http://www.youtube.com/embed/' . $video_id[1] . '?wmode=transparent" width="' . $width . '" height="' . $height . '" ></iframe>';
    }
}
/* Video Vimeo
  ================================================== */
if (!function_exists('imic_video_vimeo')) {
   function imic_video_vimeo($url, $width = 200, $height = 150) {
        preg_match('/https?:\/\/vimeo.com\/(\d+)$/', $url, $video_id);
        return '<iframe src="//player.vimeo.com/video/' . $video_id[1] . '?title=0&amp;byline=0&amp;autoplay=0&amp;portrait=0" width="' . $width . '" height="' . $height . '" allowfullscreen></iframe>';
    }
}
/* REGISTER SIDEBARS
  ================================================== */
if (!function_exists('imic_register_sidebars')) {
    function imic_register_sidebars() {
        if (function_exists('register_sidebar')) {
			$options = get_option('imic_options');
			$footer_class = $options["footer_layout"];
            register_sidebar(array(
                'name' => __('Home Page Sidebar', 'framework'),
                'id' => 'main-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<h3 class="widgettitle">',
                'after_title' => '</h3>'
            ));
            register_sidebar(array(
                'name' => __('Contact Sidebar', 'framework'),
                'id' => 'contact-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3 class="widgettitle">',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Inner Page Sidebar', 'framework'),
                'id' => 'inner-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3 class="widgettitle">',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Sermons Sidebar', 'framework'),
                'id' => 'sermons-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3 class="widgettitle">',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Event Page Sidebar', 'framework'),
                'id' => 'event-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3 class="widgettitle">',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Single Event Page Sidebar', 'framework'),
                'id' => 'single-event-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div id="%1$s" class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3 class="widgettitle">',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Post Sidebar', 'framework'),
                'id' => 'post-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div class="widget sidebar-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<div class="sidebar-widget-title"><h3>',
                'after_title' => '</h3></div>'
            ));
            register_sidebar(array(
                'name' => __('Footer Sidebar', 'framework'),
                'id' => 'footer-sidebar',
                'description' => '',
                'class' => '',
                'before_widget' => '<div class="col-md-'.$footer_class.' col-sm-'.$footer_class.' widget footer-widget %2$s">',
                'after_widget' => '</div>',
                'before_title' => '<h4 class="footer-widget-title">',
                'after_title' => '</h4>'
            ));
        }
    }
    add_action('init', 'imic_register_sidebars', 35);
}
/* EVENT GRID FUNCTION
  ================================================== */
function imic_event_grid() {
	$offset = get_option('timezone_string');
		if($offset=='') { $offset = "Australia/Melbourne"; }
	date_default_timezone_set($offset);
    echo '<div class="listing events-listing">
	<header class="listing-header">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<h3>' . __('All events', 'framework') . '</h3>
		  </div>
		  <div class="listing-header-sub col-md-6 col-sm-6">';
    $currentEventTime = $_POST['date'];
    $prev_month = date('Y-m', strtotime('-1 month', strtotime($currentEventTime)));
    $next_month = date('Y-m', strtotime('+1 month', strtotime($currentEventTime)));
    echo '<h5>' . __(date('F', strtotime($currentEventTime)),'framework') . '</h5>
				<nav class="next-prev-nav">
					<a href="javascript:" class="upcomingEvents" id="' . $prev_month . '"><i class="fa fa-angle-left"></i></a>
					<a href="javascript:" class="upcomingEvents" id="' . $next_month . '"><i class="fa fa-angle-right"></i></a>
				</nav>
		  </div>
	  </div>
	</header>
	<section class="listing-cont">
	  <ul>';
    $today = date('Y-m');
	$curr_month = date('Y-m-t', strtotime('-1 month', strtotime($currentEventTime)));
    $currentTime = date('h:i A');
    query_posts(array(
        'post_type' => 'event',
        'meta_key' => 'imic_event_start_dt',
        'meta_query' => array(
            'relation' => 'AND',
			array(
                'key' => 'imic_event_frequency_end',
                'value' => $curr_month,
                'compare' => '>'
            ),
            array(
                'key' => 'imic_event_start_dt',
                'value' => date('Y-m-t', strtotime($currentEventTime)),
                'compare' => '<='
            )),
        'orderby' => 'meta_value',
        'order' => 'ASC',
        'posts_per_page' => -1
            )
    );
    $count = 0;
	$sinc = 1;
	$sp = array();
    if (have_posts()) {
        while (have_posts()):the_post();
            $custom_event = get_post_custom(get_the_ID());
            $eventStartDate = strtotime(get_post_meta(get_the_ID(),'imic_event_start_dt',true));
            $eventStartTime = strtotime(get_post_meta(get_the_ID(),'imic_event_start_tm',true));
            $eventMonth = date('n', $eventStartDate);
			$frequency = get_post_meta(get_the_ID(),'imic_event_frequency',true);
			$frequency_count = '';
			$frequency_count = get_post_meta(get_the_ID(),'imic_event_frequency_count',true);
			if($frequency>0) { $frequency_count = $frequency_count; } else { $frequency_count = 0; }
			$seconds = $frequency*86400;
			$sai = 0;
			while($sai<=$frequency_count) {
			$icon = "";
			$eventStartDate = strtotime($custom_event['imic_event_start_dt'][0]);
			if($frequency==30) {
			$eventStartDate = strtotime("+".$sai." month", $eventStartDate);
			}
			else {
			$sv = $sai*$seconds;
			$eventStartDate = $eventStartDate+$sv;
			}
			$sn = date('Y-m-t',strtotime($currentEventTime));
			$month_start_date = date('Y-m-1',strtotime($currentEventTime));
			if($eventStartDate>=strtotime($month_start_date)&&($eventStartDate<=strtotime($sn))) {
            if (strtotime($currentEventTime) == strtotime($today)) {
                if ($eventStartDate == strtotime(date('Y-m-d'))) {
                    if ($eventStartTime > strtotime($currentTime)) {
						$sp[$eventStartDate+$sinc] = get_the_ID();
						$sinc++;
                        $count++;
                    }
                } elseif ($eventStartDate > strtotime(date('Y-m-d'))) {
					$sp[$eventStartDate+$sinc] = get_the_ID();
						$sinc++;
                    $count++;
                }
            } else {
				$sp[$eventStartDate+$sinc] = get_the_ID();
						$sinc++;
                $count++;
            } } $sai++; }
        endwhile; 
    }if ($count == 0) {
        echo '<li class="item event-item">	
			  <div class="event-detail">
				<h4>' . __('Sorry, there are no events for this month.', 'framework') . '</h4>
			  </div>
			</li>';
    } ksort($sp);
	foreach($sp as $key =>$value) {
                                $daysTemp=imic_day_diff($value);
				$satime = get_post_meta($value,'imic_event_start_tm',true);
				$satime = strtotime($satime);
				$recurrence = get_post_meta($value,'imic_event_frequency',true);
				 $icon = ' <i class="fa fa-refresh" style="font-size:80%;" title="'.__('Recurring','framework').'"></i>';
				if($recurrence>0) { $icon = $icon; } else { $icon = ''; }
                                if($daysTemp>0){
                                      $end_date = strtotime("+".$daysTemp." day", $key);
                                      $e_day_name=__(date('l',$end_date),'framework');
                                      $e_date= __(date('jS ',$end_date),'framework').__(date('F',$end_date),'framework').__(date(', Y',$end_date),'framework');
                                  }
                                  else{
                                      $e_date ='';
                                      $e_day_name ='';
                                  }
                echo '<li class="item event-item">	
				  <div class="event-date"> <span class="date">' . date('d', $key) . '</span> <span class="month">' . __(date('M', $key),'framework') . '</span> </div>
				  <div class="event-detail">
                                      <span class ="s_date" id ="'.__(date('jS ',$key),'framework').__(date('F',$key),'framework').__(date(', Y',$key),'framework').'"></span><span class ="s_day_name" id="'. __(date('l',$key),'framework').'"></span><span class ="e_day_name" id ="'.$e_day_name.'"></span><span class ="e_date" id="'.$e_date.'"></span>
					
					<h4><a href="' . get_permalink($value) . '">' . get_the_title($value) . $icon.'</a></h4>';
                $stime = '';
                if ($satime != '') {
                    $stime = ' | ' . date('h:i A', $satime);
                }
                echo '<span class="event-dayntime meta-data">' . __(date('l', $key),'framework') . $stime . '</span> </div>
				  <div class="to-event-url">
					<div><a href="' . get_permalink($value) . '" class="btn btn-default btn-sm">' . __('Details', 'framework') . '</a></div>
				  </div>
				</li>';
	}
    echo '</ul>
	</section>
  </div>';
    die();
}
add_action('wp_ajax_nopriv_imic_event_grid', 'imic_event_grid');
add_action('wp_ajax_imic_event_grid', 'imic_event_grid');
// get taxonomies terms links
if (!function_exists('imic_custom_taxonomies_terms_links')) {
    function imic_custom_taxonomies_terms_links() {
        global $post;
        // get post by post id
        $post = get_post($post->ID);
        // get post type by post
        $post_type = $post->post_type;
        // get post type taxonomies
        $taxonomies = get_object_taxonomies($post_type, 'objects');
        $out = array();
        foreach ($taxonomies as $taxonomy_slug => $taxonomy) {
            // get the terms related to post
            $terms = get_the_terms($post->ID, $taxonomy_slug);
            if (!empty($terms)) {
                $i = 1;
                foreach ($terms as $term) {
                    if ($i == 1) {
                        $out[] =
                                ' <a href="'
                                . get_term_link($term->slug, $taxonomy_slug) . '">'
                                . $term->name
                                . "</a>";
                    }
                    $i++;
                }
            }
        }
        return implode('', $out);
    }
}
//Manage Custom Columns for Event Post Type 
if (!function_exists('event_time_columns')) {
    add_filter('manage_edit-event_columns', 'event_time_columns');
    function event_time_columns($columns) {
        $columns['Event'] = __('Event', 'framework');
        $columns['Attendees'] = __('Attendees', 'framework');
        $columns['Staff'] = __('Staff', 'framework');
		$columns['Recurring'] = __('Recurring', 'framework');
        return $columns;
    }
}
if (!function_exists('event_time_column_content')) {
    add_action('manage_event_posts_custom_column', 'event_time_column_content', 10, 2);
    function event_time_column_content($column_name, $post_id) {
        switch ($column_name) {
            case 'Event':
                $sdate = get_post_meta($post_id, 'imic_event_start_dt', true);
                $stime = get_post_meta($post_id, 'imic_event_start_tm', true);
				$edate = get_post_meta($post_id, 'imic_event_end_dt', true);
                $etime = get_post_meta($post_id, 'imic_event_end_tm', true);
                echo '<abbr title="'.$sdate .' '.$stime.'">'.$sdate.'</abbr><br title="'.$edate.' '.$etime.'">'.$edate;
                break;
            case 'Attendees':
                $attendees = get_post_meta($post_id, 'imic_event_attendees', true);
                echo $attendees;
                break;
            case 'Staff':
                $staff = get_post_meta($post_id, 'imic_event_staff_members', true);
                echo $staff;
                break;
			case 'Recurring':
                $frequency = get_post_meta($post_id, 'imic_event_frequency', true);
				$frequency_count = get_post_meta($post_id, 'imic_event_frequency_count', true);
				if($frequency==1){ $sent = "Every Day"; }
				elseif($frequency==2){ $sent = "Every 2nd Day"; }
				elseif($frequency==3){ $sent = "Every 3rd Day"; }
				elseif($frequency==4){ $sent = "Every 4th Day"; }
				elseif($frequency==5){ $sent = "Every 5th Day"; }
				elseif($frequency==6){ $sent = "Every 6th Day"; }
				elseif($frequency==30){ $sent = "Every Month"; }
				else{ $sent = "Every week"; }
				if($frequency>0) {
                echo '<abbr title="'.$sent .' '.$sent.'">'.$sent.'</abbr><br>'.$frequency_count.' time';
				}
                break;
        }
    }
}
if (!function_exists('sortable_event_column')) {
    add_filter('manage_edit-event_sortable_columns', 'sortable_event_column');
    function sortable_event_column($columns) {
        $columns['Event'] = 'event';
        return $columns;
    }
}
if (!function_exists('event_time_orderby')) {
    add_action('pre_get_posts', 'event_time_orderby');
    function event_time_orderby($query) {
        if (!is_admin())
            return;
        $orderby = $query->get('orderby');
        if ('event' == $orderby) {
            $query->set('meta_key', 'imic_event_start_dt');
            $query->set('orderby', 'meta_value');
        }
    }
}
/**
 * Default Sidebar.
 * @since NativeChurch 1.2
 */
if (!function_exists('imic_default_sidebar')) {
    function imic_default_sidebar() {
        wp_reset_query();
        $page_for_posts = get_option('page_for_posts');
        if (is_home()) {
            $variable_post_id = $page_for_posts;
        } else {
            $variable_post_id = get_the_ID();
        }
        $sidebar_value = '';
        if (!empty($variable_post_id)) {
            $imic_sidebar_value = get_post_meta($variable_post_id, 'imic_select_sidebar_from_list', false);
            $post_type = get_post_type($variable_post_id);
            if (empty($imic_sidebar_value)) {
                switch ($post_type) {
                    case 'post':
                        $sidebar_value = 'post-sidebar';
                        break;
                    case 'staff':
                        $sidebar_value = 'post-sidebar';
                        break;
                    case 'sermons':
                        $sidebar_value = 'sermons-sidebar';
                        break;
                    case 'event':
                        $sidebar_value = 'single-event-sidebar';
                        break;
                    case 'page':
                        $page_template = get_post_meta($variable_post_id, '_wp_page_template', 'true');
                        switch ($page_template) {
                            case 'template-home.php':
                                $sidebar_value = 'main-sidebar';
                                break;
                            case 'template-contact.php':
                                $sidebar_value = 'contact-sidebar';
                                break;
                            case 'template-content-with-sidebar.php':
                                $sidebar_value = 'inner-sidebar';
                                break;
                            case 'template-events.php':
                                $sidebar_value = 'event-sidebar';
                                break;
                            case 'template-sermons.php':
                                $sidebar_value = 'sermons-sidebar';
                                break;
                            default:
                                $sidebar_value = 'post-sidebar';
                                break;
                        }
                }
            } else {
                $sidebar_value = $imic_sidebar_value[0];
            }
            if (is_active_sidebar($sidebar_value)) {
                dynamic_sidebar($sidebar_value);
            }
        }
    }
}
/**
 * Sidebar Meta Box.
 * @since NativeChurch 1.2
 */
if (!function_exists('imic_get_all_sidebars')) {
    function imic_get_all_sidebars() {
        $all_sidebars = array();
        global $wp_registered_sidebars;
        $all_sidebars = array('' => '');
        foreach ($wp_registered_sidebars as $sidebar) {
            $all_sidebars[$sidebar['id']] = $sidebar['name'];
        }
        return $all_sidebars;
    }
}
if (!function_exists('imic_register_meta_box')) {
    add_action('admin_init', 'imic_register_meta_box');
    function imic_register_meta_box() {
        // Check if plugin is activated or included in theme
        if (!class_exists('RW_Meta_Box'))
            return;
        $prefix = 'imic_';
        $meta_box = array(
            'id' => 'select_sidebar',
            'title' => 'Select Sidebar',
            'pages' => array('post', 'page', 'event', 'sermons', 'staff'),
            'context' => 'normal',
            'fields' => array(
                array(
                    'name' => 'Select Sidebar from list',
                    'id' => $prefix . 'select_sidebar_from_list',
                    'desc' => __("Select Sidebar from list", 'framework'),
                    'type' => 'select',
                    'options' => imic_get_all_sidebars(),
                ),
            )
        );
        new RW_Meta_Box($meta_box);
    }
}
//Manage Staff Post Type Menu Order Column
function add_new_staff_column($header_text_columns) {
  $header_text_columns['menu_order'] = "Order";
  return $header_text_columns;
}
add_action('manage_edit-staff_columns', 'add_new_staff_column');
function show_order_column($name){
  global $post;
  switch ($name) {
    case 'menu_order':
      $order = $post->menu_order;
      echo $order;
      break;
   default:
      break;
   }
}
add_action('manage_staff_posts_custom_column','show_order_column');
function order_column_register_sortable($columns){
  $columns['menu_order'] = 'menu_order';
  return $columns;
}
add_filter('manage_edit-staff_sortable_columns','order_column_register_sortable');
function afterSavePost()
{
	if(isset($_GET['post']))
	 { 
	 $postId = $_GET['post'];
	$post_type = get_post_type($postId);
	if($post_type=='event')
	{
		
		$sdate = get_post_meta($postId,'imic_event_start_dt',true);
		$end_event_date = get_post_meta($postId,'imic_event_end_dt',true);
		if($end_event_date=='') { update_post_meta($postId,'imic_event_end_dt',$sdate); }
		$frequency = get_post_meta($postId,'imic_event_frequency',true);
		$frequency_count = get_post_meta($postId,'imic_event_frequency_count',true);
		$value = strtotime($sdate);
		if($frequency==30) {
		$svalue = strtotime("+".$frequency_count." month", $value);
		$suvalue = date('Y-m-d',$svalue);
		}
		else {
		$svalue = $frequency*$frequency_count*86400;
		$suvalue = $svalue+$value;
		$suvalue = date('Y-m-d',$suvalue);
		}
		update_post_meta($postId,'imic_event_frequency_end',$suvalue);
	} }
}
afterSavePost();
//Add New Custom Menu Option
if ( !class_exists('IMIC_Custom_Nav')) {
class IMIC_Custom_Nav {
public function add_nav_menu_meta_boxes() {
   
add_meta_box(
'mega_nav_link',
__('Mega Menu','framework'),
array( $this, 'nav_menu_link'),
'nav-menus',
'side',
'low'
);
}
public function nav_menu_link() {
    
     global $_nav_menu_placeholder, $nav_menu_selected_id;
	$_nav_menu_placeholder = 0 > $_nav_menu_placeholder ? $_nav_menu_placeholder - 1 : -1;
    
        ?>
<div id="posttype-wl-login" class="posttypediv">
<div id="tabs-panel-wishlist-login" class="tabs-panel tabs-panel-active">
<ul id ="wishlist-login-checklist" class="categorychecklist form-no-clear">
<li>
<label class="menu-item-title">
<input type="checkbox" class="menu-item-object-id" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-object-id]" value="<?php echo $_nav_menu_placeholder; ?>"> <?php _e('Create Column','framework'); ?>
</label>
    <input type="hidden" class="menu-item-db-id" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-db-id]" value="0">
    <input type="hidden" class="menu-item-object" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-object]" value="page">
<input type="hidden" class="menu-item-parent-id" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-parent-id]" value="0">
   <input type="hidden" class="menu-item-type" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-type]" value="">
<input type="hidden" class="menu-item-title" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-title]" value="<?php _e('Column','framework'); ?>">
<input type="hidden" class="menu-item-classes" name="menu-item[<?php echo $_nav_menu_placeholder; ?>][menu-item-classes]" value="custom_mega_menu">
</li>
</ul>
</div>
<p class="button-controls">
<span class="add-to-menu">
<input type="submit" class="button-secondary submit-add-to-menu right" value="<?php _e('Add to Menu','framework'); ?>" name="add-post-type-menu-item" id="submit-posttype-wl-login">
<span class="spinner"></span>
</span>
</p>
</div>
<?php }
}
}
$custom_nav = new IMIC_Custom_Nav;
add_action('admin_init', array($custom_nav, 'add_nav_menu_meta_boxes'));
//Get All Post Types
if(!function_exists('imic_get_all_types')){
add_action( 'wp_loaded', 'imic_get_all_types');
function imic_get_all_types(){
   $args = array(
   'public'   => true,
   );
$output = 'names'; // names or objects, note names is the default
return $post_types = get_post_types($args, $output); 
}
}
//Get Days Diff
if(!function_exists('imic_day_diff')){
function imic_day_diff($value) {
    $endEventTemp = get_post_meta($value, 'imic_event_end_dt', true);
    $startEventTemp = get_post_meta($value, 'imic_event_start_dt', true);
    $timeTemp = get_post_meta($value, 'imic_event_start_tm', true);
	$timeTemp = strtotime($timeTemp);
	$timeTemp = date('h:i A',$timeTemp);
    $endEventTemp = $endEventTemp . ' ' . $timeTemp;
    $startEventTemp = $startEventTemp . ' ' . $timeTemp;
    $endEventTemp = strtotime($endEventTemp);
    $startEventTemp = strtotime($startEventTemp);
    $daysTemp = $endEventTemp - $startEventTemp;
    $daysTemp = $daysTemp / 86400;
    return $daysTemp = floor($daysTemp);
}
}
//Attachment Meta Box
if(!function_exists('imic_attachment_url')){
function imic_attachment_url( $fields, $post ) {
$meta = get_post_meta($post->ID, 'meta_link', true);
$fields['meta_link'] = array(
'label' => 'Image URL',
'input' => 'text',
'value' => $meta,
'show_in_edit' => true,
);
return $fields;
}
add_filter( 'attachment_fields_to_edit', 'imic_attachment_url', 10, 2 );
}
/**
* Update custom field on save
*/
if(!function_exists('imic_update_attachment_url')){
function imic_update_attachment_url($attachment){
global $post;
update_post_meta($post->ID, 'meta_link', $attachment['attachments'][$post->ID]['meta_link']);
return $attachment;
}
add_filter( 'attachment_fields_to_save', 'imic_update_attachment_url', 4);
}
/**
* Update custom field via ajax
*/
if(!function_exists('imic_save_attachment_url')){
function imic_save_attachment_url() {
$post_id = $_POST['id'];
$meta = $_POST['attachments'][$post_id ]['meta_link'];
update_post_meta($post_id , 'meta_link', $meta);
clean_post_cache($post_id);
}
add_action('wp_ajax_save-attachment-compat', 'imic_save_attachment_url', 0, 1);
}
//Get Attachment Fields
if(!function_exists('imic_wp_get_attachment')){
function imic_wp_get_attachment( $attachment_id ) {
	$attachment = get_post( $attachment_id );
	return array(
		'alt' => get_post_meta( $attachment->ID, '_wp_attachment_image_alt', true ),
		'caption' => $attachment->post_excerpt,
		'description' => $attachment->post_content,
		'href' => get_permalink( $attachment->ID ),
		'src' => $attachment->guid,
		'title' => $attachment->post_title,
		'url' => $attachment->meta_link
	);
}
}
/* -------------------------------------------------------------------------------------
  Get Recursive Event Data.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
if (!function_exists('imic_get_recursive_event_data')) {
    function imic_get_recursive_event_data($menuposttype, $menupost, $p = '') {
        $event_add_menu = array();
        $sinc = 1;
        $item_output = '';
        $today_menu = date('Y-m-d');
        $posts_event = get_posts(array('post_type' => $menuposttype, 'p' => $p, 'post_status' => 'publish', 'meta_key' => 'imic_event_start_dt', 'suppress_filters' => false, 'meta_query' => array(array('key' => 'imic_event_frequency_end', 'value' => $today_menu, 'compare' => '>=')), 'orderby' => 'meta_value', 'order' => 'ASC', 'posts_per_page' => $menupost));
        if (!empty($posts_event)) {
            foreach ($posts_event as $event_post_data) {
                $eventDate = strtotime(get_post_meta($event_post_data->ID, 'imic_event_start_dt', true));
                $eventTime = get_post_meta($event_post_data->ID, 'imic_event_start_tm', true);
               
                $frequency = get_post_meta($event_post_data->ID, 'imic_event_frequency', true);
                $frequency_count = '';
                $frequency_count = get_post_meta($event_post_data->ID, 'imic_event_frequency_count', true);
                if ($frequency > 0) {
                    $frequency_count = $frequency_count;
                } 
                else { $frequency_count = 0; }
                $seconds = $frequency * 86400;
                $fr_repeat = 0;
                while ($fr_repeat <= $frequency_count) {
                    $eventDate = get_post_meta($event_post_data->ID, 'imic_event_start_dt', true);
                    $eventDate = strtotime($eventDate);
                    if($frequency==30) {
			$eventDate = strtotime("+".$fr_repeat." month", $eventDate);
			}
			else {
            $new_date = $seconds * $fr_repeat;
            $eventDate = $eventDate + $new_date;
			}
                  
                    $date_sec = date('Y-m-d', $eventDate);
                    $exact_time = strtotime($date_sec . ' ' .$eventTime);
                    if ($exact_time >= date('U')) {
                        $event_add_menu[$eventDate + $sinc] = $event_post_data->ID;
                        $sinc++;
                    } $fr_repeat++;
                }
            }
            $nos_event_menu = 1;
            ksort($event_add_menu);
            foreach ($event_add_menu as $key => $value) {
                $daysTemp = imic_day_diff($value);
                $recurrence = get_post_meta($value, 'imic_event_frequency', true);
                if ($recurrence > 0) {
                    $icon = ' <i class="fa fa-refresh" style="font-size:80%;" title="Recurring"></i>';
                } else {
                    $icon = '';
                }
                $eventDataTitle = get_the_title($value);
                $eventDataURL = get_permalink($value);
                
                $day = __(date('l', $key), 'framework') . ' |';
                $eventStartTime = get_post_meta($value, 'imic_event_start_tm', true);
                $eventTime = get_post_meta($value, 'imic_event_start_tm', true);
                $eventTime = strtotime($eventTime);
                $stime = '';
                if ($eventTime != '') {
                    $stime = date('h:i A', $eventTime);
                }
                $StartEventDate = __(date('jS ', $key), 'framework') . __(date('F', $key), 'framework') . __(date(', Y', $key), 'framework');
                $eventDataDay = __(date('l', $key), 'framework');
                $item_output.='<li>';
                $item_output.='<a href="' . $eventDataURL . '">' . $eventDataTitle . $icon . '</a>';
                $item_output.= '<span class="meta-data">' . $day . '  ' . $stime . '</span>';
                if ($daysTemp > 0) {
                    $event_end_date = strtotime("+" . $daysTemp . " day", $key);
                    $event_e_day_name = __(date('l', $event_end_date), 'framework');
                    $event_e_date = __(date('jS ', $event_end_date), 'framework') . __(date('F', $event_end_date), 'framework') . __(date(', Y', $event_end_date), 'framework');
                } else {
                    $event_e_date = '';
                    $event_e_day_name = '';
                }
                $item_output.='<span class ="s_date" id ="' . $StartEventDate . '"></span><span class ="s_day_name" id="' . $eventDataDay . '"></span><span class ="e_day_name" id ="' . $event_e_day_name . '"></span><span class ="e_date" id="' . $event_e_date . '"></span>';
                $item_output.='</li>';
                if (++$nos_event_menu > $menupost)
                    break;
            }
        }
        return $item_output;
    }
}
/* -------------------------------------------------------------------------------------
  Get Cat List.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
if (!function_exists('imic_get_cat_list')) {
    function imic_get_cat_list() {
        $amp_categories_obj = get_categories('exclude=1');
         
        $amp_categories = array();
        if(count($amp_categories_obj)>0){
        foreach ($amp_categories_obj as $amp_cat) {
            $amp_categories[$amp_cat->cat_ID] = $amp_cat->name;
        }}
        return $amp_categories;
    }
}
/* -------------------------------------------------------------------------------------
  Filter the Widget Title.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
if (!function_exists('imic_widget_titles')) {
    add_filter('dynamic_sidebar_params', 'imic_widget_titles', 20);
    function imic_widget_titles(array $params) {
        // $params will ordinarily be an array of 2 elements, we're only interested in the first element
        $widget = & $params[0];
        $id = $params[0]['id'];
        if ($id == 'footer-sidebar') {
            $widget['before_title'] = '<h4 class="widgettitle">';
            $widget['after_title'] = '</h4>';
        } else {
            $widget['before_title'] = '<div class="sidebar-widget-title"><h3 class="widgettitle">';
            $widget['after_title'] = '</h3></div>';
        }
        return $params;
    }
}
/* -------------------------------------------------------------------------------------
  Filter the Widget Text.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
add_filter('widget_text', 'do_shortcode');
/* -------------------------------------------------------------------------------------
  Month Translate in Default.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
    if(!function_exists('imic_month_translate')){
function imic_month_translate( $str ) {
	$options = get_option('imic_options');
       $months = $options["calendar_month_name"];
    $months = explode(',',$months);
  if(count($months)<=1){
  $months = array("January","February","March","April","May","June","July","August","September","October","November","December");
}
$sb = array();
foreach($months as $month) { $sb[] = $month; } 
    $engMonth = array("January","February","March","April","May","June","July","August","September","October","November","December");
    $trMonth = $sb;
    $converted = str_replace($engMonth, $trMonth, $str);
    return $converted;
    }
    /* -------------------------------------------------------------------------------------
  Filter the  Month name of Post.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
add_filter( 'get_the_time', 'imic_month_translate' );
add_filter( 'the_date', 'imic_month_translate' );
add_filter( 'get_the_date', 'imic_month_translate' );
add_filter( 'comments_number', 'imic_month_translate' );
add_filter( 'get_comment_date', 'imic_month_translate' );
add_filter( 'get_comment_time', 'imic_month_translate' );
}
/* -------------------------------------------------------------------------------------
  Short Month Translate in Default.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
if(!function_exists('imic_short_month_translate')){
function imic_short_month_translate( $str ) {
	$options = get_option('imic_options');
       $months = $options["calendar_month_name_short"];
    $months = explode(',',$months);
  if(count($months)<=1){
  $months = array("Jan","Feb","Mar","Apr","May","June","July","Aug","Sept","Oct","Nov","Dec");
}
$sb = array();
foreach($months as $month) { $sb[] = $month; } 
    $engMonth = array("Jan","Feb","Mar","Apr","May","June","July","Aug","Sept","Oct","Nov","Dec");
    $trMonth = $sb;
    $converted = str_replace($engMonth, $trMonth, $str);
    return $converted;
}
/* -------------------------------------------------------------------------------------
  Filter the  Sort Month name of Post.
  @since NativeChurch 1.4
  ----------------------------------------------------------------------------------- */
add_filter( 'get_the_time', 'imic_short_month_translate' );
add_filter( 'the_date', 'imic_short_month_translate' );
add_filter( 'get_the_date', 'imic_short_month_translate' );
add_filter( 'comments_number', 'imic_short_month_translate' );
add_filter( 'get_comment_date', 'imic_short_month_translate' );
add_filter( 'get_comment_time', 'imic_short_month_translate' );
}
?>