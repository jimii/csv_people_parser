#!/usr/bin/env ruby
require_relative 'environment'

# check input
if not STDIN.tty? and not STDIN.closed?
  people = PeopleParser.new(STDIN.read).people
  puts ">> Nazwiska"
  people.count_by(&:last_name).each { |name, count| puts "#{name} (#{count})" }
  puts ">> Imiona"
  people.count_by(&:name).each { |name, count| puts "#{name} (#{count})" }
else
  puts "please use #{$PROGRAM_NAME} < input_file"
end