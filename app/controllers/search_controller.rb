class SearchController < ApplicationController

  def index
    if params[:query].present?
      @books = Book.where("name ILIKE ?", "%#{params[:query]}%")
      if @books.empty?
        flash[:notice] = "Book was not found. Try again"
      end
    else
      @books = Book.all.order(:name)
    end

  end

end
