class RemoveCapitalisationFromInstruments < ActiveRecord::Migration
  def change
    remove_column :instruments, :capitalisation, :instrumentType, :percent, :period   
  end
end
