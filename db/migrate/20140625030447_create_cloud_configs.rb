class CreateCloudConfigs < ActiveRecord::Migration
  def change
    create_table :cloud_configs do |t|
      t.references :user, index: true
      t.string :accessibility

      t.timestamps
    end
  end
end
