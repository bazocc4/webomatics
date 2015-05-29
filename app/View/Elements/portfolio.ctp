<?php
    if(is_array($data)) extract($data , EXTR_SKIP);

    $firstdeveloper = $this->Get->meta_details(NULL , 'developer');

    foreach ($portfolio as $key => $value) 
    {
        $imgLink = $this->Get->image_link(array('id' => $value['Entry']['main_image']));
        ?>
<div class="port-box col-lg-3 col-md-4 col-sm-6">
    <div class="portfolio-item <?php echo ($isAjax==1?'hide':''); ?>">

        <!--Main Image-->
        <a data-toggle="tooltip" data-placement="top" alt="&laquo; <?php echo $value['Entry']['title']; ?> Website &raquo;" title="Click to view more <?php echo $value['Entry']['title']; ?>'s Gallery" class="cboxElement" rel="<?php echo $value['Entry']['slug']; ?>" href="<?php echo $imgLink['display']; ?>">
            <img class="img-portfolio img-responsive" src="<?php echo $imgLink['display']; ?>" alt="<?php echo $value['Entry']['title'].' '.$value['Entry']['entry_type']; ?>">
        </a>

        <!--Gallery Image-->
        <?php                            
            foreach($value['ChildEntry'] as $childkey => $childvalue)
            {
                if($childvalue['entry_type'] == $value['Entry']['entry_type'] && $childvalue['main_image'] > 0)
                {
                    $imgChild = $this->Get->image_link(array('id' => $childvalue['main_image']));            
                    ?>
        <a alt="<?php echo $childvalue['title']; ?>" title="&laquo; <?php echo $childvalue['title']; ?> &raquo;" class="cboxElement hide" rel="<?php echo $value['Entry']['slug']; ?>" href="<?php echo $imgChild['display']; ?>"></a>
                    <?php
                }
            }
        ?>

        <!--Website Navigation-->
        <a data-toggle="tooltip" data-placement="top" title="Click to go <?php echo $value['Entry']['title']; ?>'s Website" alt="<?php echo $value['Entry']['title']; ?> website" target="_blank" href="<?php echo $value['EntryMeta']['url_link']; ?>">
            <p class="description"><?php echo $value['Entry']['title'].($value['EntryMeta']['developer']==$firstdeveloper['Entry']['slug']?' <span class="star-sign">*</span>':''); ?></p>
        </a>
    </div>
</div>
        <?php
    }
?>