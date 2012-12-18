require File.expand_path('test_helper.rb', File.dirname(__FILE__))

describe "Upon load" do
  it "WebKit JS GirFFISugar should be loaded" do
    WebKit
    JS
    GirFFISugar
  end  
end

describe Gtk::Container do
  describe "#children" do
    it "should return array" do
      v = Gtk::VBox.new
      v.add Gtk::Label.new
      assert_instance_of Array,v.children    
    end
  end
end

describe Gtk do
  describe "init" do
    it "should accept 0 args" do
      Gtk.init 
    end
  end
end
