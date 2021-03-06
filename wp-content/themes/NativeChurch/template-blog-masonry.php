<?php 
/*
  Template Name: Blog Masonry
 */
get_header(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <?php 
             query_posts(array(
            'post_type' => 'post',
            'paged' => get_query_var('paged')
            ));
            if (have_posts()) : ?>
                <ul class="grid-holder col-3 events-grid">
                    <?php
                    while (have_posts()):the_post();
                        $custom_post = get_post_custom(get_the_ID());
                        echo '<li class="grid-item post format-standard">';
                        echo '<div class="grid-item-inner">';
                        if (has_post_thumbnail()):
                            $src = wp_get_attachment_image_src($custom_post['_thumbnail_id'][0], 'full');
                            echo'<a href="' . $src[0] . '" data-rel="prettyPhoto" class="media-box">';
                            the_post_thumbnail('full');
                            echo'</a>';
                        endif;
                        echo '<div class="grid-content">';
                        echo '<h3><a href="' . get_permalink() . '">' . get_the_title() . '</a></h3>';
                        $cats = get_the_category();
                        echo '<span class="meta-data"><span><i class="fa fa-calendar"></i>' . get_the_time(get_option('date_format')) . '</span><span><a href="'.get_category_link($cats[0]->term_id).'"><i class="fa fa-tag"></i>'.$cats[0]->name.'</a></span></span>';
                        echo imic_excerpt(50);
                        echo '</div>';
                        echo ' </div>';
                        echo '</li>';
                        ?>
                        <?php
                    endwhile;
                    echo '</ul>';
                else:
                    echo '<ul><li>';
                    if (current_user_can('edit_posts')) :
                        ?>
                        <h3><?php _e('No posts to display', 'framework'); ?></h3>
                        <p><?php printf(__('Ready to publish your first post? <a href="%s">Get started here</a>.', 'framework'), admin_url('post-new.php')); ?></p>
                    <?php else : ?>
                        <h3><?php _e('Nothing Found', 'framework'); ?></h3>
                        <p><?php printf(__('Apologies, but no results were found. Perhaps searching will help find a related post..', 'framework')); ?></p>
                        <?php
                        echo '</li></ul>';
                    endif;
                    ?>
                <?php
            endif; // end have_posts() check  
            // -- Pagination --
            if ($wp_query->max_num_pages > 1) :
                ?>
                <ul class="pager pull-right">
                    <li><?php next_posts_link(__('&larr;Older','framework')); ?></li>
                    <li><?php previous_posts_link(__(' Newer &rarr;','framework')); ?></li>
                </ul>
                <?php
            endif;
            ?>
        </div>
    </div>
</div>
<?php get_footer(); ?>