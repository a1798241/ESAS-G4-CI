class LoginController < ApplicationController
  def index
    if params[:id] != nil
      session[:id] = params[:id]
    end

    id = session[:id]

    if Student.exists?(student_id: id) #&& Student.password == params[:password]
      redirect_to index_path(id), notice: "Logged in successfully"

    elsif Staff.exists?(staff_id: id)
      redirect_to staff_index_path(id)
    # else
    #   flash[:alert] = "invalid ID or password"
    end
  end

  def destroy
    session.clear
    redirect_to login_index_path
  end
end
