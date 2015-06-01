# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
itFuture= if FileReaderSync? then it else xit
xdescribe 'File',->
  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new File [animated.gif],{type:'image/gif'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'blob'
        done()

    itFuture 'png',(done)->
      fixture= new File [animated.png],{type:'image/png'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'blob'
        done()

    itFuture 'webp',(done)->
      fixture= new File [animated.webp],{type:'image/webp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'blob'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new File [still.gif],{type:'image/gif'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'blob'
        done()

    itFuture 'png',(done)->
      fixture= new File [still.png],{type:'image/png'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'blob'
        done()

    itFuture 'webp',(done)->
      fixture= new File [still.webp],{type:'image/webp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'blob'
        done()

    itFuture 'jpg',(done)->
      fixture= new File [still.jpg],{type:'image/jpeg'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'blob'
        done()

    itFuture 'tif',(done)->
      fixture= new File [still.tif],{type:'image/tiff'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'blob'
        done()

    itFuture 'bmp',(done)->
      fixture= new File [still.bmp],{type:'image/bmp'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'blob'
        done()

    itFuture 'jxr',(done)->
      fixture= new File [still.jxr],{type:'image/vnd.ms-photo'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'blob'
        done()

    itFuture 'psd',(done)->
      fixture= new File [still.psd],{type:'image/vnd.adobe.photoshop'}

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'blob'
        done()
