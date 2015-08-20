# Implementing Grade School
class School
  def initialize
    @grade_school = {}
  end

  def add(student, grade)
    if @grade_school.key?(grade)
      @grade_school[grade].push(student)
    else
      @grade_school[grade] = [].push(student)
    end
  end

  def to_hash
    temp = {}
    sorted_keys = @grade_school.keys.sort
    sorted_keys.each do |key|
      temp[key] = @grade_school[key].sort
    end
    temp
  end

  def grade(grade_key)
    return [] unless @grade_school.key?(grade_key)
    @grade_school[grade_key].sort
  end
end
