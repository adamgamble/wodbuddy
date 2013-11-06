class CreateUserJoinGyms < ActiveRecord::Migration
  def change
    create_table :user_join_gyms do |t|
      t.integer :user_id
      t.integer :gym_id

      t.timestamps
    end
  end
end
