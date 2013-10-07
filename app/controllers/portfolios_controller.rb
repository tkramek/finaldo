class PortfoliosController < ApplicationController
  before_filter :authenticate_user! #, except: [:index]
  
  # GET /portfolios/:portfolio_id/instruments
  # GET /portfolios/5/instruments
  def index

    #@instruments = current_user.portfolios.first.instruments
    #if params[:portfolio_id]
    
    #  @instruments = current_user.portfolios.find(params[:portfolio_id]).instruments
    #else
      @portfolios = current_user.portfolios
    end

end
