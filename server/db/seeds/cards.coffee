Meteor.startup ->
  if Cards.find().count() is 0
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q','K', 'A']
    suits = ['H', 'D', 'C', 'S'] 
    
    for value in values
      for suit in suits
        card =
          _id: "#{value}#{suit}"
          value: value
          suit: suit

        Cards.insert card
