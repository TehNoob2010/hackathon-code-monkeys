class Course < ApplicationRecord
  belongs_to :tutor
    
    def rate(new_rate)
        rating = ((rating * rating_count) + new_rate) / (rating_count + 1)
        rating_count = rating_count + 1
    end     
    
end
