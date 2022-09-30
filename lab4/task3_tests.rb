require_relative 'task3'
RSpec.describe Task3 do
  describe "solveGauss" do
    it "should solve systems of equation" do
      a = subject.getMatrix(4, 4)
      b = subject.getVector(4)
      vector = subject.solveGauss(a, b)
      array = [1, 2, 3, 4]
      expect(array).should =~ vector
    end
  end
end
