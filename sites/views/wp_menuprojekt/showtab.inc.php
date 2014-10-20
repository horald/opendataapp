<?php

$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Aktiv',
                             'name' => 'aktiv',
                             'width' => 10, 
                             'type' => 'YN',
                             'dbfield' => 'fldaktiv' ));


$pararray = array ( 'headline' => 'Men&uuml-Projekte',
                    'name' => 'MENUPROJECTE',
                    'dbtable' => 'tblmenu_projekt',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');

?>