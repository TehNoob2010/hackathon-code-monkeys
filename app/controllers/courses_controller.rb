class CoursesController < ApplicationController

    def index
      courses = Course.all
      render json: courses
    end

    def create
        tutor = Tutor.find(params[:id])
        course = Course.new(course_params)
        course.save
    end

    private
        def course_params
            params.require(@tutor.id, :score).permit(:rating)
        end

    
    def update_rate
            #if params[:update_rate].present? 
        course = Course.find(params[:id])
        rating = rate(params[:rating].to_f, params[:id])
        t_count = course.rating_count + 1
        Course.update(course.id, :rating => rating, :rating_count => t_count)
        render :json => {:done => "true"}
    end
    
    private
        def rate(new_rate, id)
            t_rating = Tutor.find(id).rating
            t_count =  Tutor.find(id).rating_count
            rating = ((t_rating * t_count) + new_rate) / (t_count + 1)
            rating
    end

end
