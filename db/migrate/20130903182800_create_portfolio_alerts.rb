class CreatePortfolioAlerts < ActiveRecord::Migration
  def change
    create_table :portfolio_alerts do |t|

      t.timestamps
    end
  end
end
