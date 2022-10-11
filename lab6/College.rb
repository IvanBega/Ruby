require_relative 'Student'
class College
  attr_reader :students

  def initialize()
    @students = []
  end
  def addStudent(student)
    @students.push(student)
  end
  def printStudents
    @students.each do |s|
      puts s.to_s
    end
  end
  def requireDormCount
    count = 0;
    @students.each do |s|
      count += 1 if s.requiredDorm
    end
    count
  end
  def printTeachersWithTwoOrMoreYears
    count = 0
    puts "\nList of students, who work as a teachers and have at least 2 years of experience: "
    @students.each do |s|
        puts s.to_s if s.wasTeacher && s.experience >= 2
        count += 1 if s.wasTeacher && s.experience >= 2
    end
    puts ""
    count
  end
  def printFinishedPTU
    puts "\nList of students, who finished PTU: "
    count = 0
    @students.each do |s|
      count += 1 if s.school.start_with?('PTU')
      puts s.to_s if s.school.start_with?('PTU')
    end
    puts ""
    count
  end

  def printLanguageGroups
    studentsByGroups = @students.sort{|a, b| a.language <=> b.language}
    groups = Array.new
    i = 0
    j = 0
    while i < studentsByGroups.length do
      current_group = studentsByGroups[i].language
      groups[j] = Array.new
      groups[j].push(studentsByGroups[i])
      while i+1 < studentsByGroups.length && current_group == studentsByGroups[i + 1].language do
        groups[j].push(studentsByGroups[i+1])
        i += 1
      end
      i += 1
      j += 1
    end
    puts "\nLanguage groups:"
    groups.each do |g|
      puts g[0].language
      g.each do |s|
        print "   "
        puts s.to_s
      end
    end
  end
end

student1 = Student.new("Ivan",true,2,true,"15", "English")
student2 = Student.new("John",false,6,false,"5", "French")
student3 = Student.new("Adam",true,1,true,"PTU 12", "English")
student4 = Student.new("Lindsay",true,2,true,"145", "French")
student5 = Student.new("Nick",false,1,true,"PTU of engineering", "English")
college = College.new()
college.addStudent(student1)
college.addStudent(student2)
college.addStudent(student3)
college.addStudent(student4)
college.addStudent(student5)
college.printLanguageGroups