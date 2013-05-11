class AddTypeToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :model, :string
  end
end
