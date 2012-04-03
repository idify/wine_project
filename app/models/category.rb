class Category < ActiveRecord::Base
  attr_accessible :access, :alias, :checked_out, :checked_out_time, :count, :description, :editor, :name, :ordering, :params, :parent_id, :published, :section, :title
end
