require "rails_helper"

RSpec.describe "ShortenerUrlDecodeSevice" do
  let(:url) { nil }
  let(:service) { ShortenerUrlDecodeSevice.call(url) }

  it { expect(service).to eq(false) }

  describe "with a valid url" do
    let(:url) { "e9a" }

    it { expect(service).to eq(19158) }
  end
end
