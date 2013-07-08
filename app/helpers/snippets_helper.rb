module SnippetsHelper

	def languages
		Category.all.collect {|c| [c.name,c.id]}
	end
end
