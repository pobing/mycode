class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :name
      t.integer :language
      t.text :source_code
      t.text :highlighted_code

      t.timestamps
    end
  end
end
