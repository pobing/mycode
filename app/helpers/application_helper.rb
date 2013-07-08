module ApplicationHelper

	def language_list
		Category.where("snippets_count > ?",0)
	end
end
