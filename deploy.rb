Dir.glob("dotfiles/**/*").each do |src_path|
   file_name = src_path.split("/")[1..-1].join("/")
   abs_src_path = "#{Dir.pwd}/#{src_path}"
   abs_dist_path = "#{ENV["HOME"]}/.#{file_name}"

   next unless Dir.glob(abs_dist_path).empty?

   if File.stat(abs_src_path).directory?
     Dir.mkdir(abs_dist_path)
   else 
    `ln -s #{abs_src_path} #{abs_dist_path}`
   end
end
