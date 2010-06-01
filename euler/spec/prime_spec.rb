$: << File.join(File.dirname(__FILE__), "/../lib")
require 'spec'
require 'prime'

describe Prime do
  it "should return empty on 0" do
    Prime.prime(0).should == []
  end

  it "should return 2 on 1" do
    Prime.prime(1).should == [2]
  end

  it "should return 2,3 on 2" do
    Prime.prime(2).should == [2,3]
  end

  it "should return 2,3,5 on 3" do
    Prime.prime(4).should == [2,3,5]
  end
end
