class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]

  def index
    @courses = Course.all
    render json: @courses
  end


  def show
    if @course
      render json: @course
    else 
      render json:{"error":"not found"}, status: :not_found
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end


  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course.destroy
  end

  private
 
    def set_course
      @course = Course.find(params[:id])
    end

   
    def course_params
      params.require(:course).permit(:name, :d)
    end
end
