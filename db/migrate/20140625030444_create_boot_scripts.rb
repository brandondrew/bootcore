class CreateBootScripts < ActiveRecord::Migration
  def change
    create_table :boot_scripts do |t|
      t.string :file_name
      t.text :body
      t.references :user, index: true
      t.string :accessibility

      t.timestamps
    end
  end
end
