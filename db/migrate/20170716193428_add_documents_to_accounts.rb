class AddDocumentsToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :documents, :json
  end
end
