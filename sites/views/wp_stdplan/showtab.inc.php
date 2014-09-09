<?php
$listarray = array ( array ( 'label' => 'Nr',
                             'name' => 'nummer',
                             'width' => 20, 
                             'type' => 'text',
                             'dbfield' => 'fldnr' ),
                     array ( 'label' => 'Zeit',
                             'name' => 'zeit',
                             'width' => 20, 
                             'type' => 'selectid',
                             'dbtable' => 'tblstdzeit',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_std' ),
                     array ( 'label' => 'Wotag',
                             'name' => 'wotag',
                             'width' => 20, 
                             'type' => 'selectid',
                             'dbtable' => 'tblstdwotag',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_wotag' ),
                     array ( 'label' => 'Benutzer',
                             'name' => 'benutzer',
                             'width' => 20, 
                             'type' => 'selectid',
                             'dbtable' => 'tblbenutzer',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_user' ),
                     array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ));

$filterarray = array ( array ( 'label' => 'Benutzer',
                             'name' => 'fuer', 
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblbenutzer',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_user' ));

$pararray = array ( 'headline' => 'Stundenplan',
                    'dbtable' => 'tblstdplan',
                    'orderby' => 'fldnr',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>