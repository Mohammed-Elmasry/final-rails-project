class AddTrackableToBuyer < ActiveRecord::Migration[5.2]
  def change
    change_table(:buyers)do |t|
      t.integer :sign_in_count
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at 
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
    end
    add_index  :buyers, :sign_in_count, :default => 0 
  end
  end
end
