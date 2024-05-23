class AddRestaurantReferenceToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :restaurant, index: true
  end
end
