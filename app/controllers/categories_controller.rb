class CategoriesController < ApplicationController
  before_action :initialize_main_categories
  before_action :reorder_products, only: [:index, :show]

  def index
    @category = nil
    @categories = @main_categories
    @relevant_products = @ordered_products.page(params[:page])
  end

  def show
    @category = Category.find params[:id]
    @categories = @category.subcategories
    category_ids = @category.subcategory_ids << @category.id
    @relevant_products = @ordered_products.where(:category_id => category_ids).page(params[:page])
    
    render :action => :index
  end
  
  private 

  def initialize_main_categories
    Category.initialize_main_categories
    @main_categories = Category.main_categories
  end

  def reorder_products
    order_by = params[:order] ? params[:order].to_sym : :asc
    @ordered_products = Product.order(name: order_by)
  end

end
