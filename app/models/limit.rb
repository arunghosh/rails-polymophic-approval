class Limit < ApplicationRecord
  has_many :approvals, as: :approvable

  after_create :create_approval

  def create_approval
    approvals << Approval.new(is_approved: false)
  end

  def update_status
    if approvals.approved.count > 1
      is_approved = true
    end
  end

end
