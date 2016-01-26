require "spec_helper"

describe Emoji::Data do
  it "has a version number" do
    expect(Emoji::Data::VERSION).not_to be nil
  end

  it "exports json without error" do
    expect { Emoji::Data.emoji_utr_51_json }.not_to raise_error
  end
end
