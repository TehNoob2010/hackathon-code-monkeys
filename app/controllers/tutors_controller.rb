class TutorsController < ApplicationController
    def index
      render json: Tutor.all
    end

    def show
      @tutor = Tutor.find(params[:id])
      @user = User.find(@tutor.user_id)
      @both = @tutor.merge(@user)
      render json: @both
    end

    def create
        @user = User.find(params[:user_id])
        @tutor = Tutor.create({user_id: @user.id, rating: 3.5, rating_count: 1})
    end
    def rate(rating)
        @tutor = Tutor.find params[:id]
        @tutor.rating = ((@tutor.rating * @tutor.rating_count) + rating ) / (@tutor.rating_count + 1)
        @tutor.rating_count = @tutor.rating_count + 1
    end


    def mergejson(*args)
      merged = {}
      args.each do |a|
        merged.merge!(a.is_a?(Hash) ? a : a.first)
        # or use .deep_merge! if the hashes can contain nested hashes
      end
      return merged
    end

end
