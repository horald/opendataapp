<?php

$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez',
                             'width' => 500, 
                             'type' => 'text',
                             'linkfield' => 'fldlink',
                             'targetfield' => 'fldTarget',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Link',
                             'name' => 'link',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldlink' ),
                     array ( 'label' => 'Target',
                             'name' => 'target',
                             'fieldhide' => 'true',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldTarget' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'mplayer.php',
                             'dbfield' => 'icon-th' ));


$pararray = array ( 'headline' => 'Musik',
                    'dbtable' => 'tblmusic_liste',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');

?>