class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :model
  belongs_to :brand
  belongs_to :invoice
  belongs_to :department
  belongs_to :parent, class_name: "Item", foreign_key: "parent_id"
  has_many :subitems, class_name: "Item", foreign_key: "parent_id"
end
