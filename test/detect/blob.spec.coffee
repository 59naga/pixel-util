# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
itFuture= if FileReaderSync? then it else xit
describe 'Blob',->
  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new Blob [animated.gif],{type:'image/gif'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'blob'
        done()

    itFuture 'png',(done)->
      fixture= new Blob [animated.png],{type:'image/png'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'blob'
        done()

    itFuture 'webp',(done)->
      fixture= new Blob [animated.webp],{type:'image/webp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'blob'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new Blob [still.gif],{type:'image/gif'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'blob'
        done()

    itFuture 'png',(done)->
      fixture= new Blob [still.png],{type:'image/png'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'blob'
        done()

    itFuture 'webp',(done)->
      fixture= new Blob [still.webp],{type:'image/webp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'blob'
        done()

    itFuture 'jpg',(done)->
      fixture= new Blob [still.jpg],{type:'image/jpeg'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'blob'
        done()

    itFuture 'tif',(done)->
      fixture= new Blob [still.tif],{type:'image/tiff'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'blob'
        done()

    itFuture 'bmp',(done)->
      fixture= new Blob [still.bmp],{type:'image/bmp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'blob'
        done()

    itFuture 'jxr',(done)->
      fixture= new Blob [still.jxr],{type:'image/vnd.ms-photo'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'blob'
        done()

    itFuture 'psd',(done)->
      fixture= new Blob [still.psd],{type:'image/vnd.adobe.photoshop'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'blob'
        done()
