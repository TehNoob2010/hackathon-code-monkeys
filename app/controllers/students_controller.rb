class StudentsController < ApplicationController
    def index
        @student = Student.all
        render json: @student
    end
    
    
    def create
        user = User.find(params[:user_id])
        student = Student.create({user_id: @user.id, rating: 3.0, rating_count: 1})
    end

    def show
        student = Student.find(params[:id])
        user = User.find(student.user_id)
        render :json => {:user => user, :student => student }
    end

    
    def update_rate
            #if params[:update_rate].present? 
        student = Student.find(params[:id])
        rating = rate(params[:rating].to_f, params[:id])
        t_count = student.rating_count + 1
        Student.update(student.id, :rating => rating, :rating_count => t_count)
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
