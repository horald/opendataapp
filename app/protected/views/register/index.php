<?php
/* @var $this RegisterController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Registers',
);

$this->menu=array(
	array('label'=>'Create register', 'url'=>array('create')),
	array('label'=>'Manage register', 'url'=>array('admin')),
);
?>

<h1>Registers</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
