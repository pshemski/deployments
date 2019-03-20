class Category < ActiveRecord::Base
  has_and_belong_to_many :templates
end
