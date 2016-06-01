class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :surname
      t.string :name
      t.text :notes
      t.integer :family_id
      t.string :image

      t.timestamps

    end
  end
end
