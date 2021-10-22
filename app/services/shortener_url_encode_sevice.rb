class ShortenerUrlEncodeSevice < ShortenerUrlBase
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def call
    return false if number.blank?
    return ALPHABET.first if number == 0
    shorted = ""
    while number > 0 do
      shorted << ALPHABET[number.modulo(alphabet_size)]
      @number = number / alphabet_size
    end
    shorted.reverse
  end
end
