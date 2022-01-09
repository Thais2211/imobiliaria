class CreatePropertyAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :property_attachments do |t|
      t.integer :property_id
      t.string :photo

      t.timestamps
    end
  end
end
