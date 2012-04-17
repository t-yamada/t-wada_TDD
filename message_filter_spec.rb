require 'rubygems'
require 'rspec'
require_relative 'message_filter'

describe MessageFilter do
  before(:each) do
    @filter = MessageFilter.new('foo')
  end
  it 'should detect message with NG word' do
    @filter.detect?('hello from foo').should == true
  end
  it 'should detect message without NG word' do
    @filter.detect?('hello,world!').should == false
  end
end
