class Order < ApplicationRecord
  belongs_to :buyer
  belongs_to :store
  has_one   :cart
end
