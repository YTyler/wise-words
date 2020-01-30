class QuotesController < ApplicationController

  def index
    @author = Author.find(params[:author_id])
    @quotes = @author.quotes
    json_response(@quotes)
  end

  def show
      @author = Author.find(params[:author_id])
      @quote = Quote.find(params[:id])
      json_response(@quote)
    end

    def create
      @author = Author.create!(author_params)
      @quote = @author.quote.new(quote_params)
      json_response(@author, :created)
    end

    def update
      @quote = Quote.find(params[:id])
      if @quote.update!(quote_params)
        render status: 200, json: { message: "Quote has been updated successfully."}
      end
    end

    def destroy
      @quote = Quote.find(params[:id])
      if @quote.destroy!
        render status: 200, json: { message: "Quote has been deleted successfully."}
      end
    end

  private
  def quote_params
    params.permit(:phrase, :date)
  end
end
