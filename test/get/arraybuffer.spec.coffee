# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'ArrayBuffer',->
  itFuture= if ArrayBuffer? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',->
      fixture= new ArrayBuffer animated.gif.length
      (new Uint8Array fixture).set animated.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'arraybuffer'

    itFuture 'png',->
      fixture= new ArrayBuffer animated.png.length
      (new Uint8Array fixture).set animated.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'arraybuffer'

    itFuture 'webp',->
      fixture= new ArrayBuffer animated.webp.length
      (new Uint8Array fixture).set animated.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'arraybuffer'

  describe 'static',->
    itFuture 'gif',->
      fixture= new ArrayBuffer still.gif.length
      (new Uint8Array fixture).set still.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'arraybuffer'

    itFuture 'png',->
      fixture= new ArrayBuffer still.png.length
      (new Uint8Array fixture).set still.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'arraybuffer'

    itFuture 'webp',->
      fixture= new ArrayBuffer still.webp.length
      (new Uint8Array fixture).set still.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'arraybuffer'

    itFuture 'jpg',->
      fixture= new ArrayBuffer still.jpg.length
      (new Uint8Array fixture).set still.jpg

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'arraybuffer'

    itFuture 'tif',->
      fixture= new ArrayBuffer still.tif.length
      (new Uint8Array fixture).set still.tif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'arraybuffer'

    itFuture 'bmp',->
      fixture= new ArrayBuffer still.bmp.length
      (new Uint8Array fixture).set still.bmp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'arraybuffer'

    itFuture 'jxr',->
      fixture= new ArrayBuffer still.jxr.length
      (new Uint8Array fixture).set still.jxr

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'arraybuffer'

    itFuture 'psd',->
      fixture= new ArrayBuffer still.psd.length
      (new Uint8Array fixture).set still.psd

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'arraybuffer'
