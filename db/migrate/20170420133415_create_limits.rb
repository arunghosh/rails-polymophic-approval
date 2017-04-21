class CreateLimits < ActiveRecord::Migration[5.0]
  def change
    create_table :limits do |t|
      t.string :type, default: 'NEFT'
      t.boolean :is_approved, default: false
      t.integer :amount

      t.timestamps
    end
  end
end
