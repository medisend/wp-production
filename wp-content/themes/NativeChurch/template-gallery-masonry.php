<?php
/*
  Template Name: Gallery Masonry
 */
get_header();
$custom_gallery = get_post_custom(get_the_ID());
$posts_per_page = get_post_meta(get_the_ID(),'imic_gallery_masonry_to_show_on',true);
echo '<div class="container">';
$temp_wp_query = clone $wp_query;
query_posts(array(
    'post_type' => 'gallery',
    'posts_per_page' => $posts_per_page,
    'paged' => get_query_var('paged')
));
if (have_posts()):
    ?>
    <div class="row">
        <div class="col-md-12">
            <ul class="grid-holder col-3 events-grid">
                <?php
                while (have_posts()):the_post();
                    $custom = get_post_custom(get_the_ID());
                    if (has_post_thumbnail() || count($custom['imic_gallery_images']) > 0):
                       $post_format_temp =get_post_format();
                         $post_format =!empty($post_format_temp)?$post_format_temp:'image';
                        echo '<li class="grid-item post format-' . $post_format . '">';
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
                endwhile;
                ?>
            </ul>
    <?php if ($wp_query->max_num_pages > 1) : ?>
                <ul class="pager pull-right">
                    <li><?php next_posts_link(__('&larr;Older', 'framework')); ?></li>
                    <li><?php previous_posts_link(__(' Newer &rarr;', 'framework')); ?></li>
                </ul>
    <?php endif; ?>
        </div>
    </div>
<?php
endif;
$wp_query = clone $temp_wp_query;
echo'</div>';
get_footer();
?>