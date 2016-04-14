/* globals $ */
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require materialize/extras/nouislider
//= require_tree .


var clicky = function () {
    $("#clicky-button").on("click", function () {
        if ($(".container .main-text a").first().hasClass("highlight")) {
            $(".container .main-text a").removeClass("highlight");
        } else {
            $(".container .main-text a").first().addClass("highlight");
        }
    });

    var count = 0;
    var clickyCount = function (){
        count++;
        console.log("Clicked on the header " + count + " times.");
    };
    $("#count-me").on("click", clickyCount);
};

$(document).ready(clicky);
$(document).on("page:load", clicky);
