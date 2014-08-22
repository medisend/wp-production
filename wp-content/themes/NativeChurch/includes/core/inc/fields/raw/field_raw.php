<?php
class IMIC_Framework_raw {
    /**
     * Field Constructor.
     *
     * Required - must call the parent constructor, then assign field and value to vars, and obviously call the render field function
    */
    function __construct($field = array(), $value ='', $parent) {
        $this->field = $field;
		$this->value = $value;
		$this->args = $parent->args;
    }
    /**
     * Field Render Function.
     *
     * Takes the vars and outputs the HTML for the field in the settings
    */
    function render() {
    
        echo '</td></tr></table><table class="form-table no-border imic-group-table" style="margin-top: 0;"><tbody><tr><td>';
        echo '<fieldset id="'.$this->args['opt_name'].'-'.$this->field['id'].'" class="imic-field imic-container-'.$this->field['type'].' '.$this->field['class'].'" data-id="'.$this->field['id'].'">';
        if ( !empty( $this->field['include'] ) && file_exists( $this->field['include'] ) ) {
            include( $this->field['include'] );
        }
        if ( !empty( $this->field['content'] ) && isset( $this->field['content'] ) ) {
            echo $this->field['content'];
        }
        do_action('imic-field-raw-'.$this->args['opt_name'].'-'.$this->field['id']);
        echo '</fieldset>';
        echo '</td></tr></table><table class="form-table no-border" style="margin-top: 0;"><tbody><tr><th></th><td>';        
    }
}
