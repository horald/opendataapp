<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ));


$pararray = array ( 'headline' => 'Stadtteil',
                    'dbtable'  => 'tblstadtteil',
                    'orderby'  => 'fldbez',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>