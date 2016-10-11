require 'uri'
module Beheader
  class Cutter
    attr_accessor :url
    
    def initialize(url)
      self.url = url
    end

    def url_valid?
      url =~ /\A#{URI::DEFAULT_PARSER.regexp[:ABS_URI]}\z/
    end

  end
end