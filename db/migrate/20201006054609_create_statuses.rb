class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :date,                 null: false
      t.integer :feeling_id,           null: false
      t.integer :sleeping_id,          null: false
      t.integer :happiness_id,         null: false
      t.integer :taking_id,            null: false
      t.timestamps
    end
  end
end
