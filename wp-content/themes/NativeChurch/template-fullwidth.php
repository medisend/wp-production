<?php
/*
  Template Name: Full Width
 */
get_header(); ?>
    <div class="container">
        <div class="row">
	<article class="col-md-12">
		<?php if(have_posts()):
                while(have_posts()):the_post();
                    the_content();		
                endwhile;
            endif; ?>
	</article>
    	</div>
     </div>
<?php get_footer(); ?>