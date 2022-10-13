class StaffController < ApplicationController
  def index
    @user = Staff.find_by(staff_id: session[:id])
  end
end
