<script src='https://www.google.com/recaptcha/api.js'></script>
<?php
    echo $this->Html->script('masonry.pkgd.min');

	$this->Get->create($data);
	extract($data , EXTR_SKIP);
?>

<!-- Navigation -->
<a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="#top">Webomatics</a>
        </li>
        <li>
            <a href="#top">Home</a>
        </li>
        <li>
            <a href="#about">About Us</a>
        </li>
        <li>
            <a href="#services">Services</a>
        </li>
        <li>
            <a href="#portfolio">Portfolio</a>
        </li>
        <li>
            <a href="#contact-area">Contact</a>
        </li>
    </ul>
</nav>
<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center row">
        <div class="col-xs-10 col-xs-offset-1">
            <?php
                $homeimage = $this->Get->image_link(array('id' => $myEntry['Entry']['main_image']));
            ?>
            <img src="<?php echo $homeimage['display']; ?>" alt="<?php echo $mySetting['title'].' '.$myEntry['Entry']['title']; ?> logo design website" class="img-responsive center-block">
            <h3><?php echo $myEntry['Entry']['description']; ?></h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg wow pulse" data-wow-iteration="infinite" data-wow-duration="2s">Find Out More</a>
        </div>
    </div>
</header>

<!-- About -->
<section id="about" class="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <?php
                    $about = $this->Get->meta_details('about', 'pages');
                ?>
                <h2>
                    <span class="glyphicon glyphicon-cloud wow bounceInLeft" data-wow-delay="1s"></span>
                    &nbsp;<?php echo $about['Entry']['title']; ?>&nbsp;
                    <span class="glyphicon glyphicon-cloud wow bounceInRight" data-wow-delay="1s"></span>
                </h2>
                <div class="lead"><?php echo $about['Entry']['description']; ?></div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Services -->
<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
<section id="services" class="services bg-primary">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-10 col-lg-offset-1">
                <h2>Our Services</h2>
                <hr class="small">
                <div class="row">
                    <?php
                        foreach ($services as $key => $value) 
                        {
                            $detail_link = $imagePath.$value['Entry']['entry_type'].'/#'.$value['Entry']['slug'];
                            // $detail_link = '#contact-area';
                            
                            $wow_delay = ($key % 2) * 500;
                            ?>
                    <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                            <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-stack-1x text-primary <?php echo $value['EntryMeta']['icon']; ?>"></i>
                            </span>
                            <h4>
                                <strong><?php echo $value['Entry']['title']; ?></strong>
                            </h4>
                            <p><?php echo $value['EntryMeta']['teaser']; ?></p>
                            <a href="<?php echo $detail_link; ?>" class="btn btn-light wow pulse" data-wow-iteration="infinite" data-wow-duration="2s" data-wow-delay="<?php echo $wow_delay; ?>ms">Learn More</a>
                        </div>
                    </div>                            
                            <?php
                        }
                    ?>                    
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Service Banner -->
<?php
    $sbanner = $this->Get->meta_details('services-banner', 'pages');
    $imgLink = $this->Get->image_link(array('id' => $sbanner['Entry']['main_image']));
?>
<aside data-toggle="tooltip" data-placement="auto" alt="service-area" title="Click For More Services" id="service-banner" class="callout" style="background: url(<?php echo $imgLink['display']; ?>) no-repeat center center scroll;-webkit-background-size: cover;-moz-background-size: cover;background-size: cover;-o-background-size: cover;">
    <div class="row text-vertical-center">
        <div class="col-xs-offset-2 col-xs-8 banner-desc wow rotateIn" data-wow-offset="300" data-wow-delay="1s">
            <?php echo $sbanner['Entry']['description']; ?>
        </div>
    </div>    
</aside>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Our Works</h2>
                <hr class="small">
                <div class="row portfolio-row">
                    <?php echo $this->element('portfolio'); ?>
                </div>
                <input type="hidden" id="portfolio-countPage" value="<?php echo $portfolio_countPage; ?>">
                <!-- /.row (nested) -->
                <a data-page="2" href="#" class="btn btn-dark view-more-items wow pulse" data-wow-iteration="infinite" data-wow-duration="2s">
                    <img class="hide" src="<?php echo $imagePath; ?>images/ajax-loader.gif" alt="loading portfolio">
                    <span>&nbsp;View More Works&nbsp;</span>
                </a>
                <?php
                    $firstdeveloper = $this->Get->meta_details(NULL , 'developer');
                ?>
                <p class="fyi">*) Developed by <a target="_blank" href="<?php echo $firstdeveloper['EntryMeta']['url_link']; ?>"><?php echo $firstdeveloper['Entry']['title']; ?></a> whereas <a href="#top">webomatics.net</a> doing programming phase.</p>
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Contact -->
<?php
    $contactpages = $this->Get->meta_details('contact-us', 'pages');
    $imgLink = $this->Get->image_link(array('id' => $contactpages['Entry']['main_image']));
