# This file is a template of an example Cards collection using # Collection2 and Autoform. You can reuse in and get started quickly by replacing "Card" with your collection name 
# (and "Cards" with the plural, for those of you with a Cacti collection)
#
# We define global Collections and Schemas objects at the start
# for use in the client (see /client/helpers.coffee)
#
# Define them in each collection file avoids load order issues
#
@Collections = @Collections || {}
@Schemas = @Schemas ||  {}
#
# Setup the Mongo Collection
@Cards = Collections.Cards = new Mongo.Collection 'cards'

# Setup the Schema (singular)

Schemas.Card = new SimpleSchema(
  value:
    type: String
    allowedValues: ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q','K', 'A']
  suit:
    type: String
    allowedValues: ['H', 'D', 'C', 'S']
)
 
# Attach the Schema to the Collection
@Cards.attachSchema(Schemas.Card)
