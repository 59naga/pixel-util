# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Uint8Array',->
  itFuture= if Uint8Array? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new Uint8Array animated.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'png',(done)->
      fixture= new Uint8Array animated.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'webp',(done)->
      fixture= new Uint8Array animated.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'uint8array'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new Uint8Array still.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'png',(done)->
      fixture= new Uint8Array still.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'webp',(done)->
      fixture= new Uint8Array still.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'jpg',(done)->
      fixture= new Uint8Array still.jpg

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'tif',(done)->
      fixture= new Uint8Array still.tif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'bmp',(done)->
      fixture= new Uint8Array still.bmp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'jxr',(done)->
      fixture= new Uint8Array still.jxr

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'uint8array'
        done()

    itFuture 'psd',(done)->
      fixture= new Uint8Array still.psd

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'uint8array'
        done()
