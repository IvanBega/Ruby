require_relative 'task1'
RSpec.describe Task1 do
  describe "result1" do
    it "should return false" do
      expect(subject.result1).to eq false
    end
  end
  describe "result2" do
    it "should return false" do
      expect(subject.result2).to eq false
    end
  end
  describe "result3" do
    it "should return false" do
      expect(subject.result3).to eq false
    end
  end
  describe "result4" do
    it "should return false" do
      expect(subject.result4).to eq false
    end
  end
  describe "result5" do
    it "should return false" do
      expect(subject.result5).to eq false
    end
  end
  describe "result6" do
    it "should return false" do
      expect(subject.result1).to eq false
    end
  end
  describe "result7" do
    it "should return false" do
      expect(subject.result7).to eq true
    end
  end
  describe "result8" do
    it "should return false" do
      expect(subject.result8(false, 4)).to eq false
    end
  end
end
