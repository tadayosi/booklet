require 'spec_helper'

include Booklet

describe Booklet do

  it 'has a version number' do
    expect(Booklet::VERSION).not_to be nil
  end

  it 'returns quire pages in each 4 pages' do
    expect(quire_each(8)).to eq '4 1 2 3 8 5 6 7'
  end

  it 'returns quire pages over all' do
    expect(quire_all(8)).to eq '8 1 2 7 6 3 4 5'
  end

end
