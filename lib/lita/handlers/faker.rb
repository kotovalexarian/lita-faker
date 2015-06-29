##
# Lita module.
#
module Lita
  ##
  # Lita handlers module.
  #
  module Handlers
    ##
    # Generator of fake data such as names, addresses,
    # and phone numbers for the Lita chat bot.
    #
    class Faker < Handler
    end

    Lita.register_handler(Faker)
  end
end
