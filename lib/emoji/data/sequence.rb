class Sequence
  PATH = File.expand_path("../UTR_51/emoji-sequences.txt".freeze, "lib/emoji/data".freeze)

  def initialize
    @raw_lines = IO.readlines(PATH)
    @_combining_lines = @raw_lines[18..29].map(&:chomp)
    @_flag_lines = @raw_lines[37..293].map(&:chomp)
    @_modifier_lines = @raw_lines[301..620].map(&:chomp)
  end

  def combining_emojis
    @_combining_emojis ||= _combining_lines.map do |line|
      SequenceBase.new(line)
    end
  end

  def flag_emojis
    @_flag_emojis ||= _flag_lines.map do |line|
      SequenceBase.new(line)
    end
  end

  def modifier_emojis
    @_modifier_emojis ||= _modifier_lines.map do |line|
      SequenceBase.new(line)
    end
  end

  def all
    [combining_emojis, flag_emojis, modifier_emojis].flatten(1)
  end

  def as_json
    require "json"
    all.map(&:to_h).to_json
  end

  private

    attr_reader :_combining_lines, :_flag_lines, :_modifier_lines
end
