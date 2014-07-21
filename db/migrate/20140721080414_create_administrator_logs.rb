class CreateAdministratorLogs < ActiveRecord::Migration
  def change
    create_table :administrator_logs do |t|
      t.integer :administrator_id
      t.string :controllers
      t.string :actions
      t.text :params

      t.timestamps
    end
  end
end
