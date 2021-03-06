module WebIDL
  module ParseTree
    class PartialInterface < Interface

      def build(parent)
        intf = super
        intf.partial = true

        intf
      end

      def add_inheritance(parent, intf)
        # partial interfaces does not support inheritance
      end

      def partial?
        true
      end

    end
  end
end