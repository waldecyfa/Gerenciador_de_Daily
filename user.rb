class User < ApplicationRecord
  has_many :experiences, inverse_of: :user, dependent: :destroy
  has_many :telephones, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :telephones, reject_if: :all_blank, allow_destroy: true
end
