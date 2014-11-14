<?php
/* @var $this RegisterController */
/* @var $data register */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('fldindex')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->fldindex), array('view', 'id'=>$data->fldindex)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fldusername')); ?>:</b>
	<?php echo CHtml::encode($data->fldusername); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fldpassword')); ?>:</b>
	<?php echo CHtml::encode($data->fldpassword); ?>
	<br />


</div>