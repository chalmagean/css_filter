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
end