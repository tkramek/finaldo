class AddingCurrencyData < ActiveRecord::Migration
  def up
  	InstrumentCurrency.create(:name => "Euro", :short_name => "EUR")
  	InstrumentCurrency.create(:name => "Dolar", :short_name => "USD")
  	InstrumentCurrency.create(:name => "Zloty", :short_name => "PLN")
  end

  def down
  end
end
