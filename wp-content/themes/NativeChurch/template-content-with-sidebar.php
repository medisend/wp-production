<?php
/*
  Template Name: Content with Sidebar
 */
get_header(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-9">
	  <?php if(have_posts()):
                while(have_posts()):the_post();
                    the_content();		
                endwhile;
            endif; ?>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
	        <?php imic_default_sidebar();?>
        </div>
         <!-- End Sidebar -->
    </div>
</div>
<?php get_footer(); ?>