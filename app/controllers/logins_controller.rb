class LoginsController < ApplicationController
  def new
		
  end

  def create
	 user = User.find_by_login(params['login'])
  end

  def destroy
  end
end



#  logger.debug "Helllllooooooooooo!"
  
  user = User.find_by_login(params['login'])
  if user
    if user.authenticate(params[:password])
      flash[:notice] = "Hello, #{user.name}!"
      session[:login_id] = user.id
      redirect_to root_url
    else
      flash[:notice] = "Wrong Password"
      redirect_to root_url
    end
  else
    flash[:notice] = "Unknown Login"
    redirect_to root_url
  end
end