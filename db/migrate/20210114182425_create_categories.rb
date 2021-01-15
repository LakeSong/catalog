class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :parent, :foreign_key => {to_table: :categories}, :default => nil, :null => true
    end
  end
end
