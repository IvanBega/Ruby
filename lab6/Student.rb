class Student
  attr_accessor :wasTeacher, :name, :requiredDorm, :experience, :school, :language

  def initialize(name, requiredDorm, experience,
                 wasTeacher, school, language)
    @name = name
    @requiredDorm = requiredDorm
    @experience = experience
    @school = school
    @language = language
    @wasTeacher = wasTeacher
  end
  def to_s
    "Name: #{@name} | Dorm: #{@requiredDorm} | Experience: #{@experience} | Teacher: #{@wasTeacher} | School: #{@school} | Language: #{@language}"
  end
end