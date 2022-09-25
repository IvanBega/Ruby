require_relative 'task4'
RSpec.describe Task4 do
  describe "series1" do
    it "should return 2*10^-5" do
      expect(subject.series1).to be_within(0.001).of(2.143347061970123e-05)
    end
  end
  describe "series2" do
    it "should return 2/3" do
      expect(subject.series2).to be_within(0.001).of(0.66666666)
    end
  end
  describe "series3" do
    it "should return 0.0046" do
      expect(subject.series3).to be_within(0.001).of(0.0046388)
    end
  end
end
