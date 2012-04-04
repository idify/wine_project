class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :parent_id
      t.string :title
      t.string :name
      t.string :alias
      t.string :section
      t.text :description
      t.integer :published
      t.integer :checked_out
      t.datetime :checked_out_time
      t.string :editor
      t.integer :ordering
      t.integer :access
      t.integer :count
      t.text :params

      t.timestamps
    end
  end
end
