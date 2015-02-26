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
        
        // REFRESH colorbox initialization !!
		if($('.cboxElement').length > 0)
		{
			$('.cboxElement').colorbox({
		        fixed: true,
		        reposition: false,
		        maxWidth:'95%',
		        maxHeight:'95%'
		    });
		}
    });
</script>