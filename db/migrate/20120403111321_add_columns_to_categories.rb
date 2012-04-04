class AddColumnsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :image_url, :string
    add_column :categories, :is_alcoholic, :boolean
    add_column :categories, :is_taxable, :boolean
    add_column :categories, :seo_page_title, :string
    add_column :categories, :meta_description, :text
    add_column :categories, :template_id, :integer
  end
end
