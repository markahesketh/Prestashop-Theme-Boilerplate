$(function() {
 // Move blocktopmenu from div#modules to end of <header>
 $('nav.blocktopmenu').remove().insertAfter($('header .modules'));
});