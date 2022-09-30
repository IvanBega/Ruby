require_relative 'task1'
RSpec.describe Task1 do
  describe "result1" do
    it "should return correct sum and sum of indexes" do
      sum, index_sum = subject.compute
      expect(sum).to eq 554
      expect(index_sum).to eq 76
    end
  end
end
