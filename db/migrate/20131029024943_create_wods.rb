class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :name
      t.text :body
      t.integer :gym_id

      t.timestamps
    end
  end
end
