class Person < ActiveRecord::Base
  has_many :things
  def display_name
    "#{pname}"
  end
  NAME_REGEX	=	/\A[A-Za-z].*\Z/i
		 	validates_format_of	:pname,	:with	=>	NAME_REGEX
		 	validates_length_of	:pname,	:maximum	=>	10
end
