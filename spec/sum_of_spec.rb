#!/usr/bin/env rspec

require 'sum_of'

describe 'sum_of' do
  it "should handle repeating the same number repeatedly" do
    10.sum_of?([1]).should == ([1] * 10)
  end

  it "should handle sum of numbers in list" do
    10.sum_of?([3, 7]).should =~ [3, 7]
  end

  it "should return false if self is the only thing that sums to self" do
    10.sum_of?([10]).should be_false
  end

  it "should return false if no combination can sum to self" do
    10.sum_of?([3, 8]).should be_false
  end
end
