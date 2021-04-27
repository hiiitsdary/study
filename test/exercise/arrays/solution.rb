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
        recursive_search(_array, _query, 0, _array.length)
      end
      
      def recursive_search(_array, _query, left, right)
        
        middle = (left + right) / 2
        if _array[middle] == _query
          return middle
        end
        if (left - right).abs <= 1
          return -1
        end
        if _array[middle] < _query
          return recursive_search(_array, _query, middle, right)
        else _array[middle] > _query
          return recursive_search(_array, _query, left, middle)
        end
      end
    end
  end
end
