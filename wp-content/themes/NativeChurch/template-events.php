<?php
/*
  Template Name: Events List
 */
get_header();
?>
<div class="container">
      <div class="row">
        <div class="col-md-9" id="ajax_events"> 
        	<!-- Events Listing -->
            <div class="listing events-listing">
            <header class="listing-header">
            	<div class="row">
                	<div class="col-md-6 col-sm-6">
          				<h3><?php _e('All events', 'framework'); ?></h3>
                  </div>
                  <div class="listing-header-sub col-md-6 col-sm-6">
                    <?php 
						$currentEventTime = (!empty($_GET['eventtime']))? $_GET['eventtime'] : date('Y-m');
						$prev_month = date('Y-m', strtotime('-1 month', strtotime($currentEventTime)));
						$next_month = date('Y-m', strtotime('+1 month', strtotime($currentEventTime)));
					?>
                  	<h5><?php _e(date('F', strtotime($currentEventTime)),'framework'); ?></h5>
                    	<nav class="next-prev-nav">
                    		<a href="javascript:" class="upcomingEvents" id="<?php echo $prev_month; ?>"><i class="fa fa-angle-left"></i></a>
                    		<a href="javascript:" class="upcomingEvents" id="<?php echo $next_month; ?>"><i class="fa fa-angle-right"></i></a>
                     	</nav>
                  </div>
              </div>
            </header>
            <section class="listing-cont">
              <ul>
              	<?php
				  $temp_wp_query = clone $wp_query;
				  $today = date('Y-m-d');				  
				  $before_week = date('Y-m-d', strtotime("-7 days"));
				  $currentTime = date('h:i A');
				  query_posts(array(
								'post_type' => 'event',
								'meta_key' => 'imic_event_start_dt',
								'meta_query' => array(
										'relation' => 'AND',
										array(
											'key' => 'imic_event_frequency_end',
											'value' => $today,
											'compare' => '>='
										),
										array(
											'key' => 'imic_event_start_dt',
											'value' => date('Y-m-t'),
											'compare' => '<='
										)
								),
								'orderby' => 'meta_value',
								'order' => 'ASC',
								'posts_per_page' => -1
							)
				  ); $count = 0;
				  $events = array();
				  $sinc = 1;
				  if(have_posts()){ 
					while (have_posts()):the_post();
					$custom_event = get_post_custom(get_the_ID()); 
					$frequency = get_post_meta(get_the_ID(),'imic_event_frequency',true);
					$frequency_count = '';
					$frequency_count = get_post_meta(get_the_ID(),'imic_event_frequency_count',true);
					if($frequency>0) { $frequency_count = $frequency_count; } else { $frequency_count = 0; }
					$seconds = $frequency*86400;
					$eve_time = get_post_meta(get_the_ID(),'imic_event_start_tm',true);
					$eve_time = strtotime($eve_time);
					if($eve_time!='') { $eve_time = date('h:i A',$eve_time); }
					$rec = 0;
					while($rec<=$frequency_count) {
					$eventStartDate = strtotime($custom_event['imic_event_start_dt'][0]);
					if($frequency==30) {
					$eventStartDate = strtotime("+".$rec." month", $eventStartDate);
					}
					else {
					$sv = $rec*$seconds;
					$eventStartDate = $eventStartDate+$sv;
					}
					$sd = date('Y-m-d',$eventStartDate);
					$sndate = $sd.' '.$eve_time;
					$sndate = strtotime($sndate);
					$sn = date('Y-m-t',strtotime($currentEventTime));
					if(($sndate > strtotime($currentTime)) && ($eventStartDate >= strtotime($today))&& ($eventStartDate <= strtotime(date('Y-m-t')))){
					$events[$eventStartDate+$sinc] = get_the_ID();
					$sinc++;
					$count++;  }
					$rec++; } 
					endwhile;
				  }if($count==0){ ?>
					<li class="item event-item">	
                      <div class="event-detail">
                        <h4><?php _e('Sorry, there are no events for this month.','framework'); ?></h4>
                      </div>
                    </li>  
				<?php }
				  $wp_query = clone $temp_wp_query; 
				  ksort($events);
				  foreach($events as $key=>$value) {
                                      $daysTemp=imic_day_diff($value);
				  $eventStartTime = get_post_meta($value,'imic_event_start_tm',true); 
				  $eventStartTime = strtotime($eventStartTime);
				  if($eventStartTime!='') { $eventStartTime = date('h:i A',$eventStartTime); }
				  $icon = ' <i class="fa fa-refresh" style="font-size:80%" title="Recurring"></i>';
				  $recurrence = get_post_meta($value,'imic_event_frequency',true);
				  if($recurrence>0) { $icon = $icon; } else { $icon = ''; } ?>
				  <li id="<?php echo date('y-n-d',$key); ?>" class="item event-item event-id">	
                      <div class="event-date"> <span class="date"><?php echo date('d',$key); ?></span> <span class="month"><?php _e(date('M',$key),'framework'); ?></span> </div>
                      <div class="event-detail">
                          <?php
                          if($daysTemp>0){
                                      $end_date = strtotime("+".$daysTemp." day", $key);
                                      $e_day_name=__(date('l',$end_date),'framework');
                                      $e_date= __(date('jS ',$end_date),'framework').__(date('F',$end_date),'framework').__(date(', Y',$end_date),'framework');
                                  }
                                  else{
                                      $e_date ='';
                                      $e_day_name ='';
                                  }
                          echo'<span class ="s_date" id ="'.__(date('jS ',$key),'framework').__(date('F',$key),'framework').__(date(', Y',$key),'framework').'"></span><span class ="s_day_name" id="'. __(date('l',$key),'framework').'"></span><span class ="e_day_name" id ="'.$e_day_name.'"></span><span class ="e_date" id="'.$e_date.'"></span>'; ?>
                        <h4><a href="<?php echo get_permalink($value); ?>"><?php echo get_the_title($value).' '; echo $icon; ?></a></h4>
                        <?php $stime = ''; if($eventStartTime!='') { $stime = ' | '.$eventStartTime; } ?>
                        <span class="event-dayntime meta-data"><?php _e(date('l',$key),'framework'); echo $stime; ?></span> </div>
                      <div class="to-event-url">
                        <div><a href="<?php echo get_permalink($value); ?>" class="btn btn-default btn-sm"><?php _e('Details','framework'); ?></a></div>
                      </div>
                    </li> 
               	<?php } ?>
              </ul>
            </section>
          </div>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
            <?php imic_default_sidebar();?> 
        </div>
        <!-- End Sidebar -->
      </div>
    </div>    
<?php get_footer(); ?>