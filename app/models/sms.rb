class Sms < ActiveRecord::Base
  attr_accessible :body, :date, :protocol, :read, :status
  belongs_to :device
  belongs_to :contact
end
