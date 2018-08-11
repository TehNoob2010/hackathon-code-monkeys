class TutorController < ApplicationController

    def create
        @user = User.find(params[:user_id])
        @tutor = Tutor.create({user_id: @user.id, rating: 3.5})
    end
    
    def rate(rating)
        @tutor = Tutor.find params[:id]
        @tutor.rating = ((@tutor.rating * @tutor.rating_count) + rating ) / (@tutor.rating_count + 1)
        @tutor.rating_count = @tutor.rating_count + 1
    end 




end
