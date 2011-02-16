class CreateMarrones < ActiveRecord::Migration
  def self.up
    create_table :marrones do |t|
      t.datetime :received_at
      t.datetime :delivered_at
      t.string :label
      t.string :phone1
      t.string :phone2
      t.integer :status_id
      t.integer :technician_id
      t.boolean :informed
      t.text :description
      t.text :actions
      t.text :advise

      t.timestamps
    end
  end

  def self.down
    drop_table :marrones
  end
end
