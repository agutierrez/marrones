class CreateTechnicians < ActiveRecord::Migration
  def self.up
    create_table :technicians, :id => false do |t|
      t.integer :technician_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :technicians
  end
end
