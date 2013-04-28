class NfcGame.Models.Challenge extends Backbone.Model
  paramRoot: 'challenge'

  defaults:
    title: null
    description: null

class NfcGame.Collections.ChallengesCollection extends Backbone.Collection
  model: NfcGame.Models.Challenge
  url: '/challenges'

