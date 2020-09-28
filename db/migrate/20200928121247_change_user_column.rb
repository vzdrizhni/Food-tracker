class ChangeUserColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :meals, :user_id
  end
end
