require_relative 'College'
RSpec.describe College do

  describe "add student method" do
    it "should add student to general student list" do
      expect(subject.students.length).to eq 0
      student = Student.new("Ivan",true,2,true,"15", "English")
      subject.addStudent(student)
      expect(subject.students.length).to eq 1
      expect(subject.students[0].name).to eq "Ivan"
    end
  end

  describe "student counter" do
    it "should calculate students who require dorms" do
      student1 = Student.new("Ivan",true,2,true,"15", "English")
      student2 = Student.new("John",false,6,false,"5", "French")
      student3 = Student.new("Adam",true,1,true,"PTU 12", "English")
      student4 = Student.new("Lindsay",true,2,true,"145", "French")
      student5 = Student.new("Nick",false,1,true,"PTU of engineering", "English")
      subject.addStudent(student1)
      subject.addStudent(student2)
      subject.addStudent(student3)
      subject.addStudent(student4)
      subject.addStudent(student5)

      expect(subject.requireDormCount).to eq 3
    end
    it "should count students who finished PTU" do
      student1 = Student.new("Ivan",true,2,true,"15", "English")
      student2 = Student.new("John",false,6,false,"5", "French")
      student3 = Student.new("Adam",true,1,true,"PTU 12", "English")
      student4 = Student.new("Lindsay",true,2,true,"145", "French")
      student5 = Student.new("Nick",false,1,true,"PTU of engineering", "English")
      subject.addStudent(student1)
      subject.addStudent(student2)
      subject.addStudent(student3)
      subject.addStudent(student4)
      subject.addStudent(student5)
      expect(subject.requireDormCount).to eq 3
    end
  end
end
