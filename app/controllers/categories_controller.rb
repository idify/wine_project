class CategoriesController < ApplicationController
  before_filter :load

  def load
    @categories = Category.all
   
  end

  def index
    render :layout => false
  end

  def new
   @category = Category.new
   render :layout=>false
  end
  
 
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Successfully created category."
      redirect_to "/"
    end
  end

  def edit
    @category = Category.find(params[:id])
    render :layout=>false
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Successfully updated category."
      @categories = Category.all
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Successfully destroyed category."
    @categories = Category.all
  end
end
