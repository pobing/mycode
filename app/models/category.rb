class Category < ActiveRecord::Base
  attr_accessible :name, :short_name
  has_many :snippets, :foreign_key => "language"
end
