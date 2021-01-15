class CategoriesController < ApplicationController
  before_action :initialize_main_categories, only: [:index, :show]
  before_action :initialize_products, only: [:index, :show]
  before_action :set_main_categories, only: [:index, :show]
  before_action :reorder_products, only: [:index, :show]

  def index
    @category = nil
    @categories = @main_categories
    @relevant_products = Product.all_products.page(params[:page])
  end

  def show
    @category = Category.find params[:id]
    @categories = @category.subcategories
    category_ids = @category.subcategory_ids << @category.id
    @relevant_products = Product.all_products.where(:category_id => category_ids).page(params[:page])
    
    render :action => :index
  end
  
  private 

  def initialize_main_categories
    Category.initialize_main_categories
  end

  def set_main_categories
    @main_categories = Category.main_categories
  end

  def initialize_products
    Product.initialize
  end

  def reorder_products
    Product.order_products(params[:order].to_sym) if params[:order].present?
  end

end
