class Category < ActiveRecord::Base

    has_many :subcategories, class_name: "Category", foreign_key: "parent_id", dependent: :destroy
    has_many :products, dependent: :destroy
    belongs_to :parent_category, class_name: "Category", foreign_key: "parent_id", optional: true
    validates_presence_of :name

    class << self

        def main_categories
            @@main_categories
        end

        def initialize_main_categories
            @@main_categories ||= Category.where(parent_id: nil).all
        end
    end

    def ancestor_ids ancestors = []
        if self.parent_id.present?
            self.parent_category.ancestor_ids ancestors        
        end
        ancestors << self.id
    end
end
