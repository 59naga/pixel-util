# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Uint8ClampedArray',->
  itFuture= if Uint8ClampedArray? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',->
      fixture= new Uint8ClampedArray animated.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'png',->
      fixture= new Uint8ClampedArray animated.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'webp',->
      fixture= new Uint8ClampedArray animated.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'uint8clampedarray'

  describe 'static',->
    itFuture 'gif',->
      fixture= new Uint8ClampedArray still.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'png',->
      fixture= new Uint8ClampedArray still.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'webp',->
      fixture= new Uint8ClampedArray still.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'jpg',->
      fixture= new Uint8ClampedArray still.jpg

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'tif',->
      fixture= new Uint8ClampedArray still.tif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'bmp',->
      fixture= new Uint8ClampedArray still.bmp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'jxr',->
      fixture= new Uint8ClampedArray still.jxr

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'uint8clampedarray'

    itFuture 'psd',->
      fixture= new Uint8ClampedArray still.psd

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'uint8clampedarray'
