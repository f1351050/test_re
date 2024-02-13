class AddColumnUniqueIdToInquiries < ActiveRecord::Migration[7.1]
  def change
    add_column :inquiries, :unique_id, :string
  end
end
