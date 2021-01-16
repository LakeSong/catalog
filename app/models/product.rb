class Product < ActiveRecord::Base
    belongs_to :category, class_name: "Category"
    validates_presence_of :name
    validates_presence_of :category
    paginates_per 16

end
