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
//
//= require rails-ujs
//= require activestorage
//= require turbolinks



//= require jquery
//= require bootstrap-sprockets
//= require_tree .




$(document).ready(function() {

    validation();

});

function validation() {
    var $titleInput = $("#article_title");

    $titleInput.change( function(event) {
        var $errorTag = $(event.currentTarget).closest('form.new_article').find('p.title-error');
        if($(event.currentTarget).val().length <= 5) {
            $(event.currentTarget).addClass('validation-error');
            $errorTag.removeClass('hidden');
        } else {
            $(event.currentTarget).removeClass('validation-error');
            $errorTag.addClass('hidden');
        }
    });

    $titleInput.focus( function(event) {
        if($(event.currentTarget).hasClass('validation-error')) {
            $(event.currentTarget).addClass('validation-error');
        } else {
            $(event.currentTarget).removeClass('validation-error');
        }
    });
}