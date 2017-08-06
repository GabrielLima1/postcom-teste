class AddAvatarToDesires < ActiveRecord::Migration[5.0]
  def change
    add_column :desires, :avatar, :string
  end
end
