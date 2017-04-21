class CreateSignatures < ActiveRecord::Migration[5.0]
  def change
    create_table :signatures do |t|
      t.string :user
      t.integer :approval_id
      t.boolean :is_approved

      t.timestamps
    end
  end
end
