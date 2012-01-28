APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), "..", ".."))
$: << File.join(APP_ROOT, "lib/heap")

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
      @helper.parent(2).should == 0
    end

    it "should return the correct parent index for 1" do
      @helper.parent(1).should == 0
    end
  end

  describe :left do
    it "should return the correct index" do
      @helper.left(1).should == 3
    end
  end

  describe :right do
    it "should return the correct index" do
      @helper.right(1).should == 4
    end
  end

  describe :max_heapify do
    it "should float to the left" do
      array = [2, 3, 1]

      # @helper.max_heapify(array, 0)
      @helper.max_heapify_interative(array, 0)

      array.should == [3, 2, 1]
    end

    it "should float to the right" do
      array = [2, 1, 3]

      # @helper.max_heapify(array, 0)
      @helper.max_heapify_interative(array, 0)

      array.should == [3, 1, 2]
    end

    it "should float item to the correct position" do
      array = [16, 4, 10, 14, 7, 9, 3, 2, 8, 1]

      # @helper.max_heapify(array, 1)
      @helper.max_heapify_interative(array, 1)

      array.should == [16, 14, 10, 8, 7, 9, 3, 2, 4, 1]
    end
  end
end