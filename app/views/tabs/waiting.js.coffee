# Place all the behaviors and hooks related to the matching controller here.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


<% url = Negotiations::Application.routes.url_helpers %>



PrivatePub.subscribe "/negotiation/waiting/<%= current_user.negotiation.id %>", (data, channel) ->
	$('body').append "<embed src=\"/sound.wav\" hidden=\"true\" autostart=\"true\" loop=\"false\" />"
	window.location.pathname = '/'

