module Colorizable
  module ModelExtensions
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def colorize(*fields)
        fields.each do |field|
          name = field

          define_method name do |*args|
            Color.by_hex(self[name]) rescue Color.new
          end

          define_method "#{name}=" do |value|
            color = if value.kind_of?(Hash)
              value = value.symbolize_keys
              Color.new(value[:r], value[:g], value[:b]) rescue nil
            else
              Color.by_hex(value.to_s) rescue nil
            end.try(:hex)

            self[name] = color
          end
        end
      end
    end
  end
end
