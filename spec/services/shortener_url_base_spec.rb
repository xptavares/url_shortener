require "rails_helper"

RSpec.describe "ShortenerUrlBasev" do
  describe "#alphabet_size" do
    it { expect(ShortenerUrlBase.new.alphabet_size).to eq(62) }
  end

  describe "#alphabet_index_of_char" do
    let(:char) { "a" }
    it { expect(ShortenerUrlBase.new.alphabet_index_of_char(char)).to eq(0) }

    context "with char 9" do
      let(:char) { "9" }
      it { expect(ShortenerUrlBase.new.alphabet_index_of_char(char)).to eq(61) }
    end
  end
end
