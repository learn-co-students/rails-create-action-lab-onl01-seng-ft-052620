class StudentsController < ApplicationController
  # before_action :set_student, except: [:index, :new, :create]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end 
  
  def create
    @student = Student.create(
          {
          first_name: params[:first_name],
          last_name: params[:last_name]
          }
        )
      redirect_to student_path(@student)
  end
end
  
  #  private

  #   def set_student
  #     @student = Student.find_by_id(params[:id])
  #   end 

  #   def student_params
  #     params.require(:student).permit(:first_name, :last_name)
  #   end


