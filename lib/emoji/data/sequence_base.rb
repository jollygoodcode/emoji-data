class SequenceBase
  # Format:
  # codepoints ; # (sequence) description
  SEQUENCE_REGEXP = %r{
    (?<codepoints>.+)
    \#
    \s{1}
    \(
      (?<sequence>.+)
    \)
    \s{1}
    (?<description>.+)
  }x.freeze

  attr_reader :raw, :codepoints, :sequence, :description

  def initialize(raw)
    @raw = raw
    matched = raw.match(SEQUENCE_REGEXP)

    @codepoints = matched[:codepoints].rstrip
    @sequence = matched[:sequence]
    @description = matched[:description]
  end

  def to_h
    Hash(
      codepoints: codepoints,
      sequence: sequence,
      description: description
    )
  end
end
