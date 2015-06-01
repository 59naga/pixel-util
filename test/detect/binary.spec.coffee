# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
describe 'Binary',->
  describe 'animeted',->
    it 'gif',(done)->
      fixture= animated.gif.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'binary'
        done()

    it 'png',(done)->
      fixture= animated.png.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'binary'
        done()

    it 'webp',(done)->
      fixture= animated.webp.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'binary'
        done()

  describe 'static',->
    it 'gif',(done)->
      fixture= still.gif.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'binary'
        done()

    it 'png',(done)->
      fixture= still.png.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'binary'
        done()

    it 'webp',(done)->
      fixture= still.webp.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'binary'
        done()

    it 'jpg',(done)->
      fixture= still.jpg.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'binary'
        done()

    it 'tif',(done)->
      fixture= still.tif.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'binary'
        done()

    it 'bmp',(done)->
      fixture= still.bmp.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'binary'
        done()

    it 'jxr',(done)->
      fixture= still.jxr.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'binary'
        done()

    it 'psd',(done)->
      fixture= still.psd.toString('binary')

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'binary'
        done()
