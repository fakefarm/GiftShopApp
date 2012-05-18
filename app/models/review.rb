class Review < ActiveRecord::Base
  attr_accessible :description, :name, :product_id, :user_id
  belongs_to :product, :user

  validates :rating, :numericality => { :only_integer => true
                                        :greater_than_or_equal_to => 1,
                                        :less_than_or_equal_to => 5    }  

  validates :title, :presence => true
  validates :body, :presence => true
                                      
end
