<?php
/* @var $this RegisterController */
/* @var $model register */

$this->breadcrumbs=array(
	'Registers'=>array('index'),
	$model->fldindex,
);

$this->menu=array(
	array('label'=>'List register', 'url'=>array('index')),
	array('label'=>'Create register', 'url'=>array('create')),
	array('label'=>'Update register', 'url'=>array('update', 'id'=>$model->fldindex)),
	array('label'=>'Delete register', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->fldindex),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage register', 'url'=>array('admin')),
);
?>

<h1>View register #<?php echo $model->fldindex; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'fldindex',
		'fldusername',
		'fldpassword',
	),
)); ?>
