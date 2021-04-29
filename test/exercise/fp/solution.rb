module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        sorted_array = array.filter{ |film| film["rating_kinopoisk"].to_f > 0 and !film["rating_kinopoisk"].nil? and !film["country"].nil? and film['country'].split(',').size >= 2}
        raitings_sum = sorted_array.map{|film| film["rating_kinopoisk"].to_f}.reduce(:+)
        return raitings_sum / sorted_array.size
      end

      def chars_count(_films, _threshold)
        0
      end
    end
  end
end
