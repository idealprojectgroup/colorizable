require 'color'

module Colorizable
  class Color < Color::RGB
    def to_s
      "##{hex}"
    end
  end
end
