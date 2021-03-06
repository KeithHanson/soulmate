module Soulmate
  module Helpers

    def prefixes_for_phrase(phrase)
      words = normalize(phrase).split(' ')
      words.map do |w|
        (MIN_COMPLETE-1..(w.length-1)).map{ |l| w[0..l] }
      end.flatten.uniq
    end

    def normalize(str)
      str.downcase.gsub(/[^a-z0-9 _]/i, '').strip
    end

  end
end
