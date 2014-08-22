jQuery(document).ready(function() {
    jQuery('.calendar').prepend('<img id="loading-image" src="' + calenderEvents.homeurl + '/images/loader.gif" alt="Loading..." />');
    jQuery('.calendar').fullCalendar({
        monthNames: calenderEvents.monthNames,
        monthNamesShort: calenderEvents.monthNamesShort,
        dayNames: calenderEvents.dayNames,
        dayNamesShort: calenderEvents.dayNamesShort,
        editable: true,
        events: calenderEvents.homeurl + '/includes/json-feed.php',
        timeFormat: 'h:mmtt',
        loading: function(bool) {
            if (bool)
                jQuery('#loading-image').show();
            else
                jQuery('#loading-image').hide();
        },
    });
});