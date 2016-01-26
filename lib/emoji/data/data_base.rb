class DataBase
  # Format:
  # codepoint(s) ; property=Yes # [count] (character(s)) name
  DATA_REGEXP = %r{
    (?<codepoints>.+);
    \s{1}
    (?<property>(Emoji_Modifier_Base|Emoji_Presentation|Emoji_Modifier|Emoji))
    \s+
    \#
    \s+
    \[
      (?<count>\d+)
    \]
    \s{1}
    \((?<characters>.+)\)
    \s+
    (?<name>.+)
  }x.freeze

  attr_reader :raw, :codepoints, :property, :count, :characters, :name

  def initialize(raw)
    @raw = raw
    matched = raw.match(DATA_REGEXP)

    @codepoints = matched[:codepoints].rstrip
    @property = matched[:property]
    @count = matched[:count]
    @characters = matched[:characters]
    @name = matched[:name]
  end

  def to_h
    Hash(
      codepoints: codepoints,
      property: property,
      count: count,
      characters: characters,
      name: name
    )
  end
end
