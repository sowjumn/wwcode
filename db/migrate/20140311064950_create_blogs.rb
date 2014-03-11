class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :para1
      t.text :para2
      t.text :para3
      t.string :author
      t.integer :admin_id

      t.timestamps
    end
  end
end
