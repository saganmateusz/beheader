require 'uri'
module Beheader
  class Cutter

    def self.recover(url)
      Beheader::Parser.parse_to_base_10(url)
    end

    def self.generate_short_url(id)
      Beheader::Parser.parse_to_base_62(id)
    end
  end
end
