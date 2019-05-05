class AddCurrentSignInToBuyer < ActiveRecord::Migration[5.2]
  def change
    add_column :buyers, :sign_in_count, :integer, :default => 0
    add_column :buyers, :current_sign_in_at, :datetime
    add_column :buyers, :last_sign_in_at, :datetime
    add_column :buyers, :current_sign_in_ip, :string
    add_column :buyers, :last_sign_in_ip, :string
  end
end
