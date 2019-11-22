class RemoveIndicesFromHealthRecords < ActiveRecord::Migration[6.0]
  def change
    remove_index :health_records, name: "index_health_records_on_user_id_and_created_at"
    remove_index :health_records, name: "index_health_records_on_user_id"
  end
end
