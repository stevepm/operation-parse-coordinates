require 'spec_helper'
require_relative '../bin/map_parser'

describe MapParser do

  let (:map) {
    '╔══════════╗
║X*********║
║**********║
║**********║
║**********║
║**********║
╚══════════╝'
  }
  it 'can tell me the x,y coordinates' do
    m = MapParser.new(map)
    expect(m.coordinates).to eq([0,0])
  end
end