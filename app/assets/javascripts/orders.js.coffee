# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('tr[data-link]').click ->
  location.href = $(this).data('link')

jQuery ->
  $('tr.unit').each ->
    this.find('.weight').prepend(this.attr('data-weight').text)

  #$('.quantity').spinner()
  #$("div.bundle").find("tr.unitary > td.weight").prepend "manso"
  #$(this).attr('data-weight')
#$('.quantity').change ->
  #$('tr.subtotal td.size').text('3')
