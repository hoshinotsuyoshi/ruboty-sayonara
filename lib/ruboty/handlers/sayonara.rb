module Ruboty
  module Handlers
    class Sayonara < Base
      on /say sayonara message (?<body>.+)/, name: 'say_sayonara_message', description: 'bot says sayonara'

      def say_sayonara_message(message)
        at_exit { message.reply('さよなら', code: true) }
        'まだ寝えへんで'
      end
    end
  end
end
