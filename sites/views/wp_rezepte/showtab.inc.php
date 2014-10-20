<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 100, 
                             'type' => 'text',
                             'chklink' => 'true',
                             'fldlink' => 'fldfilename',
                             'dbfield' => 'fldBez' ),
                     array ( 'label' => 'Link',
                             'name' => 'link',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldfilename' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'pdffunc.php',
                             'dbfield' => 'icon-file' ) );

$pararray = array ( 'headline' => 'Rezepte ',
                    'dbtable' => 'tblrezepte',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldIndex');
?>