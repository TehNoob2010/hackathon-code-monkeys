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
    
    
    def update_rate
            #if params[:update_rate].present? 
            tutor = Tutor.find(params[:id])
            rating = rate(params[:rating].to_f, params[:id])
            t_count = tutor.rating_count + 1
            Tutor.update(tutor.id, :rating => rating, :rating_count => t_count)
            render :json => {:done => "true"}
    end
    

    def create
        user = User.find(params[:user_id])
        tutor = Tutor.create({user_id: @user.id, rating: 3.5, rating_count: 1})
    end
    
    
    private
    def rate(new_rate, id)
        t_rating = Tutor.find(id).rating
        t_count =  Tutor.find(id).rating_count
        rating = ((t_rating * t_count) + new_rate) / (t_count + 1)
        rating
    end

end
