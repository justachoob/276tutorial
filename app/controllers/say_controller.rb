class SayController < ApplicationController
  def hello
    @form_name = params[:form_name]
  end

  def goodbye
    @time = Time.now
  end

  # PLEASE note: the path to this action must be added
  # in routes.rb 
  def decision
    say_what = params[:say]

    if (say_what == 'bye')
      redirect_to(:controller => 'say', :action => 'goodbye')
    else

      redirect_to(:controller => 'say', :action => 'hello', :form_name => params[:name])
    end
  end
end
