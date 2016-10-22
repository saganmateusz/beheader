require 'uri'
module Beheader
  # Parser class for doing the actual url encoding/decoding. This implementation
  # generates short urls using Base10<-->Base62 conversion
  class Parser
    # Converts an integer to base62 using modulo division.
    #
    # @param [Integer] number the number to convert to url
    # @return [String] the shortened url
    def self.parse_to_base_62(number)
      base_62 = []
      while number > 0
        remainder = number % 62
        base_62.push Beheader::Constants::URL_CHARACTERS[remainder]
        number /= 62
      end
      base_62.reverse! * ''
    end

    # The reverse of {.parse_to_base_62}, the method receives a string
    # and outputs the original integer used to generate it
    #
    # @param [String] short_url the short url
    # @return [Integer]
    def self.parse_to_base_10(short_url)
      base_10 = []
      base_62_array = short_url.scan(/\w/).reverse!
      base_62_array.each_with_index do |char, i|
        base_10 << Beheader::Constants::URL_CHARACTERS.index(char) * (62**i)
      end
      base_10.inject(0, :+)
    end

    # Cuts the URL into two parts:
    # part one is the protocol/host
    # second part is the relative path
    #
    # @param [String] url the url to split
    # @return [Array<String>] two part array holding the parts of URL
    def self.strip_domain(url)
      url.prepend('http://') unless url.include? 'http'
      uri = URI.parse(url)
      main_uri_part = (uri.scheme || 'http') + '://' + (uri.host || '') + '/'
      latter_uri_part = url.split(main_uri_part)[1] || ''
      [main_uri_part, latter_uri_part]
    end
  end
end
