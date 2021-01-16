require 'rails_helper'

describe CategoriesController do

    describe "GET categories#index", type: :feature do
        it "assigns @category as null, shows main categories and all products" do
            categories = create_list(:category, 5)
            get :index
            assigns(:category).should eql(nil)
            assigns(:categories).should match_array(categories)
            assigns(:relevant_products).should match_array(Product.all)
        end
    end

    describe "GET categories#show", type: :feature  do
        it "assigens requested category as @category and fetches relevant subcategories and products" do
            first_category = create(:category)
            categories = create_list(:category, 5, parent_category: first_category)
            relevant_categories = first_category.subcategory_ids << first_category.id
            get :show, params: {id: first_category.id}
            assigns(:category).should eql(first_category)
            assigns(:categories).should match_array(categories)
            assigns(:relevant_products).should match_array(Product.where(category_id: relevant_categories))
        end 
    end
end