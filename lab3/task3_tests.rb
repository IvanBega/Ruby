require_relative 'task3'
RSpec.describe Task3 do
  describe "A" do
    it "should return 1.5" do
      expect(subject.A).to be_within(0.001).of(1.5)
    end
  end
  describe "B" do
    it "should return 1.5" do
      expect(subject.B(1,0.2)).to be_within(0.001).of(2)
    end
  end
end