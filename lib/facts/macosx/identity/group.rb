# frozen_string_literal: true

module Facter
  module Macosx
    class IdentityGroup
      FACT_NAME = 'identity.group'

      def call_the_resolver
        fact_value = Facter::Resolvers::PosxIdentity.resolve(:group)
        ResolvedFact.new(FACT_NAME, fact_value)
      end
    end
  end
end
