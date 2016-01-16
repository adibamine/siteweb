class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   def index
   	render :file => 'pages/home.html.erb' and return
   end

   def about
	render :file => 'pages/about.html.erb' and return
  	end

end
