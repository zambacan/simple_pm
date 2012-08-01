class SessionsController < ApplicationController
  # def create
  #     user = User.find_by_email(params[:session][:email])
  #     if user && user.authenticate(params[:session][:password])
  #       # success then we need to display the profile page
  #     else
  #       # not quite right we need to render the sign in page again
  #        flash[:error] = "Invalid: forget it it buddy!"
  #       render 'new'
  #     end
  #   end
  #   def destroy
  #   end
  #   
  def new
  end

   def create
     user = User.find_by_email(params[:session][:email])
     if user && user.authenticate(params[:session][:password])
       # Sign the user in and redirect to the user's show page.
       sign_in user
       redirect_to user
       
     else
       flash.now[:error] = 'Invalid email/password combination' # Not quite right!
       render 'new'
     end
   end

   def destroy
     sign_out
     redirect_to root_path
   end
end
