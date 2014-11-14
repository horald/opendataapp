<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>
<div class="containerxx" id="pagexx">
	<div id="header">
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
	</div><!-- header -->

	<div>
	<table>
	<tr>
	<td width='80'>
	<div id="mainmenuxx">
	<?php 
include("pagemenu.php");
echo "<legend>Navigation</legend>";
$vaterid='0';
pagemenu($vaterid);
if (Yii::app()->user->isGuest) {
  echo "<ul class='nav nav-pills nav-stacked'>";
  echo "<li>";
  echo CHtml::link('Login', array('site/login')); 
  echo "</li>";
  echo "<ul>";
}
if (!Yii::app()->user->isGuest) {
  echo "<ul class='nav nav-pills nav-stacked'>";
  echo "<li>";
  echo CHtml::link('Register', array('/register')); 
  echo "</li>";
  echo "<li>";
  echo CHtml::link('Logout ('.Yii::app()->user->name.')', array('site/logout')); 
  echo "</li>";
  echo "<ul>";
}

/*
 $this->widget('bootstrap.widgets.TbMenu', array(
    'type'=>'pills', // '', 'tabs', 'pills' (or 'list')
    'stacked'=>true, // whether this is a stacked menu
    'items'=>array(
        array('label'=>'Home', 'url'=>array('/site/index')),
        array('label'=>'Schulen1', 'url'=>array('site/page', 'view'=>'iframe', 'page'=>'http://localhost/own/opendataapp/classes/showtab.php?menu=schulen'),
           'items'=>array(
              array('label'=>'Schultyp','url'=>'#')) 
        ),
        array('label'=>'Schulmap', 'url'=>array('site/page', 'view'=>'iframe', 'page'=>'http://localhost/own/opendataapp/classes/googlemap.php')),
//        array('label'=>'About', 'url'=>array('site/page', 'view'=>'about'),
		
//          'items'=>array(
//                array('label'=>'Action', 'url'=>'#'),
//                array('label'=>'Another action', 'url'=>array('site/page', 'view'=>'about')),
//                array('label'=>'Something else here', 'url'=>'#'))),	
		
//        array('label'=>'Contact', 'url'=>array('/site/contact')),
    	array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('site/logout'), 'visible'=>!Yii::app()->user->isGuest),
	array('label'=>'admin', 'url'=>array('/site/admin'), 'visible'=>!Yii::app()->user->isGuest)
    ),
));
*/ 

/*		
        $this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Home', 'url'=>array('/site/index')),
				array('label'=>'About', 'url'=>array('/site/about')),
				array('label'=>'Contact', 'url'=>array('/site/contact')),
				array('label'=>'Login', 'url'=>array('site/login'), 'visible'=>Yii::app()->user->isGuest),
				array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('site/logout'), 'visible'=>!Yii::app()->user->isGuest),
				array('label'=>'admin', 'url'=>array('/admin'), 'visible'=>!Yii::app()->user->isGuest)
			),
		)); 
*/
		
		?>
	</div><!-- mainmenu -->
	
	</td>
	<td>
	
	<?php echo $content; ?>
	
	</td>
	</tr>
	</table>
	</div>
	
	<div id="footer">
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
