class CreateInquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :inquiries do |t|
      t.string :tempo_name
      t.string :manager
      t.string :email

      t.timestamps
    end
  end
end
