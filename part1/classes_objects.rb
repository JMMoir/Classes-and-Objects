class Cohort

  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort_number = cohort_number
  end

  def get_student_name
    return @student_name
  end

  def get_cohort_number
    return @cohort_number
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_cohort_number(number)
    @cohort_number = number
  end

  def talk()
    return "I can talk!"
  end

  def fav_lang(fav_lang)
    return "I love #{fav_lang}"
  end
end
