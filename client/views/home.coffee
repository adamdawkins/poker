Template.home.helpers(
  poker: ->
    _.sample(Cards.find().fetch(), 5)
)
