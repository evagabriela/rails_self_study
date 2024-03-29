class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def show
    @item = Item.find(params[:id])
  end
  def new
    @item = Item.new()
  end
  def create
    @item = Item.new(params[:item])
    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])

  end

  def update
    @item = Item.find(params[:id])
    if@item.update_attributes(params[:item])
      redirect_to items_path
    else 
      render :edit 
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to items_path
    else 
      raise "Could not delete #{item.name}"
    end
  end
end

  
