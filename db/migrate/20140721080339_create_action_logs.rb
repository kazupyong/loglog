class CreateActionLogs < ActiveRecord::Migration
  def change
    create_table :action_logs do |t|
      t.integer :organization_id
      t.integer :user_id
      t.integer :view_execution_time
      t.integer :db_execution_time
      t.string :controllers
      t.string :actions
      t.text :params

      t.timestamps
    end
  end
end
