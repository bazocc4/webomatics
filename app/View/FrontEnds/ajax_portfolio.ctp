<?php
    $this->Get->create($data);
	extract($data , EXTR_SKIP);

    $firstdeveloper = $this->Get->meta_details(NULL , 'developer');

    foreach ($myList as $key => $value) 
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