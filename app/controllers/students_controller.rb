class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    #do not delete below
    @user = Staff.find_by(staff_id: session[:id])

    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    #do not delete below
    @user = Staff.find_by(staff_id: session[:id])
  end

  # GET /students/new
  def new
    #do not delete below
    @user = Staff.find_by(staff_id: session[:id])
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    #do not delete below
    @user = Staff.find_by(staff_id: session[:id])
  end

  # POST /students
  # POST /students.json
  def create

    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to index_path, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_student
    #do not delete below
    @user = Staff.find_by(staff_id: session[:id])
    @student = Student.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def student_params
    params.require(:student).permit(:student_id, :first_name, :last_name, :password)
  end
end
