# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Uint8Array',->
  itFuture= if Uint8Array? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',->
      fixture= new Uint8Array animated.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'uint8array'

    itFuture 'png',->
      fixture= new Uint8Array animated.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'uint8array'

    itFuture 'webp',->
      fixture= new Uint8Array animated.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'uint8array'

  describe 'static',->
    itFuture 'gif',->
      fixture= new Uint8Array still.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'uint8array'

    itFuture 'png',->
      fixture= new Uint8Array still.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'uint8array'

    itFuture 'webp',->
      fixture= new Uint8Array still.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'uint8array'

    itFuture 'jpg',->
      fixture= new Uint8Array still.jpg

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'uint8array'

    itFuture 'tif',->
      fixture= new Uint8Array still.tif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'uint8array'

    itFuture 'bmp',->
      fixture= new Uint8Array still.bmp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'uint8array'

    itFuture 'jxr',->
      fixture= new Uint8Array still.jxr

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'uint8array'

    itFuture 'psd',->
      fixture= new Uint8Array still.psd

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'uint8array'
