/*
	Hey there!

	This is the client file for your theme. If you need to do any client-side work in javascript,
	this is where it needs to go.

	You can listen for page changes by writing something like this:

	  $(window).on('action:ajaxify.end', function(data) {
		var	url = data.url;
		console.log('I am now at: ' + url);
	  });
*/

$(document).ready(function() {
    function receiveMsg (evt) {
        if (evt.origin !== 'https://dev.rehau2.xyz') {
            // что-то прислали с неизвестного домена - проигнорируем..
            return;
        }
        if(evt && evt.data && evt.data.isLogined) {
            var submitEl = $('#login');
            console.log('evt.data.isLogined', submitEl);
            // console.log(submitEl);
        }
        console.log(evt.data);
    }
    window.addEventListener('message', receiveMsg, false);
    parent.postMessage({isReady: true}, 'https://dev.rehau2.xyz')
	// Your code goes here
	// Your code goes here
});