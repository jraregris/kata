require 'spec_helper'
require 'prime'

describe Prime do
  
  # N should return I
  
  match(0,[])
  match(1,[2])
  match(2,[2,3])
  match(3,[2,3,5])
  match(4,[2,3,5,7])
  match(5,[2,3,5,7,11])
  match(6,[2,3,5,7,11,13])
end

