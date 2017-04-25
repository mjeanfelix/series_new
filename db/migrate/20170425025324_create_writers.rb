class CreateWriters < ActiveRecord::Migration[5.0]
  def change
    create_table :writers do |t|
      t.string :name
      t.string :genre
      t.string :resume
      t.string :education
      t.string :link

      t.timestamps
    end
  end
end
