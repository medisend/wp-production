<?php
// - standalone json feed -
header('Content-Type:application/json');
// - grab wp load, wherever it's hiding -
include "../../../../wp-config.php";
include '../../../../wp-load.php';
include_once('../../../../wp-includes/wp-db.php');
// - grab date barrier -
//$today6am = strtotime('today 6:00') + ( get_option( 'gmt_offset' ) * 3600 );
$today = date('Y-m-d');
// - query -
global $wpdb;
$querystr = "
    SELECT *
    FROM $wpdb->posts wposts, $wpdb->postmeta metastart, $wpdb->postmeta metaend
    WHERE (wposts.ID = metastart.post_id AND wposts.ID = metaend.post_id)
    AND (metaend.meta_key = 'imic_event_end_dt' AND metaend.meta_value > $today )
    AND metastart.meta_key = 'imic_event_end_dt'
    AND wposts.post_type = 'event'
    AND wposts.post_status = 'publish'
    ORDER BY metastart.meta_value ASC LIMIT 500
 ";
$events = $wpdb->get_results($querystr, OBJECT);
$jsonevents = array();
// - loop -
if ($events):
    global $post;
    foreach ($events as $post):
        setup_postdata($post);
		$frequency = get_post_meta(get_the_ID(),'imic_event_frequency',true);
		$frequency_count = '';
			$frequency_count = get_post_meta(get_the_ID(),'imic_event_frequency_count',true);
			if($frequency>0) { $frequency_count = $frequency_count; } else { $frequency_count = 0; }
$rec = 0;
$seconds = $frequency*86400;
while($rec<=$frequency_count) {
	
	$sv = $rec*$seconds;
        $sd=$ed=$stime=$etime=$gmte=$gmts='';
// - custom post type variables -
        $event_s_tm = get_post_meta(get_the_ID(),'imic_event_start_tm','true');
		$event_s_tm = strtotime($event_s_tm);
		if($event_s_tm!='') { $event_s_tm = date('h:i A',$event_s_tm); }
        $event_e_tm = get_post_meta(get_the_ID(),'imic_event_end_tm','true');
		$event_e_tm = strtotime($event_e_tm);
		if($event_e_tm!='') { $event_e_tm = date('h:i A',$event_e_tm); }
        $event_s_dt = get_post_meta(get_the_ID(),'imic_event_start_dt','true');
        $event_e_dt = get_post_meta(get_the_ID(),'imic_event_end_dt','true');
		if($event_e_dt=='') { $event_e_dt = $event_s_dt; }
        if(($event_s_tm == '') && ($event_e_tm == '')) {
            $sd = strtotime($event_s_dt);
			if($frequency==30) { $sd = strtotime("+".$rec." month", $sd); } else { $sd = $sd+$sv; }
            $ed = strtotime($event_e_dt);
			if($frequency==30) { $ed = strtotime("+".$rec." month", $ed); } else { $ed = $ed+$sv; }
            $stime = gmdate('Y-m-d H:i:s',$sd+60*60*9);
            $etime = gmdate('Y-m-d H:i:s', $ed +60*60*9);
           } else if (($event_s_tm == '') && ($event_e_tm != '')) {
             $sd = strtotime($event_s_dt);
			 if($frequency==30) { $sd = strtotime("+".$rec." month", $sd); } else { $sd = $sd+$sv; }
             $ed = strtotime($event_e_dt.' '.$event_e_tm);
			 if($frequency==30) { $ed = strtotime("+".$rec." month", $ed); } else { $ed = $ed+$sv; }
             $gmte = date('Y-m-d H:i:s', $ed);
			 $gmte = strtotime($gmte);
             $stime = gmdate('Y-m-d H:i:s',$sd+60*60*9);
             $etime = date('c', $gmte);  
             } else if (($event_s_tm != '') && ($event_e_tm == '')) {
            $sd = strtotime($event_s_dt.' '.$event_s_tm);
			if($frequency==30) { $sd = strtotime("+".$rec." month", $sd); } else { $sd = $sd+$sv; }
            $ed = strtotime($event_e_dt);
			if($frequency==30) { $ed = strtotime("+".$rec." month", $ed); } else { $ed = $ed+$sv; }
            $gmts = date('Y-m-d H:i:s', $sd);
			$gmts = strtotime($gmts);
           // - set to ISO 8601 date format -
            $stime = date('c', $gmts);
            $etime = gmdate('Y-m-d H:i:s', $ed + 60*60*9);
            } else {
            $sd = strtotime($event_s_dt.' '.$event_s_tm);
			if($frequency==30) { $sd = strtotime("+".$rec." month", $sd); } else { $sd = $sd+$sv; }
            $ed = strtotime($event_e_dt.' '.$event_e_tm);
			if($frequency==30) { $ed = strtotime("+".$rec." month", $ed); } else { $ed = $ed+$sv; }
            $gmts = date('Y-m-d H:i:s', $sd);
            $gmte = date('Y-m-d H:i:s', $ed);
            $gmts = strtotime($gmts);
            $gmte = strtotime($gmte);
            $stime = date('c', $gmts);
            $etime = date('c', $gmte);
        }
// - json items -
        $jsonevents[] = array(
            'title' => $post->post_title,
            'allDay' => false, // <- true by default with FullCalendar
            'start' => $stime,
            'end' => $etime,
            'url' => get_permalink($post->ID)
        );
$rec++; }
endforeach;
else :
endif;
// - fire away -
echo json_encode($jsonevents);
?>