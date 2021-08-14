class ListsController < ApplicationController
  before_action :set_lists, only: [:show, :destroy]

  def index
    @lists = List.all
  end


  def new
    @list = List.new
  end

  def create
    @list = List.new(params_lists)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_lists
    @list = List.find(params[:id])
  end

  def params_lists
    params.require(:list).permit(:name, :photo)
  end
end
