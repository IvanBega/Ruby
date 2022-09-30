require_relative 'task2'
RSpec.describe Task2 do
  describe "getMatrix" do
    it "should return matrix with diagonal elements equal to 1" do
      matrix = subject.getMatrix(3)
      3.times {
        |i|
        3.times {
          |j|
          if (i == j)
            expect(matrix[i][j]).to eq 1
          end
        }
      }
    end
  end
  describe "addMatrices" do
    it "should add two matrices correctly" do
      a = subject.getMatrix(5)
      b = subject.getMatrix(5)
      c = subject.addMatrices(a, b)
      5.times {
        |i|
        5.times {
          |j|
          value = a[i][j] + b[i][j]
          expect(value).to eq c[i][j]
        }
      }
    end
  end
end