?>
<aside class="call-to-action bg-primary" id="contact-area" style="background: url(<?php echo $imgLink['display']; ?>) no-repeat center center scroll;-webkit-background-size: cover;-moz-background-size: cover;background-size: cover;-o-background-size: cover;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2><?php echo $contactpages['Entry']['title']; ?></h2>
                <h5><?php echo $contactpages['Entry']['description']; ?></h5>
                <hr class="small">
                <form action="#" method="POST" role="form" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-md-4 col-md-offset-2 col-sm-5 col-sm-offset-1">
                            <div class="form-group">
                                <input placeholder="[Fullname]" REQUIRED type="text" class="form-control input-lg" name="namecontact" value="<?php echo ($contact['success'] == 1?'':$_POST['namecontact']); ?>">
                            </div>                            
                        </div>
                        <div class="col-md-4 col-sm-5">
                            <div class="form-group">
                                <input placeholder="[E-mail]" REQUIRED type="email" class="form-control input-lg" name="emailcontact" value="<?php echo ($contact['success'] == 1?'':$_POST['emailcontact']); ?>">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="form-group">
                                <textarea placeholder="[Message]" style="resize: none;" REQUIRED name="pesancontact" class="form-control" rows="5"><?php echo ($contact['success'] == 1?'':$_POST['pesancontact']); ;?></textarea>
                            </div>                            
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="form-group">
                                <div class="g-recaptcha center-block" data-sitekey="6LfKQBkTAAAAADjqRH2tGuaNHobpjmZ3EVGRqWzV" style="width: 304px;"></div>
                                <br>
                                <button type="submit" class="btn btn-lg btn-light" name="submitcontact">SEND MESSAGE</button>
                                <button type="reset" class="btn btn-lg btn-dark">RESET</button>
                            </div>                            
                        </div>
                    </div>                    
                </form>
            </div>
        </div>
    </div>
</aside>
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    $(document).ready(function(){
        $('[data-toggle=tooltip]').tooltip();
        $('[data-toggle=tooltip]').each(function(){
            $(this).attr('title' , $(this).attr('alt') );
        });
        
        // defining navigation link !!
        $('#service-banner').click(function(){
            window.location = site+"services/";
        });

        // initialize masonry script !!
        var $container = $('.portfolio-row');
        $container.imagesLoaded(function () {
            $container.masonry({
                itemSelector: '.port-box',
                isAnimated: true
            });
        });
        // end of initialize !!

        $('a.view-more-items').click(function(e){
            e.preventDefault();
            var myobj = $(this);
            var nextpage = parseInt( myobj.attr('data-page') );            
            var countPage = parseInt( $('input#portfolio-countPage').val() );
            
            // check not to overlap ajax process !!
            if(myobj.find('img').is(':visible'))
            {
                alert('Please wait a moment ...');
                return;
            }
            
            myobj.find('span').addClass('hide');
            myobj.find('img').removeClass('hide');
            
            $.ajaxSetup({cache: false});
			$.get(site+"entries/ajax_portfolio/"+nextpage,function(data){                
                if(data.length > 0)
                {
                    $container.append(data).imagesLoaded(function () {
                        
                        $container.find('.portfolio-item').removeClass('hide');
                        
                        $container.masonry('reloadItems').masonry('layout');
                        
                        // append DONE !!                
                        if( nextpage < countPage)
                        {
                            myobj.attr('data-page' , nextpage+1 );
                            myobj.find('img').addClass('hide');
                            myobj.find('span').removeClass('hide');
                        }
                        else // THE END of ajax !!
                        {
                            myobj.addClass('hide');
                        }
                    });
                }
                else
                {
                    myobj.addClass('hide');
                }
            });
        });

        // navbar menu action ...
        // close menu after select menu
        $("#sidebar-wrapper li a").click(function(){
            $("#sidebar-wrapper").removeClass("active");
        });

        // Closes the sidebar menu
        $("#menu-close").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });

        // Opens the sidebar menu
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });

        <?php if(isset($_POST['submitcontact'])): ?>
            var endnote = '\n\nbest regards,\n<?php echo $mySetting['title']; ?>';
            <?php
                if($contact['success'] == 1)
                {
                    ?>
                alert('Thank you for your message.\nWe will evaluate and contact back to you soon.'+endnote);
                    <?php
                }
                else
                {
                    if(!empty($recaptcha_error))
                    {
                        ?>
                alert('Invalid reCAPTCHA challenge (<?php echo $recaptcha_error; ?>)\nPlease try again.');
                        <?php
                    }
                    else if($contact['success'] == -2)
                    {
                        ?>
                alert('Failed to connect to mailserver.\nPlease check your connection first.');
                        <?php
                    }
                    else
                    {
                        ?>
                alert('Send Message Failed.\nPlease try again.');
                        <?php
                    }
                    ?>
                $('a[href=#contact-area]').click(); // focus to contact area...
                    <?php
                }
            ?>
        <?php endif; ?>
    });
</script>