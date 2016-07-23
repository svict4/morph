class AddTimestampToLogLines < ActiveRecord::Migration
  def change
    # Microsecond precision on the time
    add_column :log_lines, :timestamp, :datetime, limit: 6
    add_index :log_lines, :timestamp
  end
end
