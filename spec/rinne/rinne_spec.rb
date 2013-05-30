require 'spec_helper'
require 'rinne'

describe Rinne do

  describe 'when convert' do
    it 'should one word' do
      Rinne.camelize("rinne").should eq("Rinne")
    end

    it 'should spell' do
      Rinne.camelize("rinne_tensei").should eq("RinneTensei")
    end

    it 'should file name' do
      Rinne.camelize("foo_bar.rb","rb").should eq("FooBar")
    end

    it 'should alias method' do
      Rinne.tensei('rinne_tensei').should eq('RinneTensei')
    end

    it 'should load class name' do
      Rinne.classify('/path/to/rinne_tensei.rb').should eq('RinneTensei')
    end
  end

end
