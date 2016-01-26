require "emoji/data/version"
require "emoji/data/data_base"
require "emoji/data/emoji_data"
require "emoji/data/sequence_base"
require "emoji/data/zwj_sequence"
require "emoji/data/sequence"

module Emoji
  module Data
    def self.emoji_data_json
      require "json"
      EmojiData.new.all.map(&:to_h).to_json
    end

    def self.emoji_sequences_json
      require "json"
      Sequence.new.all.map(&:to_h).to_json
    end

    def self.emoji_zwj_sequences_json
      require "json"
      ZwjSequence.new.all.map(&:to_h).to_json
    end

    def self.emoji_utr_51_json
      require "json"
      [EmojiData.new.all, Sequence.new.all, ZwjSequence.new.all].flatten(1).map(&:to_h).to_json
    end
  end
end
