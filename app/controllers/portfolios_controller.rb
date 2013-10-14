class PortfoliosController < ApplicationController
  before_filter :authenticate_user! #, except: [:index]

  def show
    @portfolio = current_user.portfolios.find(params[:id])
  end

  # GET /portfolios/:portfolio_id/instruments
  # GET /portfolios/5/instruments
  def index

    #@instruments = current_user.portfolios.first.instruments
    #if params[:portfolio_id]

    #  @instruments = current_user.portfolios.find(params[:portfolio_id]).instruments
    #else
    @portfolios = current_user.portfolios
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolios }
    end
    end

    def edit
    end
end
