module Shindo
  class Tests
    def succeeds
      test('succeeds') do
        if block_given?
          !!instance_eval { yield }
        else
          raise ArgumentError, "No block given to `succeeds`"
        end
      end
    end
  end
end
