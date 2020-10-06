new FroalaEditor('textarea#froala-editor', {
	heightMin: 400,
	heightMax: 500,
	theme: 'dark',
    toolbarStickyOffset: 55
    toolbarButtons: [
      'fullscreen'
      'bold'
      'italic'
      'underline'
      'strikeThrough'
      'subscript'
      'superscript'
      'fontFamily'
      'fontSize'
      '|'
      'color'
      'inlineStyle'
      '|'
      'paragraphFormat'
      'align'
      'formatOL'
      'formatUL'
      'outdent'
      'indent'
      '-'
      'insertLink'
      'insertImage'
      'insertVideo'
      'insertFile'
      'insertTable'
      '|'
      'quote'
      'insertHR'
      'undo'
      'redo'
      'clearFormatting'
      'selectAll'
      'html'
    ],
	imageUploadURL: '/uploadimg',
    imageUploadParam: 'file',
    imageUploadMethod: 'POST',
    imageAllowedTypes: ['jpeg', 'jpg', 'png'],
    imageMaxSize: 2 * 1024 * 1024,
});