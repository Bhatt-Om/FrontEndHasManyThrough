class Group < ApplicationRecord
  has_many :groupmemberships
  has_many :users , through: :groupmemberships 
end
