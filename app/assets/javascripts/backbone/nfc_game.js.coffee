#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.NfcGame =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: ->
    new NfcGame.Routers.ChallengesRouter()
    Backbone.history.start()

$(document).ready ->
  NfcGame.init()
