class Approval < ApplicationRecord
  has_many :signatures
  belongs_to :approvable, polymorphic: true

  def update_status
    if signatures.count == signatures.approved.count
      update_attribute :is_approved, true
      approvable.is_approved = true
      approvable.save
    end
  end

end
