class TutorsController < ApplicationController
    def index
      tutor = Tutor.all
      render json: tutor
    end

    def show
        tutor = Tutor.find(params[:id])
        user = User.find(tutor.user_id)

        render :json => {:user => user, :tutor => tutor }
    end

    def new
        @tutor = Tutor.new
    end

    def create
        @user = User.find(params[:user_id])
        @tutor = Tutor.new({user_id: @user.id, rating: 3.5, rating_count: 1, linkedin_ID: params[:linkedin_ID]})
        @tutor.save
        render json: { :done => "true" }
    end

    def update_rate
            #if params[:update_rate].present?
            tutor = Tutor.find(params[:id])
            t_rating = rate(params[:tutor_rate].to_f, tutor.id)
            t_count = tutor.rating_count + 1
            Tutor.update(tutor.id, :rating => t_rating, :rating_count => t_count)

            course = Course.find(params[:course_id])
            c_rating = course_rate(params[:course_rate].to_f, tutor.id)
            c_count = course.rating_count + 1

            Course.update(course.id, :rating => c_rating, :rating_count => t_count)
            render :json => {:done => "true"}
    end

    private
      def rate(new_rate, id)
          t_rating = Tutor.find(id).rating
          t_count =  Tutor.find(id).rating_count
          rating = ((t_rating * t_count) + new_rate) / (t_count + 1)
          rating
      end

      def course_rate(new_rate, id)
          c_rating = Course.find_by(tutor_id:id).rating
          c_count =  Course.find_by(tutor_id:id).rating_count
          rating = ((c_rating * c_count) + new_rate) / (c_count + 1)
          rating
      end

end
