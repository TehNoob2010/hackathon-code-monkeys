class StudentsController < ApplicationController
    def index
        @student = Student.all
        render json: @student
    end
    
    
    def create
        @user = User.find(params[:user_id])
        @student = Student.create({user_id: @user.id, rating: 3.0, rating_count: 1})
    end

    def show
        student = Student.find(params[:id])
        user = User.find(student.user_id)
        render :json => {:user => user, :student => student }
    end

    


end
