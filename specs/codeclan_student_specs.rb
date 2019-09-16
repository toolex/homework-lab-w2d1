require("minitest/autorun")
require("minitest/rg")
require_relative("../codeclan_student")

class TestStudentOne < MiniTest::Test

  def test_get_student_name
    student = StudentOne.new("Iain", "E34","Ruby")
    assert_equal("Iain", student.get_student_name())
  end

  def test_get_student_cohort
    student = StudentOne.new("Iain", "E34","Ruby")
    assert_equal("E34", student.get_student_cohort())
  end

  def test_set_student_name
    student = StudentOne.new("Iain", "E34","Ruby")
    student.set_student_name("Bob")
    assert_equal("Bob", student.get_student_name())
  end

  def test_set_student_cohort
    student = StudentOne.new("Iain", "E34","Ruby")
    student.set_student_cohort("E35")
    assert_equal("E35", student.get_student_cohort())
  end

  def test_student_speak
    student = StudentOne.new("Iain", "E34","Ruby")
    assert_equal("Iain likes Ruby", student.student_speak())
  end

end
