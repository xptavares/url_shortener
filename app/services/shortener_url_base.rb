class ShortenerUrlBase < ApplicationService
  ALPHABET = (("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a).join

  def alphabet_size
    @alphabet_size ||= ALPHABET.size
  end

  def alphabet_index_of_char(char)
    ALPHABET.index(char)
  end
end
