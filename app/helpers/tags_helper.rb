module TagsHelper

	def remove_trailing_comma(str)
    str.nil? ? nil : str.chomp(",")
	end

end
