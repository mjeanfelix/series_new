class CreateSubmissons < ActiveRecord::Migration[5.0]
  def change
    create_table :submissons do |t|
      t.string :name
      t.string :title
      t.string :genre
      t.string :body_of_work

      t.timestamps
    end
  end
end
