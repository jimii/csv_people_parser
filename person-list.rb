#!/usr/bin/env ruby
require_relative 'environment'

options = {
  sort_by_name:       "--sort-by-name-last_name",
  sort_by_last_name:  "--sort-by-last_name-name",
  display:            "--options"
}

def print_options(options)
  puts "Usage #{$PROGRAM_NAME} [options] < input_file"
  puts "Options:"
  options.each { |o, v| puts v }
  exit 0
end

# get argv
unless ARGV.empty?
  # check options
  if ARGV.first.start_with?("-")
    case ARGV.shift
      when options[:sort_by_name]
        sort_by_name = true
      when options[:sort_by_last_name]
        sort_by_last_name = true
      when options[:display]
        print_options(options)
    end
  end
end

# check stream
if not STDIN.tty? and not STDIN.closed?
  people = PeopleParser.new(STDIN.read).people
  people.sort_by!(&:full_name) if sort_by_name
  people.sort_by!(&:full_name_inverse) if sort_by_last_name
  people.each { |person| puts person }
else
  print_options(options)
end