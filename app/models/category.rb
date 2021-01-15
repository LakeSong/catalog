class Category < ActiveRecord::Base

    has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id', dependent: :destroy
    has_many :products, dependent: :destroy
    belongs_to :parent_category, class_name: 'Category', foreign_key: 'parent_id', optional: true

    class << self

        def main_categories
            @@main_categories
        end

        def initialize_main_categories
            @@main_categories ||= Category.where(parent_id: nil).all
        end
    end

    def get_ancestor_ids ancestors_array = []
        if self.parent_id.nil?
            ancestors_array << self.id
        else
            self.parent_category.get_ancestor_ids ancestors_array
        end
        ancestors_array
    end
end
