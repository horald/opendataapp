<?php
$listarray = array ( array ( 'label' => 'Table',
                             'name' => 'table', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'flddbtable' ),
                     array ( 'label' => 'Spalte',
                             'name' => 'spalte', 
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldspalte' ),
                     array ( 'label' => 'Feld',
                             'name' => 'feld', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldfieldname' ),
                     array ( 'label' => 'UTF8',
                             'name' => 'utf8', 
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldutf8' ));

$pararray = array ( 'headline' => 'Import',
                    'dbtable' => 'tblimport',
                    'orderby' => 'fldspalte',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>