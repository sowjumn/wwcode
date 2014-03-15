class CreateAbout < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :mission
      t.text :studynights
      t.text :hackevents
      t.text :techtalks

      t.timestamps
    end
  end
end
