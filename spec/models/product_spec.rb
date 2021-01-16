require 'rails_helper'

RSpec.describe Product, :type => :model do

    subject {
        described_class.new(name: "product",
                            category_id: create(:product).id)
      }

    it "is valid with valid attributes" do
        expect(subject).to be_valid
    end

    it "is not valid without name" do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    describe "Associations" do
        it { should belong_to(:category).without_validating_presence }
      end

end