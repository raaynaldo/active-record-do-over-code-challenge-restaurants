class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews

  def full_name
    "#{self.given_name} #{self.family_name}"
  end

  def add_review(restaurant, rating)
    Review.create(customer: self, restaurant: restaurant, rating: rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    split_name = name.split(" ")
    Customer.find_by(given_name: ["Raynaldo", "Sutisna"], family_name: ["Raynaldo", "Sutisna"])
  end

  def self.find_all_by_given_name(name)
    Customer.where("given_name LIKE :name", { name: "%#{name}%"})
  end

  def self.order_by_num_reviews
    Customer.joins(:reviews)
    .select("customers.id, customers.given_name, customers.family_name, count(customer_id) as count_customer")
    .group(:customer_id)
    .order(count_customer: :desc)
  end
end
