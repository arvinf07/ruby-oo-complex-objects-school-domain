require 'pry'

class School

  attr_reader :name, :roster

  def initialize(school)
    @name = school
    @roster = {}
  end  

  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else 
      @roster[grade] = []
      @roster[grade] << student  
    end  
  end
  
  def grade(grade)
    if @roster.keys.include?(grade)
      @roster[grade]
    else
      puts "This grade does not exist"  
    end  
  end  

  def sort
    @roster.collect {|grade, students|  @roster[grade] = students.sort}
    @roster
  end  
  
end
