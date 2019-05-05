class Store < ApplicationRecord
    has_many :sellers
    has_and_belongs_to_many :products
end
