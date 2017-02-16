<?php
    $this->Get->create($data);
	extract($data , EXTR_SKIP);

    echo $this->element('portfolio' , array('portfolio'=>$myList));
?>
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript">
    $(document).ready(function(){
        $('[data-toggle=tooltip]').tooltip();
        $('[data-toggle=tooltip]').each(function(){
            $(this).attr('title' , $(this).attr('alt') );
        });
    });
</script>
<!-- REFRESH colorbox initialization !! -->
<?php echo $this->Html->script('init_colorbox'); ?>