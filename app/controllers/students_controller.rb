class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    
  end

   def activate
    @student = Student.find(params[:id]) 
    #"switch" if they're active or not
    if params[:id] == "activate"
      @students = Student.active
    else
      @students = Student.unactive
    end
    
    redirect "/students/#{@student.id}"
   end

  private

    def set_student
      @student = Student.find(params[:id])
    end

  
end