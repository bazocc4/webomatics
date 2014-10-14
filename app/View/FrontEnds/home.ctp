<?php
    echo $this->Html->script('masonry.pkgd.min');

	$this->Get->create($data);
	extract($data , EXTR_SKIP);
?>
<script type="text/javascript">
    $(document).ready(function(){
        var $container = $('.portfolio-row');

        $container.imagesLoaded(function () {
            $container.masonry({
                itemSelector: '.port-box',
                columnWidth: '.port-box',
                transitionDuration: 0
            });
        });
    });
</script>
<!-- Header -->
<header id="top" class="header">
    <div class="text-vertical-center row">
        <div class="col-xs-10 col-xs-offset-1">
            <?php
                $homeimage = $this->Get->image_link(array('id' => $myEntry['Entry']['main_image']));
            ?>
            <img src="<?php echo $homeimage['display']; ?>" alt="<?php echo $mySetting['title'].' '.$myEntry['Entry']['title']; ?> logo design website" class="img-responsive center-block">
            <h3><?php echo $mySetting['description']; ?></h3>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
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
                <h2><span class="glyphicon glyphicon-cloud"></span>&nbsp;&nbsp;<?php echo $about['Entry']['title']; ?>&nbsp;&nbsp;<span class="glyphicon glyphicon-cloud"></span></h2>
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
                            // $detail_link = $imagePath.$value['Entry']['entry_type'].'/'.$value['Entry']['slug'];
                            $detail_link = '#';
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
                            <p><?php echo $value['Entry']['description']; ?></p>
                            <a href="<?php echo $detail_link; ?>" class="btn btn-light">Learn More</a>
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

<!-- Callout -->
<?php
    $sbanner = $this->Get->meta_details('services-banner', 'pages');
    $imgLink = $this->Get->image_link(array('id' => $sbanner['Entry']['main_image']));
?>
<aside class="callout" style="background: url(<?php echo $imgLink['display']; ?>) no-repeat center center scroll;-webkit-background-size: cover;-moz-background-size: cover;background-size: cover;-o-background-size: cover;">
    <div class="text-vertical-center">
        <h1><?php echo $sbanner['Entry']['description']; ?></h1>
    </div>
</aside>

<!-- Portfolio -->
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 text-center">
                <h2>Our Work</h2>
                <hr class="small">
                <div class="row portfolio-row">
                    <?php
                        $firstdeveloper = $this->Get->meta_details(NULL , 'developer');

                        foreach ($portfolio as $key => $value) 
                        {
                            $imgLink = $this->Get->image_link(array('id' => $value['Entry']['main_image']));
                            ?>
                    <div class="port-box col-lg-3 col-md-4 col-sm-6">
                        <div class="portfolio-item">
                            <a target="_blank" href="<?php echo $value['EntryMeta']['url_link']; ?>">
                                <img class="img-portfolio img-responsive" src="<?php echo $imgLink['display']; ?>" alt="<?php echo $value['Entry']['title'].' '.$value['Entry']['entry_type']; ?>">
                                
                                <p class="description"><?php echo $value['Entry']['title'].($value['EntryMeta']['developer']==$firstdeveloper['Entry']['slug']?' <span class="star-sign">*</span>':''); ?></p>
                            </a>
                        </div>
                    </div>
                            <?php
                        }
                    ?>
                </div>
                <!-- /.row (nested) -->
                <a href="#" class="btn btn-dark">View More Items</a>                
                <p class="fyi">*) Developed by <a target="_blank" href="<?php echo $firstdeveloper['EntryMeta']['url_link']; ?>"><?php echo $firstdeveloper['Entry']['title']; ?></a> whereas <a href="#">webomatics.net</a> doing programming phase.</p>
            </div>
            <!-- /.col-lg-10 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->
</section>

<!-- Call to Action -->
<aside class="call-to-action bg-primary">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h3>The buttons below are impossible to resist.</h3>
                <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
            </div>
        </div>
    </div>
</aside>