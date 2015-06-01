# Dependencies
pixelUtil= require '../src'

it 'createImageData',->
  imageData= pixelUtil.createImageData 59,798

  expect(imageData.width).toBe 59
  expect(imageData.height).toBe 798
  expect(imageData.data instanceof Uint8Array).not.toBe Uint8ClampedArray?
  expect(imageData.data instanceof Uint8ClampedArray).toBe Uint8ClampedArray?
  expect(imageData.data.length).toBe 59 * 798 * 4