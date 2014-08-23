<?php get_header(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-9"> 
            <header class="single-post-header clearfix">
                <div class="pull-right post-comments-count">
              <?php comments_popup_link('<i class="fa fa-comment"></i>'.__('No comments yet','framework'), '<i class="fa fa-comment"></i>1', '<i class="fa fa-comment"></i>%', 'comments-link',__('Comments are off for this post','framework')); ?>
                </div>
                <h2 class="post-title"><?php the_title() ?></h2>
            </header>
            <article class="post-content">
                <span class="post-meta meta-data"><span><i class="fa fa-calendar"></i> <?php
                        _e('Posted on ', 'framework');
                        echo get_the_time(get_option('date_format'));
                        $cats = get_the_category();
                        ?>
                    </span> <span><i class="fa fa-user"></i><?php _e(' Posted By: ','framework'); ?><?php $author_id = $post->post_author;
the_author_meta('user_nicename', $author_id); ?></span><span><i class="fa fa-archive"></i><?php
                        _e('Categories: ', 'framework');
                        echo '<a href="' . get_category_link($cats[0]->term_id) . '">' . $cats[0]->name . '</a>';
                        ?> </span></span>
                <?php
                while (have_posts()):the_post();
                    the_content();
                endwhile;
                if (has_tag()) {
                    echo'<div class="post-meta">';
                    echo'<i class="fa fa-tags"></i>';
                    the_tags('', ', ');
                    echo'</div>';
                } ?>	
            </article>
	<?php comments_template('', true); ?> 
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
            <?php imic_default_sidebar(); ?>
        </div>
        <!-- End Sidebar -->
    </div>
</div>
<?php get_footer(); ?>