require 'fileutils'
module SSGenerator
	module Helpers  
		# take keys of hash and transform those to a symbols
	  def transform_keys_to_symbols(value)
	    if value.is_a?(Array)
	    	return value.map {|memo| transform_keys_to_symbols(memo) }
	    elsif value.is_a?(Hash)
	    	return value.inject({}){|memo,(k,v)| memo[k.to_sym] = transform_keys_to_symbols(v); memo}
	    else
	    	return value
	    end
	  end

	  # 
	  def generate_files(files, path = '')
	  	if files

	  		files.each do |item|
					if item[:type] == 'folder'
						FileUtils.mkdir "#{path}#{item[:name]}"
						puts "* mkdir #{path}#{item[:name]}"

						if item[:content].is_a?(Array)
							generate_files(item[:content], "#{item[:name]}/")
						end
					elsif item[:type] == 'file'
						FileUtils.touch "#{path}#{item[:name]}"
						puts "* touch #{path}#{item[:name]}"
						# puts "#{item.name} is a file"
					end
				end
			end
	  end
	end
end