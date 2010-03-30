require File.join(File.dirname(__FILE__), "spec_helper")

describe Yatzee do
  context "score ones" do
    context "no ones" do
      it "should return 0" do
        Yatzee.ones([2,2,2,2,2]).should be(0)
      end
    end

    context "one one" do
      it "should return 1" do
        Yatzee.ones([1,2,2,2,2]).should be(1)
      end
    end

    context "two ones" do
      it "should return 2" do
        Yatzee.ones([1,1,2,2,2]).should be(2)
      end
    end

    context "all ones" do
      it "should return five" do
        Yatzee.ones([1,1,1,1,1]).should be(5)
      end
    end
  end

  context "score twos" do
    context "one two" do
      it "should return 2" do
        Yatzee.twos([2,1,1,1,1]).should be(2)
      end
    end
  end

  context "one pair" do
    context "no pair" do
      it "should return 0" do
        Yatzee.pair([1,2,3,4,5]).should be(0)
      end
    end
  end
end
