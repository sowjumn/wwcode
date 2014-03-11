class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :trust, default: false

      t.timestamps
    end
  end
end
