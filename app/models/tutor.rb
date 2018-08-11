class Tutor < ApplicationRecord
  belongs_to :user

    def rate(new_rate)
        self.rating = ((self.rating * self.rating_count) + new_rate) / (self.rating_count + 1)
        self.rating_count = self.rating_count + 1
    end


end
