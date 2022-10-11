require_relative 'Student'
RSpec.describe Student do
  describe "to_s student method" do
    it "should print student correctly" do
      student = Student.new("Ivan",true,2,true,"15", "English")
      expect(student.to_s).to eq "Name: Ivan | Dorm: true | Experience: 2 | Teacher: true | School: 15 | Language: English"
    end
  end
end
