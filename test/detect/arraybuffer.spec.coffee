# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'ArrayBuffer',->
  itFuture= if ArrayBuffer? then it else xit
  
  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new ArrayBuffer animated.gif.length
      (new Uint8Array fixture).set animated.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'png',(done)->
      fixture= new ArrayBuffer animated.png.length
      (new Uint8Array fixture).set animated.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'webp',(done)->
      fixture= new ArrayBuffer animated.webp.length
      (new Uint8Array fixture).set animated.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'arraybuffer'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new ArrayBuffer still.gif.length
      (new Uint8Array fixture).set still.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'png',(done)->
      fixture= new ArrayBuffer still.png.length
      (new Uint8Array fixture).set still.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'webp',(done)->
      fixture= new ArrayBuffer still.webp.length
      (new Uint8Array fixture).set still.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'jpg',(done)->
      fixture= new ArrayBuffer still.jpg.length
      (new Uint8Array fixture).set still.jpg

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'tif',(done)->
      fixture= new ArrayBuffer still.tif.length
      (new Uint8Array fixture).set still.tif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'bmp',(done)->
      fixture= new ArrayBuffer still.bmp.length
      (new Uint8Array fixture).set still.bmp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'jxr',(done)->
      fixture= new ArrayBuffer still.jxr.length
      (new Uint8Array fixture).set still.jxr

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'arraybuffer'
        done()

    itFuture 'psd',(done)->
      fixture= new ArrayBuffer still.psd.length
      (new Uint8Array fixture).set still.psd

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'arraybuffer'
        done()
