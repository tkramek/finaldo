class AddInstrumentTypeToInstruments < ActiveRecord::Migration
  def change
    add_column :instruments, :instrumentType, :integer
  end
end
