class ZwjSequence
  PATH = File.expand_path("../UTR_51/emoji-zwj-sequences.txt".freeze, "lib/emoji/data".freeze)

  def initialize
    @raw_lines = IO.readlines(PATH)
    @_with_vs_zwj_lines = @raw_lines[18..39].map(&:chomp)
    @_without_vs_zwj_lines = @raw_lines[47..52].map(&:chomp)
  end

  def with_vs_zwj_emojis
    @_with_vs_zwj_emojis ||= _with_vs_zwj_lines.map do |line|
      SequenceBase.new(line)
    end
  end

  def without_vs_zwj_emojis
    @_without_vs_zwj_emojis ||= _without_vs_zwj_lines.map do |line|
      SequenceBase.new(line)
    end
  end

  def all
    [with_vs_zwj_emojis, without_vs_zwj_emojis].flatten(1)
  end

  private

    attr_reader :raw_lines, :_with_vs_zwj_lines, :_without_vs_zwj_lines
end
