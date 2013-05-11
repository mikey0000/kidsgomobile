class Device < ActiveRecord::Base
  attr_accessible :code, :name, :model
  belongs_to :user
  has_many :messages
end
