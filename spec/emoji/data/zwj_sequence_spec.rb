RSpec.describe ZwjSequence do
  let(:data) { ZwjSequence.new }

  describe "#with_vs_zwj_emojis" do
    let(:subject) { data.with_vs_zwj_emojis }

    it "22 sequences" do
      result = subject.size

      expect(result).to eq 22
    end
  end

  describe "#without_vs_zwj_emojis" do
    let(:subject) { data.without_vs_zwj_emojis }

    it "6 sequences" do
      result = subject.size

      expect(result).to eq 6
    end
  end
end
