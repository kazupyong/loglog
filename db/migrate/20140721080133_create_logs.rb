class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :organization_id
      t.date :log_date
      t.string :current_license_type

      t.timestamps
    end
  end
end
