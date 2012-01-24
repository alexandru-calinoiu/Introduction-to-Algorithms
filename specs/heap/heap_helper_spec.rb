APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "..", ".."))
$: << File.join(APP_ROOT, "heap")

require "heap_helper"

class Helper
  include HeapHelper
end

describe HeapHelper do
  before :each do
    @helper = Helper.new
  end

  describe :parent do
    it "should return the correct index" do
      @helper.parent(2).should == 1
    end

    it "should return the correct parent index for 1" do
      @helper.parent(1).should == 1
    end
  end

  describe :left do
    it "should return the correct index" do
      @helper.left(1).should == 2
    end
  end

  describe :right do
    it "should return the correct index" do
      @helper.right(1).should == 3
    end
  end
end