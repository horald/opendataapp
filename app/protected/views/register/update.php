<?php
/* @var $this RegisterController */
/* @var $model register */

$this->breadcrumbs=array(
	'Registers'=>array('index'),
	$model->fldindex=>array('view','id'=>$model->fldindex),
	'Update',
);

$this->menu=array(
	array('label'=>'List register', 'url'=>array('index')),
	array('label'=>'Create register', 'url'=>array('create')),
	array('label'=>'View register', 'url'=>array('view', 'id'=>$model->fldindex)),
	array('label'=>'Manage register', 'url'=>array('admin')),
);
?>

<h1>Update register <?php echo $model->fldindex; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>