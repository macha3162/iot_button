#App.room = App.cable.subscriptions.create { channel: "RoomChannel", room: "1st" },
#  connected: ->
#    console.info('connect')
#    # Called when the subscription is ready for use on the server
#
#  disconnected: ->
#    # Called when the subscription has been terminated by the server
#
#  received: (data) ->
#    if(data['message']==true)
#      $('body').css('background', 'green')
#    else
#      $('body').css('background', 'red')
#  push: (button) ->
#    @perform 'push', button: button
