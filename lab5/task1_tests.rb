require_relative 'task1'
RSpec.describe Task1 do
  describe "integrate rectangle" do
    it "should return correct result of rectangle integration" do
      x = Task1.integrate_rectangle(0.3, 1, 1000.0) {|x| f1(x)}
      expect(x).to be_within(0.001).of(0.525)
    end
    it "should return correct result of trapezoid integration" do
    x = x = Task1.integrate_trapezoid(0.3, 1, 1000.0) {|x| f1(x)}
    expect(x).to be_within(0.001).of(0.524)
    end
  end
end
