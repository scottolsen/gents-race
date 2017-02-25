class Team < ApplicationRecord
  has_many :riders
  accepts_nested_attributes_for :riders
end
