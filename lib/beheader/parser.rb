require 'uri'
module Beheader
  class Parser
    def self.parse_to_base_62(number)
      base_62 = []
      while number > 0
        remainder = number % 62
        base_62.push Beheader::Constants::URL_CHARACTERS[remainder]
        number /= 62
      end
      base_62.reverse! * ''
    end

    def self.parse_to_base_10(short_url)
      base_10 = []
      base_62_array = short_url.scan(/\w/).reverse!
      base_62_array.each_with_index do |char, i|
        base_10 << Beheader::Constants::URL_CHARACTERS.index(char) * (62**i)
      end
      base_10.inject(0, :+)
    end

    def self.strip_domain(url)
      url.prepend('http://') unless url.include? 'http'
      uri = URI.parse(url)
      main_uri_part = (uri.scheme || 'http') + '://' + (uri.host || '') + '/'
      latter_uri_part = url.split(main_uri_part)[1] || ''
      [main_uri_part, latter_uri_part]
    end
  end
end
