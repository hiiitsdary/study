module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array[0]
        for i in (0..array.length - 1)
          if array[i] > max
            max = array[i]
          end
        end
        for i in (0..array.length - 1)
          if array[i] > 0
            array[i] = max
          end
        end
        array
      end

      def search(_array, _query)
        0
      end
    end
  end
end
