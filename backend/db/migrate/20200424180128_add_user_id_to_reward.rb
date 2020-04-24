class AddUserIdToReward < ActiveRecord::Migration[6.0]
  def change
    add_column :rewards, :user_id, :integer
  end
end
