jQuery(document).ready(function() {
	jQuery("#ajax_events").on("click","a.upcomingEvents", function(event) {
		var dateEvent = jQuery(this).attr('id');
		jQuery('.listing-cont').fadeOut('slow');
		//alert("sai");
		jQuery.ajax({
			type: 'POST',
			url: urlajax.ajaxurl,
			data: {
				action: 'imic_event_grid',
				date: dateEvent,
				},
			success: function(data) {
				jQuery('.listing-cont').fadeIn('slow');
				jQuery('#ajax_events').html('');
				jQuery('#ajax_events').append(data);
				//jQuery('#ajax_events').fadeOut();
			},
			error: function(errorThrown) {
			}
		});
    });
    function set_session_data(s_day_name,s_date,e_date,e_day_name){
         // Start Date      
        jQuery.session.set("s_day_name", s_day_name);
        jQuery.session.set("s_date", s_date);
        // End Date  
        if(e_date!=null){
        jQuery.session.set("e_day_name", e_day_name);
        jQuery.session.set("e_date", e_date);
    }}
 jQuery(".event-id").live('click', function() {
        var s_date = jQuery(this).find('.s_date').attr('id');
        var s_day_name = jQuery(this).find('.s_day_name').attr('id');
        var e_date = jQuery(this).find('.e_date').attr('id');
        var e_day_name = jQuery(this).find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
        });
    jQuery(".event-item .event-detail").find('a').live('click',function() {
      var s_date = jQuery(this).parent().parent().find('.s_date').attr('id');
      var s_day_name = jQuery(this).parent().parent().find('.s_day_name').attr('id');
      var e_date = jQuery(this).parent().parent().find('.e_date').attr('id');
      var e_day_name = jQuery(this).parent().parent().find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    jQuery(".notice-bar-event-title h5").find('a').live('click',function() {
      var s_date = jQuery(this).parent().parent().find('.s_date').attr('id');
      var s_day_name = jQuery(this).parent().parent().find('.s_day_name').attr('id');
      var e_date = jQuery(this).parent().parent().find('.e_date').attr('id');
      var e_day_name = jQuery(this).parent().parent().find('.e_day_name').attr('id');
       set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    jQuery(".taxonomy-event h3 a,.taxonomy-event .btn-primary").click(function() {
      var s_date = jQuery(this).closest('.taxonomy-event').find('.s_date').attr('id');
      var s_day_name = jQuery(this).closest('.taxonomy-event').find('.s_day_name').attr('id');
      var e_date = jQuery(this).closest('.taxonomy-event').find('.e_date').attr('id');
      var e_day_name = jQuery(this).closest('.taxonomy-event').find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    jQuery(".grid-item .grid-item-inner a").click(function() {
      var s_date = jQuery(this).closest('.grid-item').find('.s_date').attr('id');
      var s_day_name = jQuery(this).closest('.grid-item').find('.s_day_name').attr('id');
      var e_date = jQuery(this).closest('.grid-item').find('.e_date').attr('id');
      var e_day_name = jQuery(this).closest('.grid-item').find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    jQuery(".timeline li .timeline-title a").live('click',function() {
      var s_date = jQuery(this).closest('li').find('.s_date').attr('id');
      var s_day_name = jQuery(this).closest('li').find('.s_day_name').attr('id');
      var e_date = jQuery(this).closest('li').find('.e_date').attr('id');
      var e_day_name = jQuery(this).closest('li').find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    jQuery(".megamenu-container .sub-menu li a").live('click',function() {
      var s_date = jQuery(this).closest('li').find('.s_date').attr('id');
      var s_day_name = jQuery(this).closest('li').find('.s_day_name').attr('id');
      var e_date = jQuery(this).closest('li').find('.e_date').attr('id');
      var e_day_name = jQuery(this).closest('li').find('.e_day_name').attr('id');
        set_session_data(s_day_name,s_date,e_date,e_day_name);
    });
    
    if (urlajax.single_event == 1) {
        if (jQuery.session.get("s_day_name") != null) {
            jQuery('.event-custom').each(function() {
                if (jQuery(this).children().hasClass('fa-calendar')) {
                    jQuery(this).empty();
                    if (jQuery.session.get("e_day_name")!= null) {
                    jQuery(this).append('<i class="fa fa-calendar"></i> <strong>' + jQuery.session.get("s_day_name") + '</strong> | ' + jQuery.session.get("s_date") + ' to <strong>' + jQuery.session.get("e_day_name") + '</strong> | ' + jQuery.session.get("e_date") + '');
                    }
                    else{
                      jQuery(this).append('<i class="fa fa-calendar"></i> <strong>' + jQuery.session.get("s_day_name") + '</strong> | ' + jQuery.session.get("s_date") + '');  
                    }
                    }
            });
        }
    }
});