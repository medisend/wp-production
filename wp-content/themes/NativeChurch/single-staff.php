<?php get_header(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-9"> 
            <header class="single-post-header clearfix">
                <h2 class="post-title"><?php the_title() ?></h2>
            </header>
            <article class="post-content">
            <?php if (has_post_thumbnail()): ?>
                <div class="featured-image">
                    <?php
                        the_post_thumbnail('full');
                    ?>
                </div>
                <?php endif;
                while (have_posts()):the_post();
                    the_content();
                endwhile;?>	
            </article>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
            <?php imic_default_sidebar();?>
        </div>
        <!-- End Sidebar -->
    </div>
</div>
<?php get_footer(); ?>