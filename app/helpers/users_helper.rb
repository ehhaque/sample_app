module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
	def gravatar_for(user)
		gHash = Digest::MD5::hexdigest(user.email.downcase)
		gUrl = "https://secure.gravatar.com/avatar/#{gHash}?d=wavatar"
		image_tag(gUrl, alt: user.name, class: "gravatar")

	end

end
