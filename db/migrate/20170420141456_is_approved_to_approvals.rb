class IsApprovedToApprovals < ActiveRecord::Migration[5.0]
  def change
    remove_column :approvals, :status
    add_column :approvals, :is_approved, :boolean, defalut: false
    change_column :signatures, :is_approved, :boolean, defalut: false
  end
end
