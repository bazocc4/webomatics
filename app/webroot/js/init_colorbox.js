(function($){
	$(document).ready(function()
	{
		// colorbox initialization !!
		if( $('.cboxElement').length )
		{
            $('.cboxElement').colorbox({
//		        fixed: true,
		        reposition: false,
		        maxWidth:'95%',
//		        maxHeight:'95%',
                current: false,
                onOpen: function(){
/*
                    $('body').css({ overflow: 'hidden' });
                    
                    $('#cboxContent').css({
                        'position': 'fixed',
                        'overflow-y': 'auto',
                        'top': 10,
                        'max-height': '90vh',
                        'overflow-x': 'hidden',
                        '-webkit-border-radius': '5px',
                        'border-radius': '5px',
                    });
*/
                },
                onLoad: function(){
                    if($(this).closest('#portfolio').length)
                    {
                        $('#portfolio')[0].scrollIntoView();
                    }
                },
                onComplete: function(){                    
/*
                    var threshold = ($(window).width() - $('#cboxContent').width()) / 2;
                    
                    $('#cboxTitle').css({
                        'position': 'fixed',
                        'top': 10,
                        'left': threshold,
                    });
                    
                    $('#cboxClose').css({
                        'position': 'fixed',
                        'top': '50px',
                        'right': threshold + 50,
                    });
                    
                    $('#cboxPrevious').css({
                        'position': 'fixed',
                        'top': '50%',
                        'left': threshold,
                    });
                    
                    $('#cboxNext').css({
                        'position': 'fixed',
                        'top': '50%',
                        'right': threshold,
                    });
*/
                },
                onClosed: function(){
/*
                    $('body').css({ overflow: '' });
*/
                },
		    });
		}
	});
})(jQuery);