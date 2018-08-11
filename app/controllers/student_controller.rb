class StudentController < ApplicationController
    
    def create
        @user = User.find(params[:user_id])
        @student = Student.create({user_id: @user.id, rating: 3.0})
    end
    


end
