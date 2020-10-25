class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def average_start_rating
    reviews.sum { |review| review.rating }.to_f / reviews.count
  end

  def self.order_by_name
    Restaurant.order(:name)
  end
end
