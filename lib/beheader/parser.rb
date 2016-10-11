module Beheader
  class Parser

    def self.parse_to_base_62(number)
      base_62 = []
      while number > 0
        remainder = number & 62
        puts "remainder #{remainder}"
        base_62.push Beheader::Constants::URL_CHARACTERS[remainder]
        number /= 62
        puts "number #{number}"
      end
      base_62.reverse! * ''
    end

    def self.parse_to_base_10(short_url)
      base_10 = []
      base_62_array = short_url.split(',')
      base_62_array.each_with_index do |char, i|
        puts "char #{char}: #{i}"
        base_10 << Beheader::Constants::URL_CHARACTERS.index(char) * (62**i)
      end
      base_10.inject(0, :+)
    end

  end
end
