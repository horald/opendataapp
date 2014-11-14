<?php
/* @var $this RegisterController */
/* @var $model register */

$this->breadcrumbs=array(
	'Registers'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List register', 'url'=>array('index')),
	array('label'=>'Manage register', 'url'=>array('admin')),
);
?>

<h1>Create register</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>