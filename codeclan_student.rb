class StudentOne

  def initialize(name_of_student, cohort_of_student, coding_language)
    @student_name = name_of_student
    @cohort = cohort_of_student
    @code = coding_language
  end

  def get_student_name()
    return @student_name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end
  #
  def student_speak()
    return "#{@student_name} likes #{@code}"
  end


end
