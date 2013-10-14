class AddReviewcontentToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewcontent, :string
  end
end
