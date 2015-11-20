ActiveRecord::Schema.define(:version => 1) do
  create_table :themes, force: true do |t|
    t.column :primary_color, :string
    t.column :secondary_color, :string
    t.column :accent_color, :string
  end
end

class Theme < ActiveRecord::Base
  colorize :primary_color, :secondary_color, :accent_color
end
