class ClassesController < ApplicationController

  def list
    @user = Staff.find_by(staff_id: session[:id])
    @classes = Classes.all()
  end

  def show
    @user = Staff.find_by(staff_id: session[:id])
    @course = Classes.find_by(id: params[:format])
    @class_times = ClassTimes.where(class_code: @course.class_code)
    @classes = Classes.find_by(id: params[:format])
  end

  def update
    @user = Staff.find_by(staff_id: session[:id])
    @classes = Classes.find(params[:id])
    if @classes.update(classes_params)
      redirect_to list_path
    else
      render 'edit'
    end
  end

  def classes_params
    params.require(:classes).permit(:class_name, :class_code, :teacher_name, :description, :content)
  end
  # def edit
  #   if course[:user_id]
  #     @user = User.find_by(id: session[:user_id])
  #   end
  #   @course = Course.find(params[:id])
  # end
  #
  def edit
    @user = Staff.find_by(staff_id: session[:id])

    @classes= Classes.find(params[:id])

  end

  def new
    @user = Staff.find_by(staff_id: session[:id])

    @classes = Classes.new
  end


end