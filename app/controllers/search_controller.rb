class SearchController < ApplicationController

  def index
    if params[:query].present?
      @books = Book.where("name ILIKE ?", "%#{params[:query]}%")
      if @books.empty?
        flash[:notice] = "Please check the spelling and try again"
      end
    else
      @books = Book.all.order(:name)
    end

  end

end
