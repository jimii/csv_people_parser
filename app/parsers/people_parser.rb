require 'csv'
class PeopleParser
  attr_accessor :input

  def initialize(input)
    self.input = input
  end

  def options
    {
      headers: true,
      header_converters: :person_header,
      skip_blanks: true
    }
  end

  def raw_people() parse end

  def people
    PeopleCollection.from_raw_people(raw_people)
  end

  def import_content
    CSV::HeaderConverters[:person_header] = lambda{ |s| s.gsub('lastname', 'last_name').to_sym }
    CSV(input, options)
  end

  private

  def parse
    import_content
  end
end