# frozen_string_literal: true

module CKB
  module Serializers
    class Uint32Serializer
      include BaseSerializer

      # @param value [String]
      def initialize(value)
        @value = value
      end

      private

      attr_reader :value

      def layout
        body
      end

      def body
        [value.to_i].pack("V").unpack1("H*")
      end
    end
  end
end
