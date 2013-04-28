class NfcGame.Routers.ChallengesRouter extends Backbone.Router
  initialize: (options) ->
    @challenges = new NfcGame.Collections.ChallengesCollection()
    @challenges.fetch()

  routes:
    "new"      : "newChallenge"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newChallenge: ->
    @view = new NfcGame.Views.Challenges.NewView(collection: @challenges)
    $("#challenges").html(@view.render().el)

  index: ->
    @view = new NfcGame.Views.Challenges.IndexView(challenges: @challenges)
    $("#challenges").html(@view.render().el)

  show: (id) ->
    challenge = @challenges.get(id)

    @view = new NfcGame.Views.Challenges.ShowView(model: challenge)
    $("#challenges").html(@view.render().el)

  edit: (id) ->
    challenge = @challenges.get(id)

    @view = new NfcGame.Views.Challenges.EditView(model: challenge)
    $("#challenges").html(@view.render().el)
