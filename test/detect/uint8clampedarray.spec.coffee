# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Uint8ClampedArray',->
  itFuture= if Uint8ClampedArray? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new Uint8ClampedArray animated.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'png',(done)->
      fixture= new Uint8ClampedArray animated.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'webp',(done)->
      fixture= new Uint8ClampedArray animated.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'uint8clampedarray'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new Uint8ClampedArray still.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'png',(done)->
      fixture= new Uint8ClampedArray still.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'webp',(done)->
      fixture= new Uint8ClampedArray still.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'jpg',(done)->
      fixture= new Uint8ClampedArray still.jpg

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'tif',(done)->
      fixture= new Uint8ClampedArray still.tif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'bmp',(done)->
      fixture= new Uint8ClampedArray still.bmp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'jxr',(done)->
      fixture= new Uint8ClampedArray still.jxr

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'uint8clampedarray'
        done()

    itFuture 'psd',(done)->
      fixture= new Uint8ClampedArray still.psd

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'uint8clampedarray'
        done()
