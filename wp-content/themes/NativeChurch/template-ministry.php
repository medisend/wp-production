<?php
/*
  Template Name: Ministry
 */
get_header();
$imic_post_custom_title = get_post_meta(get_the_ID(),'imic_post_page_custom_title',true);
$imic_post_custom_title = !empty($imic_post_custom_title) ? $imic_post_custom_title: get_the_title(get_the_ID());
?>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <header class="single-post-header clearfix">
                <h2 class="post-title"><?php echo $imic_post_custom_title ?></h2>
            </header>
            <div class="post-content">
                <?php   if (has_post_thumbnail()) {
                  the_post_thumbnail('full', array('class' => "img-thumbnail"));
                       } ?>
                <div class="spacer-30"></div>
                <?php  while(have_posts()):the_post();

                    the_content();		

                endwhile; ?>
                
            </div>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-4 sidebar">
	        <?php imic_default_sidebar();?>
        </div> 
    </div>
</div>
<?php get_footer(); ?>