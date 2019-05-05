class Order < ApplicationRecord
  belongs_to :buyer
  belongs_to :store
  serialize :products
end