<?php
/*
  Template Name: contact
 */
get_header();
$custom = get_post_custom(get_the_ID());
$admin_email = (!empty($custom['imic_contact_email'][0])) ? $custom['imic_contact_email'][0] : get_option('admin_email');
$subject_email = (!empty($custom['imic_contact_subject'][0])) ? $custom['imic_contact_subject'][0] :__('Contact Form','framework'); ?>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <?php
            if (!empty($custom['imic_our_location_text'][0])) {
                echo '<header class="single-post-header clearfix">
                        <h2 class="post-title">' . $custom['imic_our_location_text'][0] . '</h2>
                      </header>';
            }
            ?>
            <div class="post-content">
                <?php
               if ($custom['imic_contact_map_display'][0] == 'yes' && !empty($custom['imic_contact_map_box_code'][0])) {
                    echo '<div id="gmap">';
                    echo $custom['imic_contact_map_box_code'][0];
                    echo '</div>';
                }
                ?>
                   <div class="row">
                    <form method="post" id="contactform" name="contactform" class="contact-form" action="<?php echo get_template_directory_uri() ?>/mail/contact.php">
                        <div class="col-md-6 margin-15">
                            <div class="form-group">
                                <input type="text" id="name" name="name"  class="form-control input-lg" placeholder="Name*">
                            </div>
                            <div class="form-group">
                                <input type="email" id="email" name="email"  class="form-control input-lg" placeholder="Email*">
                            </div>
                            <div class="form-group">
                                <input type="text" id="phone" name="phone" class="form-control input-lg" placeholder="Phone">
                                <input type ="hidden" name ="image_path" id="image_path" value ="<?php echo get_template_directory_uri() ?>">
                            <input id="admin_email" name="admin_email" type="hidden" value ="<?php echo $admin_email; ?>">
                            <input id="subject" name="subject" type="hidden" value ="<?php echo $subject_email; ?>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <textarea cols="6" rows="7" id="comments" name="comments" class="form-control input-lg" placeholder="Message"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <input id="submit" name="submit" type="submit" class="btn btn-primary btn-lg pull-right" value="Submit now!">
                        </div>
                    </form>
                    <div class="clearfix"></div>
                    <div id="message"></div>
                </div>
            </div>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
            <?php imic_default_sidebar();?>
        </div>
    </div>
</div>
<?php get_footer(); ?>