FactoryBot.define do
    factory :category do
        sequence(:name) { |n| "Category #{n}" }
        trait :with_parent do
            transient do
                parent_id nil
            end
        end

        after :create do |category|
            create_list :product, 2, category: category unless category.parent_id.nil?
        end
    end
end