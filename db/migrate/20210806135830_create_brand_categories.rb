class CreateBrandCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :brand_categories do |t|
      t.integer :brand_id
      t.integer :category_id

      t.timestamps
    end
  end
end
