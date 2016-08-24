require "minitest/autorun"
require_relative '../../environment'

class TestPeopleParser < Minitest::Test
  def sample_csv
    File.expand_path("../../data/sample.csv", __FILE__)
  end

  def parser
    PeopleParser.new(File.open(sample_csv))
  end

  def people
    parser.people
  end

  def test_import_persons
    assert_equal 7, people.count
    assert_equal "Maciej", people.first.name
  end
end
