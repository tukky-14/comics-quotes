class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
  end

  private
  def quote_params
    params.require(:quote).permit(:text, :title, :name)
  end
end
