require 'spec_helper'
require 'rinne'

describe Rinne do

  describe 'when converte' do
    it 'should one word' do
      Rinne.tensei("rinne").should eq("Rinne")
    end

    it 'should spell' do
      Rinne.tensei("rinne_tensei").should eq("RinneTensei")
    end
  end
end
