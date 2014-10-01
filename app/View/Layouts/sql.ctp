<?php
	$nowDate = getdate();
	$year = $nowDate['year'];
	$month = sprintf("%02d",$nowDate['mon']);
	$day = sprintf("%02d",$nowDate['mday']);	
    header ("Expires: 0");
	header ("Last-Modified: " . gmdate("D,d M YH:i:s") . " GMT");
	header ("Cache-Control: no-cache, must-revalidate, post-check=0, pre-check=0");
	header ("Pragma: no-cache");
	header ("Content-Type: application/octet-stream; charset=UTF-8");
	header ("Content-Disposition: attachment; filename=\"db-backup-".$day."-".$month."-".$year.".sql" );
	header ("Content-Description: Generated Report" );
	echo $content_for_layout;
?>