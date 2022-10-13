class IndexController < ApplicationController
  def index
    @user = Student.find_by(student_id: session[:id])
    end

end
