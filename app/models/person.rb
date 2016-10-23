class Person < ActiveRecord::Base
  has_many :things
  def display_name
    "#{pname}"
  end
end
