class HealthRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :health_records do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :health_records, [:user_id, :created_at]
  end
end
