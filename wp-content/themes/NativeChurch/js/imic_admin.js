/*
 *
 *	Admin jQuery Functions
 *	------------------------------------------------
 *	Imic Framework
 * 	Copyright Imic 2014 - http://imicreation.com
 *
 */
jQuery(window).load(function() {
    jQuery('#imic_number_of_post_cat').parent().parent().find('.rwmb-clone').each(function() {
        jQuery(this).find('.rwmb-button').hide();
    })
    jQuery('#imic_number_of_post_cat').parent().parent().find('.add-clone').hide();
});
jQuery(function(jQuery) {
//SELECTED TEMPLATE BASED META BOX DISPLAY
    function show_hide_metabox() {
        if (jQuery('body').hasClass('post-type-page')) {
            var metaID = jQuery('#page_template').val().slice(0, -4);
            metaboxName = metaID.substring(metaID.indexOf('-') + 1);
            jQuery('#normal-sortables > div').each(function(i, k)
            {
                if (jQuery(this).attr('id').indexOf(metaboxName) != -1)
                {
                    jQuery(this).show();
                    
                }
                else
                {
                    jQuery(this).hide();
                }
                  if (metaboxName == 'h-second') {
                    jQuery('#template-home1,#template-home3').show();
                }
				jQuery('#post_page_meta_box').show();
                                jQuery('#select_sidebar').show();
            })
        }
    }
    show_hide_metabox();
    // META FIELD DISPLAY ON TEMPLATE SELECT
    jQuery('#page_template').on('change', function() {
        show_hide_metabox();
    });
    // Map Display
    var $imic_contact_map_display = jQuery('#imic_contact_map_display');
    function map_display() {
        var $imic_contact_bottom_box = jQuery('#imic_contact_map_box_code').parent().parent();
        if ($imic_contact_map_display.val() == "no") {
            $imic_contact_bottom_box.css('display', 'none');
        }
        else {
            $imic_contact_bottom_box.css('display', 'block');
        }
    }
    map_display();
    $imic_contact_map_display.change(function() {
        map_display();
    });
    jQuery('.repeatable-add').click(function() {
        field = jQuery(this).closest('td').find('.custom_repeatable li:last').clone(true);
        fieldLocation = jQuery(this).closest('td').find('.custom_repeatable li:last');
        jQuery('input', field).val('').attr('name', function(index, name) {
            return name.replace(/(\d+)/, function(fullMatch, n) {
                return Number(n) + 1;
            });
        })
        field.insertAfter(fieldLocation, jQuery(this).closest('td'))
        return false;
    });
    jQuery('.repeatable-remove').click(function() {
        jQuery(this).parent().remove();
        return false;
    });
    var imic_gallery_meta_box = jQuery('#gallery_meta_box');
    var imic_gallery_video_url = jQuery('#imic_gallery_video_url').parent().parent();
    var imic_gallery_link_url = jQuery('#imic_gallery_link_url').parent().parent();
    var imic_gallery_slider_images = jQuery('#imic_gallery_images_description').parent().parent();
    var imic_gallery_audio = jQuery('#imic_gallery_audio').parent().parent();
     var imic_gallery_audio_display = jQuery('#imic_gallery_audio_display').parent().parent();
    var imic_gallery_audio_uploaded = jQuery('#imic_gallery_uploaded_audio_description').parent().parent();
   //alert(jQuery('#imic_gallery_uploaded_audio_description').html());
    function checkPostFormat(radio_val) {
        if (jQuery.trim(radio_val) == 'video') {
            imic_gallery_meta_box.show();
            imic_gallery_link_url.hide();
            imic_gallery_slider_images.hide();
            imic_gallery_audio_display.hide();
            imic_gallery_audio_uploaded.hide();
            imic_gallery_audio.hide();
            imic_gallery_video_url.show();
        }
        else if (jQuery.trim(radio_val) == 'link') {
            imic_gallery_meta_box.show();
            imic_gallery_link_url.show();
            imic_gallery_slider_images.hide();
            imic_gallery_audio.hide();
            imic_gallery_audio_display.hide();
            imic_gallery_audio_uploaded.hide();
            imic_gallery_video_url.hide();
        }
        else if (jQuery.trim(radio_val) == 'gallery') {
            imic_gallery_meta_box.show();
            imic_gallery_link_url.hide();
            imic_gallery_slider_images.show();
            imic_gallery_audio.hide();
            imic_gallery_audio_display.hide();
            imic_gallery_audio_uploaded.hide();
            imic_gallery_video_url.hide();
        }
         else if (jQuery.trim(radio_val) == 'audio') {
             
            imic_gallery_meta_box.show();
            imic_gallery_link_url.hide();
            imic_gallery_slider_images.hide();
            imic_gallery_video_url.hide();
            imic_gallery_audio.show();
            imic_gallery_audio_display.show();
            imic_gallery_audio_uploaded.show();
            audio_display();
        }
        else {
            imic_gallery_meta_box.hide();
            
        }
    }
    jQuery('.post-type-gallery .post-format,.post-type-post .post-format').click(function() {
        if (jQuery(this).is(':checked'))
        {
            var radio_val = jQuery(this).val();
            checkPostFormat(radio_val)
        }
    })
    jQuery('.post-type-gallery,.post-type-post').find('.post-format').each(function() {
        if (jQuery(this).is(':checked'))
        {
            var radio_val = jQuery(this).val();
            checkPostFormat(radio_val);
            
        }
    })
    // Audio Display Post
    var $imic_audio_display_display = jQuery('#imic_gallery_audio_display');
    function audio_display() {
      $imic_audio_display_display = jQuery('#imic_gallery_audio_display');
          var imic_gallery_audio = jQuery('#imic_gallery_audio').parent().parent();
          var imic_gallery_audio_uploaded = jQuery('#imic_gallery_uploaded_audio_description').parent().parent();
             if ($imic_audio_display_display.val() == "1") {
            imic_gallery_audio.show();
            imic_gallery_audio_uploaded.hide();
        }
 if ($imic_audio_display_display.val() =="2") {
            imic_gallery_audio.hide();
            imic_gallery_audio_uploaded.show();
        }
    }
     $imic_audio_display_display.change(function() {
        audio_display();
    });
    //Megamenu
     var megamenu = jQuery('.megamenu');
    megamenu.each(function() {
        checkCheckbox(jQuery(this));
    });
    megamenu.click(function() {
        checkCheckbox(jQuery(this));
    })
    function checkCheckbox(mega_check) {
        if (mega_check.is(':checked')) {
            mega_check.parents('.custom_menu_data').find('.enabled_mega_data').show();
        }
        else {
            mega_check.parents('.custom_menu_data').find('.enabled_mega_data').hide();
        }
    }
    var menu_post_type = jQuery('.enabled_mega_data .menu-post-type');
    function show_hide_post() {
        menu_post_type.each(function() {
            if (jQuery(this).val() == '') {
                jQuery(this).parents('.enabled_mega_data').find('.menu-post-id-comma').parent().parent().show();
                jQuery(this).parents('.enabled_mega_data').find('.menu-post').parent().parent().hide();
            }
            else {
                jQuery(this).parents('.enabled_mega_data').find('.menu-post-id-comma').parent().parent().hide();
                jQuery(this).parents('.enabled_mega_data').find('.menu-post').parent().parent().show();
            }
        })
    }
    show_hide_post();
    menu_post_type.on('change', function() {
        show_hide_post();
    })
});
