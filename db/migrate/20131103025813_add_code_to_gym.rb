class AddCodeToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :code, :string
  end
end
