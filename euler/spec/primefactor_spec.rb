$: << File.join(File.dirname(__FILE__), "/../lib")
require 'spec'
require 'primefactor'


describe PrimeFactor do
  it "should make it happen" do
    f(1,[])
    f(2,[2])
    f(3,[3])
    f(4,[2]*2)
    f(5,[5])
    f(6,[2,3])
    f(8,[2]*3)
    f(9,[3]*2)
    f(10,[2,5])
    f(12,[2,2,3])
  end
end

def f(inp, exp)
  PrimeFactor.factor(inp).should == exp
end
