# Dependencies
pixelUtil= require '../src'

# Fixtures
fixtureImages= require 'fixture-images'

# Specs
describe 'set',->
  it 'Rewrite the imageData.data',->
    imageData= data: new Array 10
    source= data: [0,1,2,3,4,5,6,7,8,9]

    pixelUtil.set imageData,source

    expect(imageData.data[0]).toBe 0
    expect(imageData.data[9]).toBe 9