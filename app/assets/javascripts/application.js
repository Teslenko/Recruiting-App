// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery

//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery.easy-autocomplete

//= require bootstrap-sprockets


$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
        $(".navbar-transparent").addClass("navbar-color");
        $(".navbar-nav").addClass("navbar-nav-dark");
        $(".logo_dark").show();
        return $(".logo_light").hide();
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
        $(".navbar-transparent").removeClass("navbar-color");
        $(".navbar-nav").removeClass("navbar-nav-dark");
        $(".logo_light").show();
        return $(".logo_dark").hide();
    }
});