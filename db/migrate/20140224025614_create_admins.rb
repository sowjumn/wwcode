class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :title
      t.string :email
      t.integer :location_id

      t.timestamps
    end
  end
end
