require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def test_person_age
    person = Person.new("Ethel", 74)
    assert_equal(74, person.age)
  end

  def test_person_name
    person = Person.new("Ethel", 74)
    assert_equal("Ethel", person.name)
  end
end
