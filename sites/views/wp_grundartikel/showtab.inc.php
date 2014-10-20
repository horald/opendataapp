<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Bezeichnung (Mehrzahl)',
                             'name' => 'bezmz', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbezmz' ));

$pararray = array ( 'headline' => 'Grundartikel',
                    'dbtable' => 'tblgrundartikel',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>