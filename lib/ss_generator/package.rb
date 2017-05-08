module SSGenerator
	class Package
		attr_accessor :name, :description, :version, :author, :structure

		def initialize(params)
			# TODO: validate hash schema

			@name = params[:name]
			@description = params[:description] || 'Without description!'
			@version = params[:version] || '1.0.0'
			@author = params[:author] || ''
			@structure = params[:structure] || {}
		end

		def to_s
			"#{@name} by #{@author}"
		end
	end
end