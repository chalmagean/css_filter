require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe CSSFilter, " when initialized" do
  before(:each) do
    @css_filter = mock(CSSFilter)
  end

  context "with arguments" do
    it "should store the css dir" do
      CSSFilter.new("/test").css_dir.should_not be_nil
    end
  end

  context "with no arguments" do
    it "should not store the css dir" do
      CSSFilter.new.css_dir.should be_nil
    end
  end
end

describe CSSFilter, "#css_files" do
  before(:each) do
    @css_filter = CSSFilter.new('/test')
  end
  
  it "should recurse into subdirectories"
  
  context "if files exist" do
    it "should return a list of css files" do
      files = ['test1.css', 'test2.css']
      Dir.stub!(:glob).with("/test/*.css").and_return(files)
      @css_filter.css_files.should == files
    end
  end

  context "if no files exist" do
    it "should return nil" do
      Dir.stub!(:glob).with("/test/*.css").and_return(nil)
      @css_filter.css_files.should be_nil
    end
  end
end