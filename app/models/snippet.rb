class Snippet < ActiveRecord::Base
  attr_accessible :highlighted_code, :language, :name, :source_code, :description
  belongs_to :category,:foreign_key => 'language', :counter_cache => true
  
  @queue = :snippet_queue

  def self.perform(id)
  	snippet = Snippet.find_by_id(id)
    uri = URI.parse('http://pygments.simplabs.com/')
    request = Net::HTTP.post_form(uri,{ 'lang' => snippet.category.short_name, 'code' => snippet.source_code })
    snippet.update_attribute(:highlighted_code, request.body)
  end

  def lan_name
  	self.category.try(:name)
  end
end
