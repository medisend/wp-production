<?php
/*
  Template Name: Events Grid
 */
get_header();
?>
    <div class="container">
      	<div class="row">
        <?php $temp_wp_query = clone $wp_query;
			$today = date('Y-m-d');
			$currentTime = date('h:i A');
			$paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
			query_posts(array(
					'post_type' => 'event',
					'meta_key' => 'imic_event_start_dt',
					'meta_query' => array(
										array(
											'key' => 'imic_event_start_dt',
											'value' => $today,
											'compare' => '>='
										)
								),
					'orderby' => 'meta_value',
					'order' => 'ASC',
					'paged' => $paged
				)
			  ); 
		if(have_posts()):
		?>	 
        <div class="col-md-12">
          <ul class="grid-holder col-3 events-grid">
          	<?php while (have_posts()):the_post();
			if (has_post_thumbnail()): 
			$custom_event = get_post_custom(get_the_ID());
			$eventStartDate = strtotime($custom_event['imic_event_start_dt'][0]);
			$eventStartTime = strtotime($custom_event['imic_event_start_tm'][0]);
			$eventEndTime = $custom_event['imic_event_end_tm'][0];
			/** Event Details Manage **/
			$eventDetailIcons = array('fa-calendar', 'fa-map-marker');
			$stime = ""; $etime = "";
			if($eventStartTime!='') { $stime = ' | ' . date('h:i A', $eventStartTime) ; }
			if($eventEndTime!='time') { $etime =  ' - '. $eventEndTime; }
			$eventDetailsData = array(__(date('l',$eventStartDate),'framework'). $stime .  $etime, get_post_meta(get_the_ID(),'imic_event_address',true));
			$eventValues = array_filter($eventDetailsData, 'strlen');
			if($eventStartTime > strtotime($currentTime) || $eventStartDate > strtotime($today)){
			?>
				<li class="grid-item format-standard"> 
                                    <?php 
                                    $daysTemp=imic_day_diff(get_the_ID());
                                    if($daysTemp>0){
                                      $end_date = strtotime("+".$daysTemp." day", $eventStartDate);
                                      $e_day_name=__(date('l',$end_date),'framework');
                                      $e_date= __(date('jS ',$end_date),'framework').__(date('F',$end_date),'framework').__(date(', Y',$end_date),'framework');
                                  }
                                  else{
                                      $e_date ='';
                                      $e_day_name ='';
                                  }
                          echo'<span class ="s_date" id ="'.__(date('jS ',$eventStartDate),'framework').__(date('F',$eventStartDate),'framework').__(date(', Y',$eventStartDate),'framework').'"></span><span class ="s_day_name" id="'. __(date('l',$eventStartDate),'framework').'"></span><span class ="e_day_name" id ="'.$e_day_name.'"></span><span class ="e_date" id="'.$e_date.'"></span>'; ?>
 
                    <div class="grid-item-inner">
                        <?php if ( has_post_thumbnail()) :
                                echo '<a href="'.get_permalink().'" class="media-box">';
                                the_post_thumbnail('full');
                                echo '</a>';
                         endif; ?>
                      <div class="grid-content">
                        <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
                        <?php echo imic_excerpt(25); ?></p>
                      </div>
                      <?php if(!empty($eventValues)){ 
                                echo '<ul class="info-table">';
                                $flag = 0;
                                foreach($eventDetailsData as $edata){
                                      if(!empty($edata)){
                                              echo '<li><i class="fa '.$eventDetailIcons[$flag].'"></i> '.$edata.' </li>';
                                      }				
                                      $flag++;	
                                }
                                echo '</ul>';
                        } ?>
                   </div>
                </li>
                <?php }
				endif;
                endwhile; ?>
            </ul>
	   <?php if ($wp_query->max_num_pages > 1) : ?>
                <ul class="pager pull-right">
                    <li><?php next_posts_link(__('&larr;Older','framework')); ?></li>
                    <li><?php previous_posts_link(__(' Newer &rarr;','framework')); ?></li>
                </ul>
           <?php  endif; ?>
      	</div>
        <?php  endif;
        $wp_query = clone $temp_wp_query; ?>
        </div>
    </div>
<?php get_footer(); ?>