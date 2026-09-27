module Vault
  module Rails
    module JSONSerializer
      def self.encode(raw)
        _init!

        JSON.generate(raw)
      end

      def self.decode(raw)
        _init!

        return nil if raw == nil || raw == ""

        JSON.parse(raw)
      end

      protected

      def self._init!
        return if defined?(@_init)
        require "json"
        @_init = true
      end
    end
  end
end
