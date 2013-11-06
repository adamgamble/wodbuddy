class RemoveUserIdColumnFromGym < ActiveRecord::Migration
  def change
    remove_column :users, :gym_id
  end
end
