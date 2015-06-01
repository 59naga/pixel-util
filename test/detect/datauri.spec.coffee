# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Uint8Array',->
  itFuture= if Uint8Array? then it else xit

  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= 'data:image/gif;base64,'
      fixture+= animated.gif.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'datauri'
        done()

    itFuture 'png',(done)->
      fixture= 'data:image/png;base64,'
      fixture+= animated.png.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'datauri'
        done()

    itFuture 'webp',(done)->
      fixture= 'data:image/webp;base64,'
      fixture+= animated.webp.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'datauri'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= 'data:image/gif;base64,'
      fixture+= still.gif.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'datauri'
        done()

    itFuture 'png',(done)->
      fixture= 'data:image/png;base64,'
      fixture+= still.png.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'datauri'
        done()

    itFuture 'webp',(done)->
      fixture= 'data:image/webp;base64,'
      fixture+= still.webp.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'datauri'
        done()

    itFuture 'jpg',(done)->
      fixture= 'data:image/jpeg;base64,'
      fixture+= still.jpg.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'datauri'
        done()

    itFuture 'tif',(done)->
      fixture= 'data:image/tiff;base64,'
      fixture+= still.tif.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'datauri'
        done()

    itFuture 'bmp',(done)->
      fixture= 'data:image/bmp;base64,'
      fixture+= still.bmp.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'datauri'
        done()

    itFuture 'jxr',(done)->
      fixture= 'data:image/vnd.ms-photo;base64,'
      fixture+= still.jxr.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'datauri'
        done()

    itFuture 'psd',(done)->
      fixture= 'data:image/vnd.adobe.photoshop;base64,'
      fixture+= still.psd.toString 'base64'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'datauri'
        done()
