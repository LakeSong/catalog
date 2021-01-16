require 'rails_helper'

RSpec.describe Category, :type => :model do

    subject {
        described_class.new(id: 2, name: "random category",
                            parent_id: 1)
    }

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end

    it "is not valid without name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should belong_to(:parent_category).optional.without_validating_presence }
        it { should have_many(:subcategories) }
        it { should have_many(:products) }
    end

    describe "#ancestor_ids" do
        it "should return array with the category id and its ancestors ids" do
            first_category = create(:category)
            second_category = create(:category, parent_category: first_category)
            third_category = create(:category, parent_category: second_category)
            expect(third_category.ancestor_ids).to eql([first_category.id, second_category.id, third_category.id])
        end
    end
end

