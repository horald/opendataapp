<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez',
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Zeitraum',
                             'name' => 'zeitraum',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldzeitraum' ),                                                  
                     array ( 'label' => 'Korrektur',
                             'name' => 'korrektur',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldkorrektur' ),                                                  
                     array ( 'label' => 'Status',
                             'name' => 'status',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldstatus' ),                                                  
                     array ( 'label' => 'Kategorie',
                             'name' => 'kategorie',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldcategory' ),                                                 
                     array ( 'label' => 'aktiv',
                             'name' => 'aktiv',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldaktiv' ),                                                 
                     array ( 'label' => 'Datum',
                             'name' => 'datum',
                             'width' => 10, 
                             'type' => 'date',
                             'dbfield' => 'flddatum' ));                                                 

$pararray = array ( 'headline' => 'Dauerauftrag',
                    'dbtable' => 'tblerl_dauer',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>