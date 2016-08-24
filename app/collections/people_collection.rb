class PeopleCollection < Array
  include CollectionStatistics

  def self.from_raw_people(raw_people)
    new(raw_people.map { |raw_person| Person.new(raw_person) })
  end
end