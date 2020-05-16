class QuotesController < ApplicationController
  before_action :set_quote, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    Quote.create(quote_params)
    redirect_to root_path
  end

  def destroy
    quote = Quote.find(params[:id])
    quote.destroy
  end

  def edit
  end

  def update
    quote = Quote.find(params[:id])
    quote.update(quote_params)
    redirect_to root_path
  end

  def show
  end

  private
  def quote_params
    params.require(:quote).permit(:text, :title, :name)
  end

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def move_to_index
    # redirect_to action: :index unless user_signed_in?
    redirect_to root_path unless user_signed_in?
  end
end
