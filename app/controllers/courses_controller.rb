class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]
  rescue_from ::ActiveRecord::RecordNotFound, with: :record_not_found

#Method to show all courses#
  def index
    @courses = Course.all
    render json: @courses
  end

#Method to show specific course#
  def show
      render json: @course
  end

  #Method to create a course#
  def create
    @course = Course.new(course_params)
    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  #Method to update a course#
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end


#Method to delete a specific course#
  def destroy
    @course.destroy
  end


  private

  #Method that set the global variable to the specific course for the show, destroy, or update method#
    def set_course
      @course = Course.find(params[:id])
    end

  #Method to handle the no record found#
    def record_not_found(exception)
      render json: {error: "No course found"}, status: :not_found
    end

    #Method to allow specific params#
    def course_params
      params.require(:course).permit(:name)
    end
end
