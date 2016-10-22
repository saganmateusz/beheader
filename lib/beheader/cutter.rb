require 'uri'
module Beheader
  # Top-level interface for generating short links based on database ID and
  # recovering database ID from the short link
  # Mostly here to enable easy swapping of shortening algorithms
  # and enable some backwards-compatibility
  class Cutter
    # Reverses the shortening process to get back the database ID
    #
    # @param [String] url the short url
    # @return [Integer] the ID of the object containing the short url
    def self.recover(url)
      Beheader::Parser.parse_to_base_10(url)
    end

    # Generates a short URL based on given integer; Most probably a database ID
    #
    # @param [Integer] id the id to convert to url
    # @return [String] the shortened url
    def self.generate_short_url(id)
      Beheader::Parser.parse_to_base_62(id)
    end
  end
end
