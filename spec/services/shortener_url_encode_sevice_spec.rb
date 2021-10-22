require "rails_helper"

RSpec.describe "ShortenerUrlEncodeSevice" do
  let(:number) { nil }
  let(:service) { ShortenerUrlEncodeSevice.call(number) }

  it { expect(service).to eq(false) }

  describe "with first number" do
    let(:number) { 0 }

    it { expect(service).to eq("a") }
  end

  describe "with valid number" do
    let(:number) { 19158 }

    it { expect(service).to eq("e9a") }
  end
end
