RSpec.describe EmojiData do
  let(:data) { EmojiData.new }

  def all_of_property?(property)
    subject.all? { |emoji| emoji.property == property }
  end

  def count_codepoints
    subject.map(&:count).map(&:to_i).inject { |sum, x| sum + x }
  end

  describe "#emojis" do
    let(:subject) { data.emojis }

    it "all of Emoji property" do
      result = all_of_property?("Emoji")

      expect(result).to eq true
    end

    it "1051 codepoints" do
      result = count_codepoints

      expect(result).to eq 1051
    end
  end

  describe "#emoji_presentations" do
    let(:subject) { data.emoji_presentations }

    it "all of Emoji_Presentation property" do
      result = all_of_property?("Emoji_Presentation")

      expect(result).to eq true
    end

    it "838 codepoints" do
      result = count_codepoints

      expect(result).to eq 838
    end
  end


  describe "#emoji_modifiers" do
    let(:subject) { data.emoji_modifiers }

    it "all of Emoji_Modifier property" do
      result = all_of_property?("Emoji_Modifier")

      expect(result).to eq true
    end

    it "5 codepoints" do
      result = count_codepoints

      expect(result).to eq 5
    end
  end

  describe "#emoji_modifier_bases" do
    let(:subject) { data.emoji_modifier_bases }

    it "all of Emoji_Modifier_Base property" do
      result = all_of_property?("Emoji_Modifier_Base")

      expect(result).to eq true
    end

    it "64 codepoints" do
      result = count_codepoints

      expect(result).to eq 64
    end
  end
end
