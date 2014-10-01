/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	config.allowedContent = true;

	// Copy from MS-Office(word,excel) and paste to CKEditor >>
	config.pasteFromWordRemoveFontStyles = false;
	config.pasteFromWordRemoveStyles = false;

	// initialize extra plugins here >>
	config.extraPlugins = 'youtube';

	// CKEDITOR - prevent adding image dimensions as a css style >>
	CKEDITOR.on('instanceReady', function (event) {
		// Ends self closing tags the HTML4 way, like <br>.
		event.editor.dataProcessor.htmlFilter.addRules(
	    {
	        elements:
	        {
	            $: function (element) {
	                // Output dimensions of images as width and height
	                if (element.name == 'img') {
	                    var style = element.attributes.style;

	                    if (style) {
	                        // Get the width from the style.
	                        var match = /(?:^|\s)width\s*:\s*(\d+)px/i.exec(style),
	                            width = match && match[1];

	                        // Get the height from the style.
	                        match = /(?:^|\s)height\s*:\s*(\d+)px/i.exec(style);
	                        var height = match && match[1];

	                        if (width) {
	                            element.attributes.style = element.attributes.style.replace(/(?:^|\s)width\s*:\s*(\d+)px;?/i, '');
	                            element.attributes.width = width;
	                        }

	                        if (height) {
	                            element.attributes.style = element.attributes.style.replace(/(?:^|\s)height\s*:\s*(\d+)px;?/i, '');
	                            element.attributes.height = height;
	                        }
	                    }
	                }

	                if (!element.attributes.style)
	                    delete element.attributes.style;

	                return element;
	            }
	        }
	    });
	});
};
