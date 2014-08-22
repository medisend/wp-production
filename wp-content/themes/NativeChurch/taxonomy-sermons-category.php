<?php get_header(); ?>
<div class="container">
    <div class="row">
        <?php if (have_posts()): ?>
            <div class="col-md-8 sermon-archive"> 
                <!-- Sermons Listing -->
                <?php
                while (have_posts()):the_post();
				if ( '' != get_the_post_thumbnail() ) {
											$class = "col-md-8";
										} else {
											$class = "col-md-12";
										}
                    $custom = get_post_custom(get_the_ID());
                    ?>
                    <article class="post sermon">
                        <header class="post-title">
                            <?php
                            echo'<div class="row">
      					<div class="col-md-9 col-sm-9">
            				<h3><a href="' . get_permalink() . '">' . get_the_title() . '</a></h3>';
                            echo'<span class="meta-data"><i class="fa fa-calendar"></i>' . __('Posted on ', 'framework') . get_the_time(get_option('date_format'));
							echo get_the_term_list(get_the_ID(), 'sermons-speakers', ' | Pastor: ', ', ', '' );
                            echo'</span>
                                         </div>';
                            echo'<div class="col-md-3 col-sm-3 sermon-actions">';
                            if (!empty($custom['imic_sermons_url'][0])) {
                                echo '<a href="' . get_permalink() . '" data-placement="top" data-toggle="tooltip" data-original-title="'.__('Video', 'framework') .'" rel="tooltip"><i class="fa fa-video-camera"></i></a>';
                            }
                            $imic_sermons_audio = get_post_meta(get_the_ID(), 'imic_sermons_audio', true);
                            if (!empty($imic_sermons_audio)) {
                                echo'<a href="' . get_permalink() . '" data-placement="top" data-toggle="tooltip" data-original-title="'.__('Audio', 'framework') .'" rel="tooltip"><i class="fa fa-headphones"></i></a>';
                            }
                            echo '<a href="' . get_permalink() . '" data-placement="top" data-toggle="tooltip" data-original-title="'.__('Read online', 'framework') .'" rel="tooltip"><i class="fa fa-file-text-o"></i></a>';
                            $imic_sermons_pdf = get_post_meta(get_the_ID(), 'imic_sermons_Pdf', true);
                            if (!empty($imic_sermons_pdf)) {
                                $attach_pdf = wp_get_attachment_url($imic_sermons_pdf);
                                echo '<a href="' . IMIC_THEME_PATH . '/download/download.php?file=' . $attach_pdf . '" data-placement="top" data-toggle="tooltip" data-original-title="' . __('Download PDF', 'framework') . '" rel="tooltip"><i class="fa fa-book"></i></a>';
                            }
                            echo'</div>
                 	</div>';
                            ?>
                        </header>
                        <div class="post-content">
                            <div class="row">
                            <?php if (has_post_thumbnail()): ?>
                                <div class="col-md-4">
                                    <a href="<?php the_permalink() ?>" class="media-box">
                                        <?php
                                            the_post_thumbnail('sermons', array('class' => "img-thumbnail"));
                                        ?>
                                    </a>
                                </div>
                                <?php endif; ?>
                                <div class="<?php echo $class; ?>">
                                    <?php echo imic_excerpt(100); ?>
                                    <p><a href="<?php the_permalink() ?>" class="btn btn-primary"><?php _e('Continue reading ', 'framework'); ?> <i class="fa fa-long-arrow-right"></i></a></p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <?php
                endwhile;
                pagination();
                ?>
            </div>
        <?php endif; ?>
        <!-- Start Sidebar -->
        <div class="col-md-4 sidebar">
	        <?php dynamic_sidebar('sermons-sidebar'); ?>
        </div>
        <!-- End Sidebar -->
    </div>
</div>
<?php get_footer(); ?>