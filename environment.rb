Dir[File.expand_path('lib/**/*.rb', File.dirname(__FILE__))].each { |file| require file }
Dir[File.expand_path('app/**/*.rb', File.dirname(__FILE__))].each { |file| require file }