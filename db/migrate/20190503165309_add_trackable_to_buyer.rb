class AddTrackableToBuyer < ActiveRecord::Migration[5.2]
  def change
    change_table(:buyers)do |t|
      t.string :last_sign_in_ip
    end
  end
end
