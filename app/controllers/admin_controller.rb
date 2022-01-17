class AdminController < ApplicationController
  def login
    if request.post?
      if params[:username] == "admin" && params[:password] == "admin@123"
        session[:admin] = "admin"
        flash[:notice] = "Welcome User, you are Successfully Login...!"
        redirect_to :controller=>:students, :action=>:index
      else
        flash[:notice] = "Invalid User and Password...!"
        render :action=>:login
      end
    end
  end
  def logout 
    flash[:notice] = "you are successfully logout...!"
    session[:admin] = nil
    redirect_to :controller=>:admin, :action=>:login
  end
end
