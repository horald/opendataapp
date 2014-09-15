<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'X-Koor',
                             'name' => 'xkoor', 
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldxkoor' ),
                     array ( 'label' => 'Y-Koor',
                             'name' => 'ykoor', 
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldykoor' ),
                     array ( 'label' => 'Aktiv',
                             'name' => 'aktiv', 
                             'width' => 5, 
                             'type' => 'YN',
                             'dbfield' => 'fldaktiv' ));


$pararray = array ( 'headline' => 'Orte',
                    'dbtable'  => 'tblorte',
                    'orderby'  => 'fldbez',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>