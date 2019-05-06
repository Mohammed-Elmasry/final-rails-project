class Order < ApplicationRecord
  belongs_to :buyer
  belongs_to :cart
  belongs_to :order_status
  belongs_to :store
end
