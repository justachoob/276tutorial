require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test	"pname	begins	with	alphabet"	do
			#	your	test	code	goes	here
			p = Person.new
			p.pname = "2legit"
			assert_not p.save
			
	end
end
