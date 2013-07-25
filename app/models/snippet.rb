#encoding: utf-8
class Snippet < ActiveRecord::Base
  attr_accessible :highlighted_code, :language, :name, :source_code, :description
  belongs_to :category,:foreign_key => 'language', :counter_cache => true
  belongs_to :user
  
  default_scope :order => 'created_at DESC'

  validates :name, :length => { maximum: 20 , message: " name 最长为20个字符" },
    :presence => { message: "name 不能为空" }
  validates :source_code, :presence => { message: "source_code 不能为空" }


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

  def author
    self.user.try(:email) || "admin"
  end
end
