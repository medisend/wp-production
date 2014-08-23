<!DOCTYPE html>
<!--// OPEN HTML //-->
<html <?php language_attributes(); ?> class="no-js">
    <head>
        <?php
        $options = get_option('imic_options');
        /** Theme layout design * */
        $bodyClass = ($options['site_layout'] == 'boxed') ? ' boxed' : '';
        $style='';
       if($options['site_layout'] == 'boxed'){
            if (!empty($options['upload-repeatable-bg-image']['id'])) {
            $style = ' style="background-image:url(' . $options['upload-repeatable-bg-image']['url'] . '); background-repeat:repeat; background-size:auto;"';
        } else if (!empty($options['full-screen-bg-image']['id'])) {
            $style = ' style="background-image:url(' . $options['full-screen-bg-image']['url'] . '); background-repeat: no-repeat; background-size:cover;"';
        }
           else if(!empty($options['repeatable-bg-image'])) {
            $style = ' style="background-image:url(' . get_template_directory_uri() . '/includes/core/assets/img/patterns/' . $options['repeatable-bg-image'] . '); background-repeat:repeat; background-size:auto;"';
        }
        }
        ?>
        <!--// SITE TITLE //-->
        <title>
            <?php wp_title('|', true, 'right'); ?>
<?php bloginfo('name'); ?>
        </title>
        <!--// SITE META //-->
        <meta charset="<?php bloginfo('charset'); ?>" />
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <!-- Mobile Specific Metas
        ================================================== -->
