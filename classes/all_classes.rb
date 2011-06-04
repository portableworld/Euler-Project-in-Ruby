Dir.glob(File.join(File.dirname(__FILE__), "*.rb")).each do |file|
  unless file == File.dirname(__FILE__)
    require file
  end
end
 


