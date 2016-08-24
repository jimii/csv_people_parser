#!/usr/bin/env ruby
require_relative 'environment'

# check input
if not STDIN.tty? and not STDIN.closed?
  people = PeopleParser.new(STDIN.read).people
  people.uniq(&:full_name).each { |p| puts p }
else
  puts "please use #{$PROGRAM_NAME} < input_file"
end