require 'mongoid'
require "#{File.dirname(__FILE__)}/app/model/patient"

# Load mongodb connection configuration and connect to it
Mongoid.load!(File.dirname(__FILE__) + '/config/mongoid.yml', :development)

begin
  patients = Patient.all
  puts "============ Found #{patients.count} patients"

rescue => exception
  puts "Error occurred while running tutorial app. Error: #{exception.message}"
end