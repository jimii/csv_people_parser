#!/usr/bin/env ruby
require_relative 'environment'

people = []
ARGV.each do |file|
  people_to_merge = PeopleParser.new(File.open(file)).people
  people += people_to_merge
end

puts "name,lastname"
people.each { |p| puts "#{p.name},#{p.last_name}" }