class Order < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :order_status
  belongs_to :store
end
