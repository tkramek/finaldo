class RemoveMyTypeFromInstruments < ActiveRecord::Migration
  def up
    remove_column :instruments, :type
  end

  def down
    add_column :instruments, :type, :string
  end
end
