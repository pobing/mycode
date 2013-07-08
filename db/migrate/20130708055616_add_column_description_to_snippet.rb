class AddColumnDescriptionToSnippet < ActiveRecord::Migration
  def change
    add_column :snippets, :description, :text
    add_column :categories, :short_name, :string
    add_column :categories, :snippets_count, :integer
  end
end
