require 'colorizable/color'
require 'colorizable/model_extensions'

module Colorizable
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.send(:include, Colorizable::ModelExtensions)
end

require 'colorizable/version_number'
