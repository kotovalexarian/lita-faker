require 'faker'

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
      route(
        /^fake(r)?\s+(?<s>\w+)\s+(?<s>\w+)$/i,
        :route_faker,
        command: true
      )

      def route_faker(response)
        matches = response.matches[0]
        namespace = ::Faker.const_get \
          matches[0].split('_').map(&:capitalize).join.to_sym
        command = namespace.method(matches[1].to_sym)

        response.reply(command.call)
      end
    end

    Lita.register_handler(Faker)
  end
end
