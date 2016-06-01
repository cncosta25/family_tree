class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.boolean :is_member
      t.integer :user_id
      t.string :name

      t.timestamps

    end
  end
end
