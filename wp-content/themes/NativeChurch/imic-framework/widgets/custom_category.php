<?php
/*** Widget code for Selected Post ***/
class custom_category extends WP_Widget {
	// constructor
	function custom_category() {
		 $widget_ops = array('description' => __( "Display latest and selected post categories of different post type.", 'custom_category') );
         parent::WP_Widget(false, $name = 'Custom Categories', $widget_ops);
	}
	// widget form creation
	function form($instance) {
	
		// Check values
		if( $instance) {
			 $title = esc_attr($instance['title']);
			 $type = esc_attr($instance['type']);
		} else {
			 $title = '';
			 $type = '';
		}
	?>
        <p>
            <label for="<?php echo $this->get_field_id('title'); ?>"><?php _e('Title', 'custom_category'); ?></label>
            <input class="spTitle" id="<?php echo $this->get_field_id('title'); ?>" name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>" />
        </p><p>
            <label for="<?php echo $this->get_field_id('type'); ?>"><?php _e('Select Post Type', 'custom_category'); ?></label>
            <select class="spType" id="<?php echo $this->get_field_id('type'); ?>" name="<?php echo $this->get_field_name('type'); ?>">
                <?php
                $post_types = get_post_types( array('_builtin' => false), 'names' ); 
				if(($key = array_search('staff', $post_types)) !== false){
					unset($post_types[$key]);
				}
				if(($key = array_search('gallery', $post_types)) !== false){
					unset($post_types[$key]);
				}
                if(!empty($post_types)){
                    foreach ( $post_types as $post_type ) {
						$activePost = ($type == $post_type)? 'selected' : '';
                        echo '<option value="'. $post_type .'" '.$activePost.'>' . $post_type . '</p>';
                    }
                }else{
                    echo '<option value="no">No Post Type Found.</option>';
                }
                ?>
            </select> 
        </p> 
	<?php
	}
         // update widget
	function update($new_instance, $old_instance) {
		  $instance = $old_instance;
		  // Fields
		  $instance['title'] = strip_tags($new_instance['title']);
		  $instance['type'] = strip_tags($new_instance['type']);
		  return $instance;
	}
         // display widget
	function widget($args, $instance) {
	   extract( $args );
	   // these are the widget options
	   $post_title = apply_filters('widget_title', $instance['title']);
	   $type = apply_filters('widget_type', $instance['type']);
	   
	   $numberPost = (!empty($number))? $number : 3 ;	
	   echo $args['before_widget'];
		if( !empty($instance['title']) ){
			echo $args['before_title'];
			echo apply_filters('widget_title',$instance['title'], $instance, $this->id_base);
			echo $args['after_title'];
		}
		$post_terms = get_terms($type.'-category');
		echo '<ul>';
		foreach ($post_terms as $term) {
			$term_name = $term->name;
			$term_link = get_term_link($term,$type.'-category');
			$count = $term->count;
			if($type == 'event') {
			global $post;
			$argss = array( 'post_type' => 'event', 'event-category'=>$term->slug,'posts_per_page'=>-1);
			$events_count = get_posts( $argss );
			foreach($events_count as $post) {
				setup_postdata( $post );
				$frequency = get_post_meta(get_the_ID(),'imic_event_frequency',true);
				$frequency_count = get_post_meta(get_the_ID(),'imic_event_frequency_count',true);
				if($frequency>0) {
					$count = $count+$frequency_count;
				}
			}
			wp_reset_postdata();
			}
			echo '<li><a href="' . $term_link . '">' . $term_name . '</a> (' . $count . ')</li>';
		}
		echo '</ul>';
                echo $args['after_widget'];
	}
}
// register widget
add_action('widgets_init', create_function('', 'return register_widget("custom_category");'));
?>