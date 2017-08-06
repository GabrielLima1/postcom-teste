class AddAccountToDesire < ActiveRecord::Migration[5.0]
  def change
    add_reference :desires, :account, foreign_key: true
  end
end
