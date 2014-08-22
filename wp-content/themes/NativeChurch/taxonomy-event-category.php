<?php get_header(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-9 posts-archive">
            <?php
			$event_add = array();
			$rec = 1;
			$no_event = 0;
            if (have_posts()) :
                while (have_posts()):the_post();
                    $frequency = get_post_meta(get_the_ID(), 'imic_event_frequency', true);
                    $frequency_count = 0;
                    $frequency_count = get_post_meta(get_the_ID(), 'imic_event_frequency_count', true);
                    if ($frequency_count > 0) {
                        $frequency_count = $frequency_count;
                    }
					else {
						$frequency_count = 0;
					}
                    $date_diff = $frequency * 86400;
                    $sinc = 0;
                    while ($sinc <= $frequency_count) {
                        $diff_date = $sinc * $date_diff;
                        $st_date = get_post_meta(get_the_ID(), 'imic_event_start_dt', true);
                        $icon = '';
                        if ($frequency > 0) {
                            $icon = ' <i class="fa fa-refresh" title="Recurring"></i>';
                        }
                        if($frequency==30) {
						$st_date = strtotime($st_date);
						$diff_date = strtotime("+".$sinc." month", $st_date);
						}
						else {
                        $st_date = strtotime($st_date);
                        $diff_date = $st_date + $diff_date;
						}
						if($diff_date>=date('U')) {
						$event_add[$diff_date + $rec] = get_the_ID();
						$no_event++;
						}
						$sinc++; $rec++; }
						endwhile;
						endif;
            if($no_event==0):
                echo '<article class="post">';
                if (current_user_can('edit_posts')) :
                    ?>
                    <h3><?php _e('There are no future events to show.', 'framework'); ?></h3>
                    <?php
                    echo '</article>';
                endif;
                ?>
<?php
endif; // end have_posts()
ksort($event_add);
    foreach ($event_add as $key => $value) {
		$frequency = get_post_meta($value,'imic_event_frequency',true); 
	if ($frequency > 0) { $icon = ' <i class="fa fa-refresh" title="Recurring"></i>'; }
                        $daysTemp=imic_day_diff($value);
						$st_date_temp = $key;
                        if($daysTemp>0){
                                      
                                      $end_date = strtotime("+".$daysTemp." day", $st_date_temp);
                                      $e_day_name=__(date('l',$end_date),'framework');
                                      $e_date= __(date('jS ',$end_date),'framework').__(date('F',$end_date),'framework').__(date(', Y',$end_date),'framework');
                                     
                                  }
                                  else{
                                      $e_day_name= '';
                                      $e_date= '';
                                     }
									 $event_Temp ='<span class ="s_date" id ="'.__(date('jS ',$st_date_temp),'framework').__(date('F',$st_date_temp),'framework').__(date(', Y',$st_date_temp),'framework').'"></span><span class ="s_day_name" id="'. __(date('l',$st_date_temp),'framework').'"></span><span class ="e_day_name" id ="'.$e_day_name.'"></span><span class ="e_date" id="'.$e_date.'"></span>';
                        
                        if ('' != get_the_post_thumbnail($value)) {
                            $class = "col-md-8 col-sm-8";
                        } else {
                            $class = "col-md-12 col-sm-12";
                        }
                        echo'<article class="post taxonomy-event">
                            <div class="row">';
                              echo $event_Temp;
                        if (has_post_thumbnail()):
                            echo '<div class="col-md-4 col-sm-4">
                    	<a href="' . get_permalink($value) . '">';
                            echo get_the_post_thumbnail($value, 'full', array('class' => "img-thumbnail"));
                            echo'</a></div>';
                        endif;
                        echo '<div class="' . $class . '">';
                        echo '<h3><a href="' . get_permalink($value) . '">' . get_the_title($value) . $icon . '</a></h3>';
                        echo '<span class="post-meta meta-data">
                    		<span><i class="fa fa-calendar"></i>' . __(date('F', $key), 'framework') .__(date(' j', $key), 'framework') .__(date(', Y', $key), 'framework') . '</span><span><i class="fa fa-archive"></i>' . imic_custom_taxonomies_terms_links() . '</span> <span>';
                        comments_popup_link('<i class="fa fa-comment"></i>' . __('No comments yet', 'framework'), '<i class="fa fa-comment"></i>1', '<i class="fa fa-comment"></i>%', 'comments-link', __('Comments are off for this post', 'framework'));
                        echo'</span></span>';
                        echo imic_excerpt(50);
                        echo '<p><a href="' . get_permalink($value) . '" class="btn btn-primary">' . __('Continue reading', 'framework') . '<i class="fa fa-long-arrow-right"></i></a></p>';
                        echo '</div></div>';
                        echo '</article>';
	}
pagination();
?>
        </div>
        <!-- Start Sidebar -->
        <div class="col-md-3 sidebar">
<?php imic_default_sidebar(); ?>
        </div>
        <!-- End Sidebar -->
    </div>
</div>
<?php get_footer(); ?>