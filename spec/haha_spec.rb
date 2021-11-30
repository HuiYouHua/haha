require 'haha'
RSpec.describe Haha do
  it "has a version number" do
    expect(Haha::VERSION).not_to be nil
  end

  it "does something userful" do
    expect(false ).to eq(true)
  end

  it "unit test Haha::Writer#run" do
    expect(Haha::Writer.new.run(9)).to eq(10)
  end
end