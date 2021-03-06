<?php	
	$this->Get->create($data);
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<?php echo $this->Html->charset(); ?>
		<title>
			<?php echo $title_for_layout; ?>
		</title>
		<?php
			echo $this->Html->meta('rss' , '/entries/index.rss');
		?>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="<?php echo $mySetting['title']; ?>">		
		<meta name="keywords" content="<?php echo $mySetting['tagline']; ?>">		
		<meta name="description" content="<?php echo $mySetting['description']; ?>">
		<?php
            // ----------------- Open Graph protocol ---------------------
            echo '<meta property="og:url" content="http://'.$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'].'" />';
            echo '<meta property="og:site_name" content="'.$mySetting['title'].'" />';
        
            if(!empty($data['myEntry']))
            {
            	if(!empty($data['myEntry']['Entry']['title']))
	            {
	                echo '<meta property="og:title" content="'.$data['myEntry']['Entry']['title'].'" />';
	            }
	            
	            if(!empty($data['myEntry']['EntryMeta']['teaser']))
	            {
	                echo '<meta property="og:description" content="'.strip_tags($data['myEntry']['EntryMeta']['teaser']).'" />';
	            }
	            else if(!empty($data['myEntry']['Entry']['description']))
	            {
	                echo '<meta property="og:description" content="'.strip_tags($data['myEntry']['Entry']['description']).'" />';
	            }
	            
	            if(!empty($data['myEntry']['Entry']['main_image']))
	            {
	                echo '<meta property="og:image" content="'.$this->Get->host_name().'img/upload/'.$data['myEntry']['Entry']['main_image'].'.'.$data['myImageTypeList'][$data['myEntry']['Entry']['main_image']].'" />';
	            }
            }
        ?>
<!-- 		FAVICON IMAGE -->		
		<link rel="shortcut icon" href="<?php echo $imagePath."images/favicon.ico"; ?>" type="image/x-icon" />

<!-- 		SITE & LINKPATH SETTING FOR GLOBAL JAVASCRIPT -->
		<script type="text/javascript">
			var site = '<?php echo $site; ?>';
		  	var linkpath = '<?php echo $imagePath; ?>';
		</script>
		
		<?php
			// ================================================== >>>
			// load our CSS script...
			// ================================================== >>>
			echo $this->Html->css('bootstrap-3');

			echo $this->Html->css('smoothness/jquery-ui-1.8.18.custom');
			echo $this->Html->css('colorbox');
        
            // WOW.js => Reveal Animations When You Scroll. Very Animate.css Friend :-)
            echo $this->Html->css('animate');
			
			// custom style !!
			echo $this->Html->css('style');
			echo $this->Html->css('loading');

			// ================================================== >>>
			// load our JS script...
			// ================================================== >>>
			echo $this->Html->script('jquery-1.11.0.min');

			echo $this->Html->script('jquery-ui-1.8.18.custom.min');
			echo $this->Html->script('jquery.fitvids'); // make video in ckeditor being responsive !!
			echo $this->Html->script('jquery-ui-timepicker-addon');

			echo $this->Html->script('jquery.imagesloaded');			
			echo $this->Html->script('jquery.colorbox');
			// use this script to make colorbox responsive !!
			echo $this->Html->script('colorbox_resize');

			// bootstrap script !!
			echo $this->Html->script('bootstrap.min-3');
			
			// ** Use this script to check browser support HTML-5 certain input types !!
			// ** See http://diveintohtml5.info/detect.html for more details !!
			// echo $this->Html->script('modernizr-2.6.1.min');
        
            // WOW.js => Reveal Animations When You Scroll. Very Animate.css Friend :-)
            echo $this->Html->script('wow.min');
			
	    	// custom javascript !!
	    	echo $this->Html->script('smooth_scrolling');
			echo $this->Html->script('admin');
			echo $this->Html->script('ajax');
			echo $scripts_for_layout;
			
	    	// GOOGLE ANALYTICS CODES
	    	if(!empty($mySetting['google_analytics_code']))
			{
				?>
				<script type="text/javascript">
				  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
				  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

				  ga('create', '<?php echo $mySetting['google_analytics_code']; ?>', 'auto');
				  ga('set', '&uid', '92919007'); // Set the user ID using signed-in user_id.
				  ga('send', 'pageview');
				</script>
				<?php
			}
			
			// Dynamic Website Header
			echo $mySetting['header'];
		?>
		<!--Start of Tawk.to Script-->
        <script type="text/javascript">
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/5889695b46ba805858272c8d/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
        })();
        </script>
        <!--End of Tawk.to Script-->
	</head>

	<body>
		<?php echo $mySetting['top_insert']; ?>		
		<?php echo $content_for_layout; ?>
		<!-- Footer -->
		<footer>
		    <div class="container" id="footer">
		        <div class="row">
		        	<div class="col-lg-2 col-lg-offset-1 col-md-3">
						<i class="fa fa-phone fa-fw"></i> <a href="tel:+<?php echo str_replace('-', '', get_slug($mySetting['custom-phone_contact']) ); ?>"><?php echo $mySetting['custom-phone_contact']; ?></a>
						<br>
						<i class="fa fa-whatsapp fa-fw"></i> <a href="tel:+<?php echo str_replace('-', '', get_slug($mySetting['custom-whatsapp_contact']) ); ?>"><?php echo $mySetting['custom-whatsapp_contact']; ?></a>
					</div>
					<div class="col-lg-3 col-md-3">
						<i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:<?php echo $mySetting['custom-email_contact']; ?>"><?php echo $mySetting['custom-email_contact']; ?></a>
					</div>
					<div class="col-lg-3 col-md-3 text-muted">
						Copyright &copy; Webomatics 2014
                        <br>
                        All Rights Reserved.
					</div>
					<div class="col-lg-3 col-md-3">
						<hr class="medium visible-sm visible-xs">
						<ul class="list-inline">
					        <li>
					            <a target="_blank" href="<?php echo $mySetting['custom-facebook_url']; ?>">
					                <i class="fa fa-facebook fa-fw fa-3x"></i>
					            </a>
					        </li>
					        <li>
					            <a target="_blank" href="<?php echo $mySetting['custom-twitter_url']; ?>">
					                <i class="fa fa-twitter fa-fw fa-3x"></i>
					            </a>
					        </li>
					        <li>
					            <a target="_blank" href="<?php echo $mySetting['custom-google_url']; ?>">
					                <i class="fa fa-google-plus fa-fw fa-3x"></i>
					            </a>
					        </li>
					    </ul>
					</div>
		        </div>
		    </div>
		</footer>
		<?php echo $mySetting['bottom_insert']; ?>
		
		<!-- ADDITIONAL SCRIPT FOR LAYOUT -->
		<script>
            // initialize WOW.js usage...
            new WOW().init();
            
			$(document).ready(function(){
				// Target your .container, .wrapper, .post, etc.
    			$("body").fitVids();
		  	});
		</script>
	</body>
</html>