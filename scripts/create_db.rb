require 'active_record'

ActiveRecord::Base.establish_connection(
  YAML.load_file('config.yaml')['database'])

ActiveRecord::Schema.define do
  create_table :people do |table|
    table.column :first_name,    :string
    table.column :last_name,     :string
    table.column :bio,           :string
  end
end
