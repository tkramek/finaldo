class AddFieldsToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :capitalisation, :integer
    add_column :instruments, :percent, :decimal
    add_column :instruments, :period, :decimal
    add_column :instruments, :type, :string
  end
end
