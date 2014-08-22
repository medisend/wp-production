<?php
/*
  Template Name: Gallery  Filter
 */
get_header();
$custom_gallery_filter = get_post_custom(get_the_ID());
$gallery_filter_columns_layout = $custom_gallery_filter['imic_gallery_filter_columns_layout'][0];
if ($gallery_filter_columns_layout == 3) {
    $class = 'col-md-4 col-sm-4';
} elseif ($gallery_filter_columns_layout == 4) {
    $class = 'col-md-3 col-sm-3';
} else {
    $class = 'col-md-6 col-sm-6';
}
echo '<div class="container">';
$temp_wp_query = clone $wp_query;
query_posts(array(
    'post_type' => 'gallery',
    'posts_per_page' => -1,
));
if (have_posts()): ?>
    <div class="row">
        <ul class="sort-destination" data-sort-id="gallery">
            <?php
            while (have_posts()):the_post();
                $custom = get_post_custom(get_the_ID());
                if (has_post_thumbnail() || count($custom['imic_gallery_images']) > 0):
				$post_format_temp =get_post_format();
                         $post_format =!empty($post_format_temp)?$post_format_temp:'image';
              	$term_slug = get_the_terms(get_the_ID(), 'gallery-category');
				//print_r($term_slug);
                  echo '<li class="' . $class . ' grid-item post';
				  if (!empty($term_slug)) {
                                foreach ($term_slug as $term) {
                                    echo ' format-'.$term->slug.' ';
                                }
                            }
				  echo '">';
                    echo'<div class="grid-item-inner">';
                    switch (get_post_format()) {
                        case 'image':
                            $large_src_i = wp_get_attachment_image_src($custom['_thumbnail_id'][0], 'full');
                            echo'<a href="' . $large_src_i[0] . '" data-rel="prettyPhoto" class="media-box">';
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
                                    echo'<li class="item"><a href="' . $large_src[0] . '" data-rel="prettyPhoto[postname]">';
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
                                echo '<a href="' . $custom['imic_gallery_video_url'][0] . '" data-rel="prettyPhoto" class="media-box">';
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
                    echo'</div>
                </li>';
                endif;
            endwhile; ?>
        </ul>
    </div>
<?php endif;
$wp_query = clone $temp_wp_query;
echo'</div>';
get_footer(); ?>