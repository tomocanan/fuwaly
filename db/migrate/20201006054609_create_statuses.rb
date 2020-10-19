class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.date :date,                    null: false
      t.integer :feeling_id,           null: false
      t.integer :sleeping_id,          null: false
      t.integer :happiness_id,         null: false
      t.datetime :start_time
      t.integer :taking_id,            null: false
      t.references :user, foreign_key: {to_table: :users} 
      t.timestamps
    end
  end
end
