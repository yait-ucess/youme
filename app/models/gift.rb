class Gift < ApplicationRecord
  belongs_to :giver, class_name: 'User', foreign_key: :giver_id
  belongs_to :receiver, class_name: 'Profile', foreign_key: :receiver_id

  validates_uniqueness_of :receiver_id, scope: :giver_id
end
