class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.integer :device_id
      t.integer :contact_id
      t.timestamp :date
      t.boolean :read
      t.integer :protocol
      t.integer :status
      t.text :body

      t.timestamps
    end
  end
end
