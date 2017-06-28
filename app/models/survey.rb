class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: lambda { |question| question[:content].blank? }, allow_destroy: true
end
