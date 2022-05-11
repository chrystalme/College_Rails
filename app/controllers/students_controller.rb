class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Registration succeeded!"
      redirect_to root_path
    else
      render :new
    end
  end

  def update

  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :password, :email)
  end
end
