require 'rubygems'
require 'factory_girl'
require 'factories'
require 'spec'
require 'spec/autorun'
require 'redgreen'
require 'helper'
require 'user'
require 'profile'

describe "Helper" do
  describe "foo" do
    it "should be foo" do
      Helper.foo.should == "foo"
    end
  end
end