class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
  
  # def self.reviews
  #    Review.find(product_ids)
  # end
  # def users
  #   User.find(self.user_ids)
  # end
  
  # def print_all_reviews
  #   puts "Review for #{self.product_name} by #{self.users.user_name}: #{self.star_rating}. #{self.comments}"
  # end
  

  def leave_review(user,star_rating,comment) 
    Review.create(user, star_rating: star_rating,comment:comment)   

end

def print_all_reviews
 reviews = self.reviews.all
    reviews.each do |review|
        "Review for#{Product.name} by #{users.name}: #{reviews.star_rating} #{reviews.comment}"
    end
  end
  def average_rating
    reviews.average("star_rating"). to_f
  end
  
  end