module SSGenerator
	class Generator
		def self.init(packages)
			puts `clear`
			puts "SS Generator | Welcome"
			puts "-" * 40
			puts "Available packages:"

			packages.each_with_index do |p, index|
			 	puts "  #{index}) #{p.to_s}"
			end

			puts "-" * 40
			puts "Please enter a valid option or 'quit' to exit"
		end

		def self.get_package(package)
			puts `clear`
			puts "SS Generator | Selected package"
			puts "-" * 40
			puts "* #{package.name} (#{package.version}) by #{package.author} "
			puts "\n#{package.description}"

			puts "-" * 40
			puts "Please enter 'g' to generate files or 'b' to go back"
		end

		def self.goodbye
			puts `clear`
			puts "SS Generator | Goodbye"
			puts "-" * 40
			puts "Thank you for using SS Generator! See you soon!"
		end

		def self.make_files(package = [])
			# puts package.name
			# puts package.structure
			# puts package[:structure]
			generate_files(package.structure)
		end
	end
end