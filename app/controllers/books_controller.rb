class BooksController < ApplicationController

  def new
    @book = Book.new
    @books = Book.all
    @bookcases = Bookcase.all
  end

  def create
    @book = Book.new(name: params[:name], author: params[:author], bookcase_id: params[:bookcase_id], row: params[:row], position: params[:position], section: params[:section], orientation: params[:orientation])
    if @book.save
      redirect_to new_book_path, notice: "The Book was added!"
    else
      @books = Book.all
      @bookcases = Bookcase.all
      render :new
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.status
      @book.status = false
    else
      @book.status = true
    end
    @book.save
    redirect_to root_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to new_book_path, notice: "The Book was deleted"
  end

end
