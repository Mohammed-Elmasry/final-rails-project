class RenameApiUserToApiuser < ActiveRecord::Migration[5.2]
  def change
    rename_table :api_users , :apiusers
  end
end
