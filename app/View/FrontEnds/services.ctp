<?php
    echo $this->Html->css('one-page-wonder');

    $this->Get->create($data);
    extract($data , EXTR_SKIP);
?>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?php echo $imagePath; ?>"><?php echo $mySetting['title']; ?></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <?php
                    foreach ($myList as $key => $value) 
                    {
                        echo '<li><a href="#'.$value['Entry']['slug'].'">'.$value['Entry']['title'].'</a></li> ';
                    }
                ?>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<!-- Full Width Image Header -->
<?php
    $sheader = $this->Get->meta_details('services-header', 'pages');
    $imgLink = $this->Get->image_link(array('id' => $sheader['Entry']['main_image']));
?>
<header class="header-image" style="background: url(<?php echo $imgLink['display']; ?>) no-repeat center center scroll; -webkit-background-size: cover; -moz-background-size: cover; background-size: cover; -o-background-size: cover;">
    <div class="headline">
        <div class="container">
            <a href="#<?php echo $myList[0]['Entry']['slug']; ?>" class="btn btn-dark btn-lg">What We Do ...</a>
        </div>
    </div>
</header>

<!-- Page Content -->
<div class="container">
    <?php
        foreach ($myList as $key => $value)
        {
            $imgLink = $this->Get->image_link(array('id' => $value['Entry']['main_image']));
            $alt_title = $value['Entry']['title'].' - &#8220;'.$value['EntryMeta']['subtitle'].'&#8221;';
            ?>
    <div class="featurette" id="<?php echo $value['Entry']['slug']; ?>">        
        <hr class="featurette-divider">
        <a alt="<?php echo $alt_title; ?>" title="<?php echo $alt_title; ?>" class="cboxElement" rel="gallery" href="<?php echo $imgLink['display']; ?>">
            <img class="featurette-image img-circle img-responsive pull-<?php echo ($key%2==0?'right':'left'); ?>" src="<?php echo $imgLink['display']; ?>" alt="<?php echo $value['Entry']['title'].' '.$value['Entry']['entry_type']; ?>">
        </a>
        <h2 class="featurette-heading"><?php echo $value['Entry']['title']; ?></h2>
        <h4 class="text-muted"><i>&#8220;<?php echo $value['EntryMeta']['subtitle']; ?>&#8221;</i></h4>
        <div class="lead"><?php echo $value['Entry']['description']; ?></div>
    </div>
            <?php
        }
    ?>
    <div class="featurette-footer-nav">
        <span class="pull-left">
            <a href="<?php echo $imagePath; ?>" class="btn btn-dark">
                <i class="fa fa-angle-double-left"></i>&nbsp;&nbsp;BACK TO HOME
            </a>
        </span>
        <span class="pull-right">
            <a class="going-top btn btn-dark" href="#">
                <i class="fa fa-angle-double-up"></i>&nbsp;&nbsp;GOING TOP
            </a>
        </span>
    </div>
    <hr class="featurette-divider">
</div>
<!-- /.container -->

<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    $(document).ready(function(){
        // navbar menu action ...
        // close menu after selecting menu
        $("#bs-example-navbar-collapse-1 li a").click(function(){
            $("#bs-example-navbar-collapse-1").removeClass("in");
        });

        $('.going-top').click(function(e){
            e.preventDefault();

            var body = $("html, body");
            body.animate({scrollTop:0}, 'slow', 'swing');
        });
    });
</script>