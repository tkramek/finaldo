class RemoveTypeFromInstruments < ActiveRecord::Migration
  def up
    remove_column :instruments, :type
  end

  def down
    add_column :instruments, :type, :integer
  end
end
