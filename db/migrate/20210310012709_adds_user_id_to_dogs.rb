class AddsUserIdToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dog_id, :integer
  end
end
