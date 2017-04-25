class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :rating
      t.string :review
      t.string :link_to_related_site

      t.timestamps
    end
  end
end
