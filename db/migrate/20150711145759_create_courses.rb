class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.string :photo
      t.integer :commission

      t.timestamps null: false
    end
  end
end
