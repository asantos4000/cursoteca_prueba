class CreateQuota < ActiveRecord::Migration
  def change
    create_table :quota do |t|
      t.integer :quota
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
