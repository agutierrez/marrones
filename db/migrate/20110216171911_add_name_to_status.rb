class AddNameToStatus < ActiveRecord::Migration
  def self.up
    remove_column :statuses, :nombre
    add_column :statuses, :name, :string
  end

  def self.down
    remove_column :statuses, :name
    add_column :statuses, :nombre
  end
end
