class EmojiData
  PATH = File.expand_path("../UTR_51/emoji-data.txt".freeze, "lib/emoji/data".freeze)

  def initialize
    @raw_lines = IO.readlines(PATH)
    @emoji_lines = @raw_lines[20..158].map(&:chomp)
    @emoji_presentation_lines = @raw_lines[167..233].map(&:chomp)
    @emoji_modifier_line = @raw_lines[242].chomp
    @emoji_modifier_base_lines = @raw_lines[251..274].map(&:chomp)
  end

  def emojis
    @_emojis ||= emoji_lines.map do |line|
      DataBase.new(line)
    end
  end

  def emoji_presentations
    @_emoji_presentations ||= emoji_presentation_lines.map do |line|
      DataBase.new(line)
    end
  end

  def emoji_modifiers
    @_emoji_modifiers ||= Array(DataBase.new(emoji_modifier_line))
  end

  def emoji_modifier_bases
    @_emoji_modifier_bases ||= emoji_modifier_base_lines.map do |line|
      DataBase.new(line)
    end
  end

  def all
    [emojis, emoji_presentations, emoji_modifiers, emoji_modifier_bases].flatten(1)
  end

  private

    attr_reader :emoji_lines, :emoji_presentation_lines
    attr_reader :emoji_modifier_line, :emoji_modifier_base_lines
end
