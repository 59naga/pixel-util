# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= (require 'fixture-images').http

# Specs
describe 'Image',->
  itFuture= if Image? then it else xit

  describe 'animeted',->
    itFuture 'gif',(done)->
      fixture= new Image
      fixture.src= animated.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'image'
        done()

    itFuture 'png',(done)->
      fixture= new Image
      fixture.src= animated.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'image'
        done()

    itFuture 'webp',(done)->
      fixture= new Image
      fixture.src= animated.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'image'
        done()

  describe 'static',->
    itFuture 'gif',(done)->
      fixture= new Image
      fixture.src= still.gif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'image'
        done()

    itFuture 'png',(done)->
      fixture= new Image
      fixture.src= still.png

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'image'
        done()

    itFuture 'webp',(done)->
      fixture= new Image
      fixture.src= still.webp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'image'
        done()

    itFuture 'jpg',(done)->
      fixture= new Image
      fixture.src= still.jpg

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'image'
        done()

    itFuture 'tif',(done)->
      fixture= new Image
      fixture.src= still.tif

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'image'
        done()

    itFuture 'bmp',(done)->
      fixture= new Image
      fixture.src= still.bmp

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'image'
        done()

    itFuture 'jxr',(done)->
      fixture= new Image
      fixture.src= still.jxr

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'image'
        done()

    itFuture 'psd',(done)->
      fixture= new Image
      fixture.src= still.psd

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'image'
        done()
