require "active_record_models"

describe Colorizable::ModelExtensions do
  describe "colorize" do
    it "provides a Color::RGB object for each attribute" do
      theme = Theme.new(primary_color: "#333", secondary_color: "#CCC", accent_color: "#acacac")

      [:primary_color, :secondary_color, :accent_color].each do |attribute|
        expect(theme.send(attribute)).to be_a Color::RGB
      end
    end

    it "accepts a hash of rgb values on setter" do
      theme = Theme.new
      theme.primary_color = { r: 204, g: 204, b: 204 }
      expect(theme.primary_color.to_s).to eq "#cccccc"
    end

    it "accepts a hex value string on setter" do
      theme = Theme.new
      theme.primary_color = "#ccc"
      expect(theme.primary_color.to_s).to eq "#cccccc"
    end

    it "does not clobber ActiveModel::Dirty" do
      theme = Theme.new
      theme.primary_color = "#ccc"
      expect(theme.primary_color_changed?).to be true

      theme = Theme.create(primary_color: "#ccc")
      theme.primary_color = "#ddd"
      expect(theme.primary_color_changed?).to be true
      expect(theme.primary_color_was).to eq "cccccc"
    end

    it "provides a blank Color object if value is blank" do
      theme = Theme.new(primary_color: nil)
      expect(theme.primary_color.to_s).to eq "#000000"
    end

    it "provides a blank Color object if value is an invalid color" do
      theme = Theme.new(primary_color: "asdfasdfasdf")
      expect(theme.primary_color.to_s).to eq "#000000"
    end
  end
end
