class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses, :ID => false do |t|
      t.integer :status_id
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :statuses
  end
end
