class BookcasesController < ApplicationController

  def new
    @bookcase = Bookcase.new
    @bookcases = Bookcase.all
  end

  def create
    @bookcase = Bookcase.new(name: params[:name], description: params[:description])
    if @bookcase.save
      redirect_to  new_bookcase_path, notice: "The Bookcase was added!"
    else
      @bookcases = Bookcase.all
      render :new
    end
  end

  def destroy
    @bookcase = Bookcase.find(params[:id])
    @bookcase.destroy
    redirect_to new_bookcase_path, notice: "The Bookcase was deleted"
  end

end
