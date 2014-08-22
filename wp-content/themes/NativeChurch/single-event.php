<?php get_header();  ?>
<div <?php post_class('container'); ?> id="post-<?php the_ID(); ?>">
      <div class="row">
        <div class="col-md-9"> 
        <?php if(have_posts()):
                while (have_posts()):the_post(); 
                    $eventStartDate = strtotime(get_post_meta(get_the_ID(),'imic_event_start_dt',true));
                    $eventEndDate = strtotime(get_post_meta(get_the_ID(),'imic_event_end_dt',true));
                    $eventStartTime = get_post_meta(get_the_ID(),'imic_event_start_tm',true);
					$eventStartTime = strtotime($eventStartTime);
					if($eventStartTime!='') { $eventStartTime = date('h:i A',$eventStartTime); }
                    $eventEndTime = get_post_meta(get_the_ID(),'imic_event_end_tm',true);
					$eventEndTime = strtotime($eventEndTime);
					if($eventEndTime!=''||$eventEndTime!='time') { $eventEndTime = date('h:i A',$eventEndTime); }
					$stime =''; $etime = '';
					if($eventStartTime!=''||$eventEndTime!='time') { $stime = $eventStartTime; }
					if($eventEndTime!='') { $etime = ' - '.$eventEndTime; }
                    /** Event Details Manage **/
                                        
                            $date ='';           
                    if(!empty($eventStartDate)&&!empty($eventEndDate) && $eventStartDate!==$eventEndDate){
                          $date = '<strong>'.__(date('l',$eventStartDate),'framework').'</strong> | '.__(date('jS ',$eventStartDate),'framework').__(date('F',$eventStartDate),'framework').__(date(', Y',$eventStartDate),'framework').__(' to','framework').' <strong>'.__(date('l',$eventEndDate),'framework').'</strong> | '.__(date(' jS ',$eventEndDate),'framework').__(date('F',$eventEndDate),'framework').date(', Y',$eventEndDate);
                    }else{
                      if(!empty($eventStartDate)){
                            $date = '<strong>'.date('l',$eventStartDate).'</strong> | '.date('jS F, Y',$eventStartDate);
                      }
                      }
                    $eventDetailIcons = array('fa-calendar', 'fa-clock-o', 'fa-map-marker', 'fa-phone');
                    $eventDetailsData = array($date, $stime . $etime, get_post_meta(get_the_ID(),'imic_event_address',true), get_post_meta(get_the_ID(),'imic_event_contact',true));
                    $eventValues = array_filter($eventDetailsData, 'strlen');
                    /** Event Persons Manage **/
                    $eventPersonDetails = array('Attendees', 'Staff members');
                    $eventPersonData = array(get_post_meta(get_the_ID(),'imic_event_attendees',true), get_post_meta(get_the_ID(),'imic_event_staff_members',true));
                    $eventPersonValues = array_filter($eventPersonData, 'strlen');
		?>
            	<header class="single-post-header clearfix">
                  <nav class="btn-toolbar pull-right">
                  	<a href="javascript:" onclick="window.print();" class="btn btn-default" data-placement="bottom" data-toggle="tooltip" data-original-title="Print" rel="tooltip"><i class="fa fa-print"></i></a>
                  	<a href="mailto:<?php echo get_bloginfo( 'admin_email' ); ?>" class="btn btn-default" data-placement="bottom" data-toggle="tooltip" data-original-title="Contact us" rel="tooltip"><i class="fa fa-envelope"></i></a>
                    <a href="http://maps.google.com/?q=<?php echo get_post_meta(get_the_ID(),'imic_event_address',true); ?>" class="btn btn-default" data-placement="bottom" data-toggle="tooltip" data-original-title="Event Address" rel="tooltip" target="_blank"><i class="fa fa-map-marker"></i></a>
                  </nav>
          	  <h2 class="post-title"><?php the_title(); ?></h2>
              	</header>
                <article class="post-content">
                      <div class="event-description">
                      	<?php if ( has_post_thumbnail()) :
                                    the_post_thumbnail('full', array('class' => "img-responsive"));
                             endif; ?>
                          <div class="spacer-20"></div>
                          <div class="row">
                            <div class="col-md-8">
                            	<?php if(!empty($eventValues)){ ?>
                                <div class="panel panel-default">
                                  <div class="panel-heading">
                                    <h3 class="panel-title"><?php _e('Event details','framework'); ?></h3>
                                  </div>
                                  <div class="panel-body">
                                      <ul class="info-table">
                                      <?php	
                                      $index = 0;
                                      foreach($eventDetailsData as $edata){
                                            if(!empty($edata)){
                                                    echo '<li class="event-custom"><i class="fa '.$eventDetailIcons[$index].'"></i> '.$edata.'</li>';
                                            }				
                                            $index++;	
                                      } ?>
                                      </ul>
                                  </div>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="col-md-4">
                            <?php if(!empty($eventPersonValues)){ 
                                	echo '<ul class="list-group">';
					$flag = 0;
                                    foreach($eventPersonData as $epdata){
                                        if(!empty($epdata)){
                                             echo '<li class="list-group-item"><span class="badge">'.$epdata.'</span>'.$eventPersonDetails[$flag].'</li>';
                                        }				
                                        $flag++;	
                                    }
                                    echo '</ul>';
                                 } ?>
                            </div>
                            </div>
                          <?php the_content(); ?>
                      </div>
                  </article>
          <?php endwhile;
	endif; ?>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar"> 
          <?php imic_default_sidebar(); ?>	
        </div>
      </div>
    </div>
<?php get_footer(); ?>