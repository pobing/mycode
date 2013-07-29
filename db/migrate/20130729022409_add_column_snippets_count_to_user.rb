class AddColumnSnippetsCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :snippets_count, :integer
  end
end
