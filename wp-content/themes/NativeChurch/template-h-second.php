<?php
/*
  Template Name: Home 2
 */
get_header();
/* Start Hero Slider */
$custom_home = get_post_custom(get_the_ID());
$home_id = get_the_ID();
$pagination = get_post_meta($home_id,'imic_slider_pagination',true);
$auto_slide = get_post_meta($home_id,'imic_slider_auto_slide',true);
$direction = get_post_meta($home_id,'imic_slider_direction_arrows',true);
$effect = get_post_meta($home_id,'imic_slider_effects',true);
if (count($custom_home['imic_slider_image']) > 0) {
    ?>
    <div class="hero-slider flexslider clearfix" data-autoplay=<?php echo $auto_slide; ?> data-pagination=<?php echo $pagination; ?> data-arrows=<?php echo $direction; ?> data-style=<?php echo $effect; ?> data-pause="yes">
        <ul class="slides">
            <?php
            foreach ($custom_home['imic_slider_image'] as $custom_home_image) {
                $src = wp_get_attachment_image_src($custom_home_image, 'full');
				$attachment_meta = imic_wp_get_attachment($custom_home_image);
				$caption = $attachment_meta['caption'];
				$slide_meta = '';
				$url = $attachment_meta['url'];
				if(!empty($url)) { $slide_meta = '<a href="'.$url.'"></a>'; }
				if(!empty($caption)) { $slide_meta = '<span class="container">
							  <span class="slider-caption">
								   <span>'.$caption.'</span>
							  </span>
					   </span>'; }
				if(!empty($caption)&&($url)) { $slide_meta = '<a href="'.$url.'"><span class="container">
							  <span class="slider-caption">
								   <span>'.$caption.'</span>
							  </span>
					   </span></a>'; }
                echo'<li class=" parallax" style="background-image:url(' . $src[0] . ');">'.$slide_meta.'</li>';
            }
            ?>
        </ul>
    </div>
    <?php
}
/* End Hero Slider */
$temp_wp_query = clone $wp_query;
$imic_category_to_show_on_home = get_post_meta($home_id, 'imic_category_to_show_on_home', false);
$imic_number_of_post_cat = get_post_meta($home_id, 'imic_number_of_post_cat', false);
$combined_data =  array();
if(!empty($imic_category_to_show_on_home[0])&&!empty($imic_number_of_post_cat[0])){
$combined_data = array_combine($imic_category_to_show_on_home[0], $imic_number_of_post_cat[0]);
}
?>
<!-- Start Notice Bar -->
<div class="notice-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <ul class="nav nav-pills news-portal-cats">
                    <?php
                    foreach ($combined_data as $key => $value) {
                        echo ' <li><a href="' . get_category_link($key) . '">' . get_cat_name($key) . '</a></li>';
                    }
                    ?>
                </ul>
            </div>
            <div class="col-md-4">
                <form method="get" id="searchform" action="<?php echo home_url(); ?>/">
                <div class="input-group input-group-lg">
                    <input type="text" class="form-control" name="s" id="s" placeholder="<?php _e('Search Posts...','framework'); ?>">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type ="submit"><i class="fa fa-search fa-lg"></i></button>
                    </span>
                </div>
                    </form>
            </div>
        </div>
    </div>
</div>
<!-- End Notice Bar --> 
<!-- Start Content -->
<div class="main" role="main">
    <div id="content" class="content full">
        <div class="container posts-featuring">
            <div class="row">
                <div class="col-md-9 col-sm-8"> 
                    <!-- Latest News -->
                    <?php 
                    if(!empty($combined_data)){
                    foreach ($combined_data as $key => $value) { ?>
                        <div class="listing post-listing">
                            <header class="listing-header">
                                <a href="<?php echo get_category_link($key); ?>" class="btn btn-default pull-right"><?php _e('More', 'framework') ?></a>
                                <h3><?php echo get_cat_name($key); ?></h3>
                            </header>
                            <?php
                            query_posts(array(
                                'post_type' => 'post',
                                'posts_per_page' => $value,
                                'cat' => $key
                            ));
                            if (have_posts()):
                                ?>
                                <section class="listing-cont">
                                    <ul>
                                        <?php
                                        $i = 1;
                                        while (have_posts()):the_post();
                                            echo'<li class="item post"><div class="row">';
                                            if ($i == 1) {
                                                if (has_post_thumbnail()):
                                                    echo'<div class="col-md-4">';
                                                    echo'<a href = "' . get_permalink() . '" class = "media-box">' . get_the_post_thumbnail() . '</a>';
                                                    echo'</div>';
                                                endif;
                                                echo'<div class="col-md-8">';
                                            } else {
                                                echo'<div class="col-md-12">';
                                            }
                                            echo'<div class="post-title"><h2><a href="' . get_permalink() . '">' . get_the_title() . '</a></h2>';
                                            echo'<span class="meta-data"><i class="fa fa-calendar"></i>' . __('on ', 'framework') .get_the_time(get_option('date_format')). '</span></div>';
                                            if ($i == 1) {
                                                echo'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus. Donec facilisis fermentum sem, ac viverra ante luctus vel. Donec vel mauris quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla convallis egestas rhoncus.</p>';
                                                echo'<p><a href="' . get_permalink() . '" class="btn btn-primary">' . __('Continue reading', 'framework') . '<i class="fa fa-long-arrow-right"></i></a></p>';
                                            }
                                            echo '</div>
                                            </div>
                                            </li>';
                                            $i++;
                                        endwhile;
                                        ?>
                                    </ul>
                                </section>
                            <?php endif; ?>
                        </div>
                        <div class="spacer-30"></div>
                        <?php
                    }
                    }
                    $wp_query = clone $temp_wp_query;
                    ?>
                </div>
                <!-- Start Sidebar -->
                <div class="col-md-3 col-sm-4">
                   
                    <?php imic_default_sidebar(); ?>
             
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Featured Gallery -->
<?php
$posts_per_page = $custom_home['imic_galleries_to_show_on'][0];
$temp_wp_query = clone $wp_query;
query_posts(array(
    'post_type' => 'gallery',
    'posts_per_page' => $posts_per_page,
));
if (have_posts()):
    ?>
    <div class="featured-gallery">
        <div class="container">
            <div class="row">
                <?php
                echo '<div class="col-md-3 col-sm-3">';
                $imic_custom_gallery_title = !empty($custom_home['imic_custom_gallery_title'][0]) ? $custom_home['imic_custom_gallery_title'][0] : __('Updates from our gallery', 'framework');
                echo'<h4>' . $imic_custom_gallery_title . '</h4>';
                $imic_custom_more_galleries_title = !empty($custom_home['imic_custom_more_galleries_title'][0]) ? $custom_home['imic_custom_more_galleries_title'][0] : __('More Galleries', 'framework');
                $pages = get_pages(array(
                    'meta_key' => '_wp_page_template',
                    'meta_value' => 'template-gallery-pagination.php'
                ));
                $imic_custom_more_galleries_url = !empty($custom_home['imic_custom_more_galleries_url'][0]) ? $custom_home['imic_custom_more_galleries_url'][0] : get_permalink($pages[0]->ID);
                echo'<a href="' . $imic_custom_more_galleries_url . '" class="btn btn-default btn-lg">' . $imic_custom_more_galleries_title . '</a>';
                echo '</div>';
                while (have_posts()):the_post();
                    $custom = get_post_custom(get_the_ID());
                    if (has_post_thumbnail() || count($custom['imic_gallery_images']) > 0):
                        $post_format_temp = get_post_format();
                        $post_format = !empty($post_format_temp) ? $post_format_temp : 'image';
                        echo '<div class="col-md-3 col-sm-3 post format-' . $post_format . '">';
                        switch (get_post_format()) {
                            case 'image':
                                $large_src_i = wp_get_attachment_image_src($custom['_thumbnail_id'][0], 'full');
                                echo'<a href="' . $large_src_i[0] . '" data-rel="prettyPhoto[Gallery]" class="media-box">';
                                the_post_thumbnail('full');
                                echo'</a>';
                                break;
                            case 'gallery':
                                echo '<div class="media-box">
                            <div class="flexslider" data-autoplay="yes" data-pagination="yes" data-arrows="yes" data-style="slide" data-pause="yes">';
                                if (count($custom['imic_gallery_images']) > 0) {
                                    echo'<ul class="slides">';
                                    foreach ($custom['imic_gallery_images'] as $custom_gallery_images) {
                                        $large_src = wp_get_attachment_image_src($custom_gallery_images, 'full');
                                        echo'<li class="item"><a href="' . $large_src[0] . '" data-rel="prettyPhoto[' . get_the_title() . ']">';
                                        echo wp_get_attachment_image($custom_gallery_images, 'full');
                                        echo'</a></li>';
                                    }
                                    echo'</ul>';
                                }
                                echo'</div>
                                </div>';
                                break;
                            case 'link':
                                if (!empty($custom['imic_gallery_link_url'][0])) {
                                    echo '<a href="' . $custom['imic_gallery_link_url'][0] . '" target="_blank" class="media-box">';
                                    the_post_thumbnail('full');
                                    echo'</a>';
                                }
                                break;
                            case 'video':
                                if (!empty($custom['imic_gallery_video_url'][0])) {
                                    echo '<a href="' . $custom['imic_gallery_video_url'][0] . '" data-rel="prettyPhoto[Gallery]" class="media-box">';
                                    the_post_thumbnail('full');
                                    echo'</a>';
                                }
                                break;
                            default:
                                $large_src_i = wp_get_attachment_image_src($custom['_thumbnail_id'][0], 'full');
                                echo'<a href="' . $large_src_i[0] . '" data-rel="prettyPhoto[Gallery]" class="media-box">';
                                the_post_thumbnail('full');
                                echo'</a>';
                                break;
                        }
                        echo'</div>';
                    endif;
                endwhile;
                ?>
            </div>
        </div>
    </div>
    <?php
endif;
$wp_query = clone $temp_wp_query;
//-- End Featured Gallery --
get_footer();
?>