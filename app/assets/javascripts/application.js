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
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// const add_fields = document.querySelector('.add_fields');
// const form = document.querySelector('form');
// const remove_record = document.querySelector('.remove-record');

// remove_record.addEventListener('click', (e) => {
//   //
//   //
//   return e.preventDefault();
// })

// add_fields.addEventListener('click', (e) => {
//   const time = new Date().getTime();
//   const regexp = new RegExp() // add more
//   //
//   return e.preventDefault();
// })

$(document).on('turbolinks:load', function() {

  $('form').on('click', '.remove-record', function(event) {
    $(this).prev('input[type=hidden]').val('1');
    $(this).closest('tr').hide();
    return event.preventDefault();
  });

  $('form').on('click', '.add_fields', function(event) {
    const time = new Date().getTime();
    const regexp = new RegExp($(this).data('id'), 'g');
    $('.fields').append($(this).data('fields').replace(regexp, time));
    return event.preventDefault();
  });
});