<?php if ($options['switch-responsive'] == 1) { ?>
            <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0"><?php } ?>
        <meta name="format-detection" content="telephone=no">
        <!--// PINGBACK & FAVICON //-->
        <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
        <?php if (isset($options['custom_favicon']) && $options['custom_favicon'] != "") { ?><link rel="shortcut icon" href="<?php echo $options['custom_favicon']['url']; ?>" /><?php
        }
        $offset = get_option('timezone_string');
		if($offset=='') { $offset = "Australia/Melbourne"; }
	date_default_timezone_set($offset);
        ?>
        <!-- CSS
        ================================================== -->
        <!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri() ?>/css/ie8.css" media="screen" /><![endif]-->
        <?php //  WORDPRESS HEAD HOOK 
         wp_head(); ?>
    </head>
    <!--// CLOSE HEAD //-->
    <body <?php body_class($bodyClass); echo $style;  ?>>
        <!--[if lt IE 7]>
                <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]--> 
        <div class="body">
            <!-- Start Site Header -->
            <header class="site-header">
                <div class="topbar">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-8">
                                <h1 class="logo">
                                    <?php
                                    global $imic_options;
                                    if (!empty($imic_options['logo_upload']['url'])) {
                                        echo '<a href="' . site_url() . '" title="' . site_url() . '"><img src="' . $imic_options['logo_upload']['url'] . '" alt="Logo"></a>';
                                    } else {
                                        echo '<a href="' . site_url() . '" title="' . site_url() . '"><img src="' . get_template_directory_uri() . '/images/logo.png" alt="Logo"></a>';
                                    }
                                    ?>
                                </h1>
                            </div>
                            <div class="col-md-8 col-sm-6 col-xs-4">
							<?php $menu_locations =get_nav_menu_locations();
                            if(!empty($menu_locations['top-menu'])){
                            ?>
                            <?php wp_nav_menu(array('theme_location' => 'top-menu', 'menu_class' => 'top-navigation hidden-sm hidden-xs', 'container' => '')); ?>
                            <?php } ?>
                                <a href="#" class="visible-sm visible-xs menu-toggle"><i class="fa fa-bars"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php  if(!empty($menu_locations['primary-menu'])){ ?>
                <div class="main-menu-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <nav class="navigation">
                                <?php wp_nav_menu(array('theme_location' => 'primary-menu', 'menu_class' => 'sf-menu', 'container' => '','walker' => new imic_mega_menu_walker)); ?>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </header>
            <!-- End Site Header -->
            <?php
             $page_for_posts = get_option('page_for_posts');
			 $show_on_front = get_option('show_on_front');
			  if (is_home()) {
                $id = $page_for_posts;
            } elseif (is_404() || is_search()) {
                $id = '';
            } else {
                $id = get_the_ID();
            }
            if ((!is_front_page()) || $show_on_front == 'posts') {
                if (is_404() || is_search()) {
                    $custom = array();
                } else {
                    $custom = get_post_custom($id);
                }
				 $header_image = get_post_meta($id,'imic_header_image',true);
				 $default_header_image = $imic_options['header_image']['url'];
                if (!empty($header_image)) {
                    $term = get_term_by('slug', get_query_var('term'), get_query_var('taxonomy'));
                    if (is_category() || !empty($term->term_id)) {
                        $src[0] = '';
                    }
					 else {
                        $src = wp_get_attachment_image_src($header_image, 'Full');
                    }
                } else {
					$term = get_term_by('slug', get_query_var('term'), get_query_var('taxonomy'));
                    if (is_category() || !empty($term->term_id)) {
                        $src[0] = '';
                    }
					else {
                    $src[0] = $default_header_image;
					}
                }
                ?>
                <!-- Start Nav Backed Header -->
                <div class="nav-backed-header parallax" style="background-image:url(<?php echo $src[0]; ?>);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ol class="breadcrumb">
                                    <?php
                                    if (function_exists('bcn_display_list')) {
                                        bcn_display_list();
                                    }
                                    ?>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Nav Backed Header --> 
                <!-- Start Page Header -->
                <div class="page-header">
                    <div class="container">
                        <div class="row">
                            <?php
                            if (get_post_type($id) == 'page') {
                                $gallery_filter_columns_layout = get_post_meta(get_the_ID(),'imic_gallery_filter_columns_layout',true);
                                if (($gallery_filter_columns_layout == 2) || ($gallery_filter_columns_layout == 3) || ($gallery_filter_columns_layout == 4)) {
                                    $colmd_class = "col-md-6";
                                } else {
                                    $colmd_class = "col-md-12";
                                }
                                $imic_post_custom_title = !empty($custom['imic_post_page_custom_title'][0]) ? $custom['imic_post_page_custom_title'][0] : get_the_title($id);
                                echo '<div class="' . $colmd_class . '">
                                      <h1>' . $imic_post_custom_title . '</h1>
                                  </div>';
                                if (($gallery_filter_columns_layout == 2) || ($gallery_filter_columns_layout == 3) || ($gallery_filter_columns_layout == 4)) {
                                    ?>
                                    <div class="gallery-filter">
                                        <ul class="nav nav-pills sort-source" data-sort-id="gallery" data-option-key="filter">
                                        <?php $gallery_cats = get_terms("gallery-category");
										 ?>
                                            <li data-option-value="*" class="active"><a href="#"><i class="fa fa-th"></i> <span><?php _e('Show All', 'framework'); ?></span></a></li>
                                     	<?php foreach($gallery_cats as $gallery_cat) { ?>
                                            <li data-option-value=".format-<?php echo $gallery_cat->slug; ?>"><a href="#"><i class="fa <?php echo $gallery_cat->description; ?>"></i> <span><?php echo $gallery_cat->name; ?></span></a></li>
                                    	<?php } ?>
                                        </ul>
                                    </div>
                                    <?php
                                }
                            }
                            if (get_post_type($id) == 'post') {
                                if (is_category()) {
                                    echo '<div class="col-md-8 col-sm-8">
                                    <h1>' . __('All Posts For - ', 'framework') . single_term_title("", false) . '</h1>
                                  </div>';
                                } elseif (is_author()) {
                                    global $author;
                                    $userdata = get_userdata($author);
                                    echo '<div class="col-md-8 col-sm-8">
                                    <h1>' . __('All Posts For - ', 'framework') . $userdata->display_name . '</h1>
                                  </div>';
                                } elseif (is_404()) {
                                    echo '<div class="col-md-8 col-sm-8">
                                    <h1>' . __('Error 404', 'framework') . '</h1>
                                  </div>';
                                } elseif (is_search()) {
                                   
                               echo '<div class="col-md-12 col-sm-12"><h1>';
                                    printf(__('Search Results for :  %s', 'framework'), get_search_query());
                                    echo'</h1>
                                  </div>';
                                } else {
                                    if($page_for_posts==0){
                                        $imic_post_custom_title=__('News','framework');
                                    }
                                    else if($page_for_posts>0){
                                        $imic_post_custom_title=get_the_title($page_for_posts);
                                    }
                                    else{
                                        $imic_post_custom_title = !empty($custom['imic_post_page_custom_title'][0]) ? $custom['imic_post_page_custom_title'][0] : get_the_title(); 
                                    }
                                    echo '<div class="col-md-8 col-sm-8">
                                    <h1>' . $imic_post_custom_title . '</h1>
                                  </div>';
                                    if (!empty($custom['imic_post_custom_description'][0])) {
                                        echo'<div class="col-md-4 col-sm-4">
                                        <p>' . $custom['imic_post_custom_description'][0] . '</p>
                                     </div>';
                                    }
                                }
                            }
                            if (get_post_type($id) == 'event') {
								$term = get_term_by('slug', get_query_var('term'), get_query_var('taxonomy'));
                                if (!empty($term->term_id)) {
                                    echo '<div class="col-md-12">
                                        <h1>' . __('All Posts For - ', 'framework') . $term->name . '</h1>
                                      </div>';
                                } else {
                                $imic_post_custom_title = !empty($custom['imic_post_page_custom_title'][0]) ? $custom['imic_post_page_custom_title'][0] : get_the_title();
                                if ($imic_post_custom_title == 'Blog') { $imic_post_custom_title = 'News';}
                                $eterm = get_the_terms(get_the_ID(), 'event-category');
                                  echo '<div class="col-md-10 col-sm-10 col-xs-8">
                                    <h1>' . $imic_post_custom_title . '</h1>
                                  </div>';
								}
                                if (!empty($eterm)) {
                                    $i = 1;
                                    foreach ($eterm as $terms) {
                                        if ($i == 1) {
                                            $term_link = get_term_link($terms, 'event-category');
                                       echo'<div class="col-md-2 col-sm-2 col-xs-4">
                                     <a href="' . $term_link . '" class="pull-right btn btn-primary">' . __('All events', 'framework') . '</a></div>';
                                            }
                                        $i++;
                                    } }
                                   }
                                if (is_tag()) {
                                    echo '<div class="col-md-8 col-sm-8">
                                        <h1>' . __('All Posts For - ', 'framework') . single_term_title("", false) . '</h1>
                                        </div>';
                                }
                                ?>
                            </div>
                        </div>
                    </div>
                    <!-- End Page Header --> 
                    <?php
                    /**   Start Content* */
                    echo'<div class="main" role="main">
                     <div id="content" class="content full">';
                }
                ?> 