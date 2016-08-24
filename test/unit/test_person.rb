require "minitest/autorun"
require_relative '../../environment'

class TestPerson < Minitest::Test
  def person
    Person.new(name: 'John', last_name: 'Doe')
  end

  def test_validate_attrs
    assert_raises(ArgumentError){ Person.new }
    assert_raises(ArgumentError){ Person.new(last_name: 'Doe') }
    assert_raises(ArgumentError){ Person.new(name: 'John') }
    assert_instance_of Person, person
  end
end