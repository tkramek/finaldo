class CreateInstrumentAlerts < ActiveRecord::Migration
  def change
    create_table :instrument_alerts do |t|

      t.timestamps
    end
  end
end
