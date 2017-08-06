class AddDocumentsToDesires < ActiveRecord::Migration[5.0]
  def change
    add_column :desires, :documents, :json
  end
end
