require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a.rb')

class TestClassHomeworkPartA < Minitest::Test

  def setup
    @codeclanstudent = CodeClanStudent.new("Chris", "G15")
  end


  def test_get_name()
    assert_equal("Chris", @codeclanstudent.name())
  end

  def test_get_cohort()
    assert_equal("G15", @codeclanstudent.cohort())
  end

  def test_set_name()
    @codeclanstudent.set_name("Neil")
    assert_equal("Neil", @codeclanstudent.name())
  end

  def test_set_cohort()
    @codeclanstudent.set_cohort("G15")
    assert_equal("G15", @codeclanstudent.cohort())
  end

  def test_student_talk()
    assert_equal("I can talk", @codeclanstudent.student_talk())
  end

  def test_get_student_fav_language()
    assert_equal("I love Ruby", @codeclanstudent.get_student_fav_language("Ruby"))
  end

end
