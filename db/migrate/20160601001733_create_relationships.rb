class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :relationship_type
      t.integer :other_member_id
      t.integer :member_id

      t.timestamps

    end
  end
end
