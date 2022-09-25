require_relative 'task2'
RSpec.describe Task2 do
  describe "Y" do
    it "should return correct value of function Y" do
      expect(subject.Y(100)).to eq 0
    end
    it "should return correct value" do
      expect(subject.Y(0.1)).to eq 0.3246747573169834
    end
  end
end
