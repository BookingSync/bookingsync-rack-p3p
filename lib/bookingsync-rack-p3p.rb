# Shamelessly ripped from https://github.com/hoopla/rack-p3p
module BookingSync
  module Rack
    class P3p
      # Personalized options made with http://p3pedit.com
      POLICY = 'CP="OTI DSP COR CUR ADMo DEVo TAI PSAi PSDi IVAi IVDi CONi HISi TELi OTPi OUR SAMi OTRo UNRo PUBi IND UNI STA"'.freeze

      def initialize(app)
        @app = app
      end

      def call(env)
        response = @app.call(env)
        insert_p3p(response)
      end

      private
        def insert_p3p(response)
          if response.first == 304
            response[1].delete('Set-Cookie')
          else
            response[1].update('P3P' => POLICY)
          end
          response
        end
    end
  end
end