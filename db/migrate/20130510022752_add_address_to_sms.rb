class AddAddressToSms < ActiveRecord::Migration
  def change
    add_column :sms, :address, :string
  end
end
