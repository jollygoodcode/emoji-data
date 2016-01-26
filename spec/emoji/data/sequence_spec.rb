RSpec.describe Sequence do
  let(:data) { Sequence.new }

  describe "#combining_emojis" do
    let(:subject) { data.combining_emojis }

    it "12 sequences" do
      result = subject.size

      expect(result).to eq 12
    end
  end

  describe "#flag_emojis" do
    let(:subject) { data.flag_emojis }

    it "257 sequences" do
      result = subject.size

      expect(result).to eq 257
    end
  end

  describe "#modifier_emojis" do
    let(:subject) { data.modifier_emojis }

    it "320 sequences" do
      result = subject.size

      expect(result).to eq 320
    end
  end
end
