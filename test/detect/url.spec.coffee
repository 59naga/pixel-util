# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= (require 'fixture-images').http

# Specs
describe 'URL',->
  describe 'animeted',->
    it 'gif',(done)->
      fixture= animated.gif+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'url'
        done()

    it 'png',(done)->
      fixture= animated.png+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'url'
        done()

    it 'webp',(done)->
      fixture= animated.webp+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'url'
        done()

  describe 'static',->
    it 'gif',(done)->
      fixture= still.gif+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'gif'
        expect(mime).toBe 'image/gif'
        expect(type).toBe 'url'
        done()

    it 'png',(done)->
      fixture= still.png+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'png'
        expect(mime).toBe 'image/png'
        expect(type).toBe 'url'
        done()

    it 'webp',(done)->
      fixture= still.webp+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'webp'
        expect(mime).toBe 'image/webp'
        expect(type).toBe 'url'
        done()

    it 'jpg',(done)->
      fixture= still.jpg+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jpg'
        expect(mime).toBe 'image/jpeg'
        expect(type).toBe 'url'
        done()

    it 'tif',(done)->
      fixture= still.tif+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'tif'
        expect(mime).toBe 'image/tiff'
        expect(type).toBe 'url'
        done()

    it 'bmp',(done)->
      fixture= still.bmp+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'bmp'
        expect(mime).toBe 'image/bmp'
        expect(type).toBe 'url'
        done()

    it 'jxr',(done)->
      fixture= still.jxr+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'jxr'
        expect(mime).toBe 'image/vnd.ms-photo'
        expect(type).toBe 'url'
        done()

    it 'psd',(done)->
      fixture= still.psd+'?foo=bar&baz'

      pixelUtil.detect fixture
      .then ({ext,mime,type})->
        expect(ext).toBe 'psd'
        expect(mime).toBe 'image/vnd.adobe.photoshop'
        expect(type).toBe 'url'
        done()
