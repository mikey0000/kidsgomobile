class Device < ActiveRecord::Base
  attr_accessible :code, :name
  belongs_to :user
  has_many :sms
end
