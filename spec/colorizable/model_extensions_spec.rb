require "active_record_models"

describe Colorizable::ModelExtensions do
  describe "colorize" do
    it "provides a Color::RGB object for each attribute" do
      theme = Theme.new(primary_color: "#333", secondary_color: "#CCC", accent_color: "#acacac")

      [:primary_color, :secondary_color, :accent_color].each do |attribute|
        expect(theme.send(attribute)).to be_a Color::RGB
      end
    end
  end
end
