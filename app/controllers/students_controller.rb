class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    student = Student.new 
    student.first_name = params[:students][:first_name]
    student.last_name = params[:students][:last_name]
    student.save
    redirect_to Student.last
  end

end
