<?php
if(!is_front_page()){
     echo '</div></div>';
}
?>
<?php $options = get_option('imic_options'); ?>
<!-- Start Footer -->
<?php if ( is_active_sidebar( 'footer-sidebar' ) ) : ?>
<footer class="site-footer">
    <div class="container">
        <div class="row">
        	<?php dynamic_sidebar('footer-sidebar'); ?>
        </div>
    </div>
</footer>
<?php endif; ?>
<footer class="site-footer-bottom">
    <div class="container">
        <div class="row">
            <?php
            if (!empty($options['footer_copyright_text'])) {
                echo '<div class="copyrights-col-left col-md-6 col-sm-6">'; ?>
                <p><?php _e('&copy; ','framework'); echo date('Y '); bloginfo('name'); _e('. ','framework'); echo $options['footer_copyright_text']; ?></p>
                <?php echo '</div>';
            }
            ?>
            <div class="copyrights-col-right col-md-6 col-sm-6">
                <div class="social-icons">
                    <?php
                    if ($options['social-facebook'] != '') {
                        echo'<a href="' . $options['social-facebook'] . '" target ="_blank"><i class="fa fa-facebook"></i></a>';
                    }
                    if ($options['social-twitter'] != '') {
                        echo'<a href="' . $options['social-twitter'] . '" target ="_blank"><i class="fa fa-twitter"></i></a>';
                    }
                    if ($options['social-pinterest'] != '') {
                        echo'<a href="' . $options['social-pinterest'] . '" target ="_blank"><i class="fa fa-pinterest"></i></a>';
                    }
                    if ($options['social-googleplus'] != '') {
                        echo'<a href="' . $options['social-googleplus'] . '" target ="_blank"><i class="fa fa-google-plus"></i></a>';
                    }
                    if ($options['social-youtube'] != '') {
                        echo'<a href="' . $options['social-youtube'] . '" target ="_blank"><i class="fa fa-youtube"></i></a>';
                    }
					  if ($options['social-instagram'] != '') {
                        echo'<a href="' . $options['social-instagram'] . '" target ="_blank"><i class="fa fa-instagram"></i></a>';
                    }
					  if ($options['social-vimeo'] != '') {
                        echo'<a href="' . $options['social-vimeo'] . '" target ="_blank"><i class="fa fa-vimeo-square"></i></a>';
                    }
                    if ($options['site-rss'] != '') {
                        echo'<a href="' . $options['site-rss'] . '" target ="_blank"><i class="fa fa-rss"></i></a>';
                    }
                    ?>
                  </div>
            </div>
        </div>
    </div>
</footer>
<?php if ($options['enable_backtotop'] == 1) { 
echo'<a id="back-to-top"><i class="fa fa-angle-double-up"></i></a>';
 } ?>
</div>
<!-- End Boxed Body -->
<?php wp_footer(); ?>
</body>
</html>