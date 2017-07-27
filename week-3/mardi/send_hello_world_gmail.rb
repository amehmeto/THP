require 'gmail'

gmail = Gmail.connect("thehackingprojecthangar", "50centgu")

gmail.deliver do
	to "renesis3@gmail.com"
	subject "Test de la gem Gmail"
	text_part do
		body "Weeeeeeeeeeesh"
	end
end
gmail.logout
