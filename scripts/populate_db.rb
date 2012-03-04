require 'active_record'

require './lib/models.rb'

ActiveRecord::Base.establish_connection(
  YAML.load_file('config.yaml')['database'])

Person.new(
  :first_name => 'Denis',
  :last_name  => 'Defreyne',
  :bio        => 'Blah blah blah').save

Person.new(
  :first_name => 'George',
  :last_name  => 'Lucas',
  :bio        => 'Lightsabers, yeah!').save

Person.new(
  :first_name => 'Max',
  :last_name  => 'Payne',
  :bio        => 'Did Mona really die in that elevator?').save
