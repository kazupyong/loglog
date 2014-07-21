class CreateLogDetails < ActiveRecord::Migration
  def change
    create_table :log_details do |t|
      t.integer :log_id
      t.string :log_type
      t.integer :log_count

      t.timestamps
    end
  end
end
