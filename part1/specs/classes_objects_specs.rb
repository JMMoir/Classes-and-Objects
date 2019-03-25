require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_objects.rb')

class ClassObjectsTest < MiniTest::Test

  def test_get_student_name
    cohort = Cohort.new('John', 'G12')
    assert_equal('John', cohort.get_student_name)
  end

  def test_get_cohort_number
    cohort = Cohort.new('John', 'G12')
    assert_equal('G12', cohort.get_cohort_number)
  end

  def test_set_student_name
    cohort = Cohort.new('John', 'G12')
    cohort.set_student_name("Duncan")
    assert_equal('Duncan', cohort.get_student_name)
  end

  def test_set_cohort_number
    cohort = Cohort.new('John', 'G12')
    cohort.set_cohort_number('G10')
    assert_equal('G10', cohort.get_cohort_number)
  end

  def test_can_the_student_talk
    cohort = Cohort.new('John', 'G12')
    assert_equal("I can talk!", cohort.talk)
  end

  def test_favourite_langauge
    cohort = Cohort.new('John', 'G12')
    assert_equal('I love Ruby', cohort.fav_lang("Ruby"))
  end
end
