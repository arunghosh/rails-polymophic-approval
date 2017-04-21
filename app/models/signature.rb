class Signature < ApplicationRecord
  belongs_to :approval
  after_save :update_parent

  scope :approved, -> { where(is_approved: true) }

  def update_parent
    if is_approved
      approval.update_status
    end
  end
end
