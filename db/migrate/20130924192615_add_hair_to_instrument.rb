class AddHairToInstrument < ActiveRecord::Migration
  def change
    add_column :instruments, :heir_id, :integer
    add_column :instruments, :heir_type, :string
  end
end
