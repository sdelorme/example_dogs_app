class AddsUserToDogsModel < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :user_id, :integer
  end
end
