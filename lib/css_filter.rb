class CSSFilter
  
  def initialize(*args)
    @css_dir = args.pop
  end
  
  def css_dir
    @css_dir
  end
  
  def css_files
    Dir.glob("#{css_dir}/*.css")
  end
  
  def css_code
    css_code = ""
    css_files.each do |f|
      css_code += File.read(f)
    end
    
    css_code
  end
end