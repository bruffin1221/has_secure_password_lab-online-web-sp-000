class SessionsController < ApplicationController

def new 
end 

def create
    @user = User.find_by(name: params[:user][:name])
    if @user  && @user.authenticate(params[:user][:password])
        session[:user_id]=@user.id
        redirect_to '/welcome'
    else
        redirect_to '/login'
    end
end


    
    
    #if @user && @user.authenticate(params[:password])
        #session[:name]=@user.name
     #   session[:user_id] = @user.id
        



def welcome

end 


end