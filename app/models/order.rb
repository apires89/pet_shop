class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  monetize :amount_cents
end
