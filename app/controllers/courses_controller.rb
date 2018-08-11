class CoursesController < ApplicationController

    def index
      @courses = Course.all
      render json: @courses
    end

    def create
        @tutor = Tutor.find(params[:id])
        @course = Course.new(course_params)
        @course.save
    end

    private
        def course_params
            params.require(@tutor.id, :score).permit(:rating)
        end


end
