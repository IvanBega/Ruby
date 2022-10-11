require_relative 'task2'
RSpec.describe Task2 do
  describe "series sum" do
    it "should compute series sum correctly" do
      x = Task2.series_sum(0.1, 1) {|x, i| f1(x, i)}
      expect(x).to be_within(0.001).of(-1)
    end
  end
end