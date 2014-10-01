<?php
/**
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.view.templates.layouts.email.html
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
 
if(is_array($data)) extract($data , EXTR_SKIP); 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">

<html>
<head>
	<title><?php echo $title_for_layout;?></title>
</head>

<body>
	<div style="font-family: Garamond,serif; color: #000000; font-size: 16px;">
	<?php echo $content_for_layout;?>
	<?php if(!empty($mySetting['title'])): ?>
	<br/>
	<br/>
	<p>
		best regards,<br/>
		<strong><?php echo $mySetting['title']; ?></strong><br/>
		<span style="font-style: italic;"><?php echo $mySetting['description']; ?></span>
	</p>
	<?php endif; ?>
	</div>
</body>
</html>