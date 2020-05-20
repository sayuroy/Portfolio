class Model < ApplicationRecord

  validates :name, presence: true, length: { in: 1..40 }
  validates :title, presence: true, length: { in: 1..100 }
  validates :message, presence: true, length: { in: 1..2000 }
end
