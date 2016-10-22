#A class holding the Base62 characters
module Beheader
  module Constants
    URL_CHARACTERS = ('abcdefghijklmnopqrstuvwxyz' + 
                     'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
                     '0123456789')
                     .freeze
  end
end