class RemoveTypeFromLmits < ActiveRecord::Migration[5.0]
  def change
    remove_column :limits, :type
    add_column :limits, :trans_type, :string, default: 'NEFT'
  end
end
