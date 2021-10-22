class ShortenerUrlDecodeSevice < ShortenerUrlBase
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def call
    return false if url.blank?
    index = 0
    url.each_char do |char|
      index = (index * alphabet_size) + alphabet_index_of_char(char)
    end
    index
  end
end
