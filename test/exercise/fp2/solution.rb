module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for i in (0...self.size)
          yield self[i]
        end
        self
      end

      # Написать свою функцию my_map
      def my_map
        reslt = MyArray.new()
        self.my_reduce(reslt) { |new_el, el| new_el << yield(el) }
      end
      # Написать свою функцию my_compact
      def my_compact
        result =  MyArray.new()
        self.my_reduce(result) do |el, cur|
          if cur != nil
            result << cur
          end
        end
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        if acc == nil
          acc = self[0]
          self[1...self.size].my_each do |el|
            acc = yield acc, el
          end
        
        else
          self.my_each do |el|
            acc = yield acc, el
          end
        end
        acc
      end
      
    end
  end
end
