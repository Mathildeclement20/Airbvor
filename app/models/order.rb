class Order < ApplicationRecord
  belongs_to :animal
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  enum status: ["None","Non confirmé", "confirmé"]
end
