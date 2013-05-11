class ChangeSmsName < ActiveRecord::Migration
    def self.up
        rename_table :sms, :messages
    end
    def self.down
        rename_table :messages, :sms
    end
end
