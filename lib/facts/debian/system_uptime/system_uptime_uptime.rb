# frozen_string_literal: true

module Facter
  module Debian
    class SystemUptimeUptime
      FACT_NAME = 'system_uptime.uptime'

      def call_the_resolver
        fact_value = Facter::Resolvers::Uptime.resolve(:uptime)

        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end
