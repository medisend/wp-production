<?php
/*
  Template Name: Events Timeline
 */
get_header();
?>
      <div class="container">
        <ul class="timeline">
      <?php $temp_wp_query = clone $wp_query;
$today = date('Y-m-d');
$currentTime = date('h:i A');
$upcomingEvents = '';
query_posts(array('post_type' => 'event', 'meta_key' => 'imic_event_start_dt', 'meta_query' => array(array('key' => 'imic_event_frequency_end', 'value' => $today, 'compare' => '>=')), 'orderby' => 'meta_value', 'order' => 'ASC', 'posts_per_page' => 50));
$event_add = array();
$sinc = 1;
if (have_posts()):
    while (have_posts()):the_post();
        $eventDate = strtotime(get_post_meta(get_the_ID(), 'imic_event_start_dt', true));
        $eventTime = get_post_meta(get_the_ID(), 'imic_event_start_tm', true);
        if ($eventTime == '') {
            $eventTime = "";
        }
		$eventTime = strtotime($eventTime);
		if($eventTime!='') { $eventTime = date('h:i A',$eventTime); }
        $frequency = get_post_meta(get_the_ID(), 'imic_event_frequency', true);
        $frequency_count = '';
        $frequency_count = get_post_meta(get_the_ID(), 'imic_event_frequency_count', true);
        if ($frequency > 0) {
            $frequency_count = $frequency_count;
        } else { $frequency_count = 0; }
        $seconds = $frequency * 86400;
        $fr_repeat = 0;
        while ($fr_repeat <= $frequency_count) {
            $eventDate = get_post_meta(get_the_ID(), 'imic_event_start_dt', true);
            $eventDate = strtotime($eventDate);
			if($frequency==30) {
			$eventDate = strtotime("+".$fr_repeat." month", $eventDate);
			$eventDate = date('Y-m-d',$eventDate);
			$eventDate = $eventDate.' '.$eventTime;
			$eventDate = strtotime($eventDate);
			}
			else {
            $new_date = $seconds * $fr_repeat;
            $eventDate = $eventDate + $new_date;
			$eventDate = date('Y-m-d',$eventDate);
			$eventDate = $eventDate.' '.$eventTime;
			$eventDate = strtotime($eventDate);
			}
            $date_sec = date('Y-m-d', $eventDate);
            $exact_time = strtotime($date_sec . ' ' . $eventTime);
            if ($exact_time >= date('U')) {
                $event_add[$eventDate + $sinc] = get_the_ID();
                $sinc++;
            } $fr_repeat++;
        }
    endwhile; endif; 
	$nos_event = 1;
	$month_check = 1;
    ksort($event_add);
	$month_tag = '';
    foreach ($event_add as $key => $value) {
		if($month_tag!=date('M',$key)) { $month_check=1; }
		$year_tag = date('Y',$key);
		if($month_check==1) {
		$month_tag = date('M',$key); } if($month_check==1) { $tag = '<div class="timeline-badge">'.$month_tag.'<span>'.$year_tag.'</span></div>'; } else { $tag = ''; } $month_check++;
		$eventAddress = get_post_meta($value,'imic_event_address',true);
		$eventContact = get_post_meta($value,'imic_event_contact',true);
        $daysTemp = imic_day_diff($value);
        $eventTime = get_post_meta($value, 'imic_event_start_tm', true);
		$eventEndTime = get_post_meta($value,'imic_event_end_tm',true);
		$eventTime = strtotime($eventTime);
		if($eventTime!='') { $eventTime = date(' h:i A',$eventTime); }
		$eventEndTime = strtotime($eventEndTime);
		if($eventEndTime!='') { $eventEndTime = date(' - h:i A',$eventEndTime); }
        $recurrence = get_post_meta($value, 'imic_event_frequency', true);
        if ($recurrence > 0) {
            $icon = ' <i class="fa fa-refresh" style="font-size:80%;" title="Recurring"></i>';
        } else {
            $icon = '';
        }
        $stime = '';
        $setime = '';
        if ($eventTime != '') {
            $stime = ' | ' . $eventTime;
            $setime = $eventTime;
        }
            if ($daysTemp > 1) {
                $first_end_date = strtotime("+" . $daysTemp . " day", $key);
                $first_e_day_name = __(date('l', $first_end_date), 'framework');
                $first_e_date = __(date('jS ', $first_end_date), 'framework') . __(date('F', $first_end_date), 'framework') . __(date(', Y', $first_end_date), 'framework');
            } else {
                $first_e_date = '';
                $first_e_day_name = '';
            }
        if ($daysTemp > 0) {
            $end_date = strtotime("+" . $daysTemp . " day", $key);
            $e_day_name = __(date('l', $end_date), 'framework');
            $e_date = __(date('jS ', $end_date), 'framework') . __(date('F', $end_date), 'framework') . __(date(', Y', $end_date), 'framework');
        } else {
            $e_date = '';
            $e_day_name = '';
        }
		if($nos_event%2==0) { $class = 'timeline-inverted'; } else { $class = ''; }
        echo '<li class="'.$class.'">
              '.$tag.'
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h3 class="timeline-title"><a href="'.get_permalink($value).'">'.get_the_title($value).' '.$icon.'</a></h3>
                </div>
                <div class="timeline-body">
				<span class ="s_date" id ="' . __(date('jS ', $key), 'framework') . __(date('F', $key), 'framework') . __(date(', Y', $key), 'framework') . '"></span><span class ="s_day_name" id="' . __(date('l', $key), 'framework') . '"></span><span class ="e_day_name" id ="' . $e_day_name . '"></span><span class ="e_date" id="' . $e_date . '"></span>
                    <ul class="info-table">
                      <li><i class="fa fa-calendar"></i> <strong>'.__(date('l',$key),'framework').'</strong> | '.__(date('jS F, Y',$key),'framework').'</li>';
					  if(!empty($eventTime)) { 
                      echo '<li><i class="fa fa-clock-o"></i>'.$eventTime.$eventEndTime.'</li>'; }
					  if(!empty($eventAddress)) {
                      echo '<li><i class="fa fa-map-marker"></i> '.$eventAddress.'</li>'; }
					  if(!empty($eventContact)) {
                      echo '<li><i class="fa fa-phone"></i> '.$eventContact.'</li>'; }
                    echo '</ul>
                </div>
              </div>
            </li>';
    $nos_event++; } ?>
            
        </ul>
</div>
    <?php get_footer(); ?>