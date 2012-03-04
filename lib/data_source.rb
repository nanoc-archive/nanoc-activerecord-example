require 'active_record'

class PeopleDataSource < Nanoc3::DataSource

  identifier :people

  def up
    ActiveRecord::Base.establish_connection(@site.config[:database])
  end

  def items
    Person.all.map do |p|
      slug = (p.last_name + ' ' + p.first_name).downcase.gsub(/[^a-z]/, '-')
      Nanoc3::Item.new(
        p.bio, #content
        { :first_name => p.first_name, :last_name => p.last_name },
        "/people/#{slug}")
    end
  end
end
