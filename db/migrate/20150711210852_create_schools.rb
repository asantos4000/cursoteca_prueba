class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :rut_school
      t.string :email
      t.string :company_name
      t.string :bank_account

      t.timestamps null: false
    end
  end
end
