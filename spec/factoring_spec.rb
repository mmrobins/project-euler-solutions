#!/usr/bin/env rspec

require 'factoring'

describe 'factoring' do
  it "should be right" do
    28.factors.should == [1, 2, 4, 7, 14, 28]
  end
end
