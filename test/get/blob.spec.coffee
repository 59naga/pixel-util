# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= require 'fixture-images'

# Specs
itFuture= if FileReaderSync? then it else xit
describe 'Blob',->
  describe 'animeted',->
    itFuture 'gif',->
      fixture= new Blob [animated.gif],{type:'image/gif'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'blob'

    itFuture 'png',->
      fixture= new Blob [animated.png],{type:'image/png'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'blob'

    itFuture 'webp',->
      fixture= new Blob [animated.webp],{type:'image/webp'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'blob'

  describe 'static',->
    itFuture 'gif',->
      fixture= new Blob [still.gif],{type:'image/gif'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'blob'

    itFuture 'png',->
      fixture= new Blob [still.png],{type:'image/png'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'blob'

    itFuture 'webp',->
      fixture= new Blob [still.webp],{type:'image/webp'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'blob'

    itFuture 'jpg',->
      fixture= new Blob [still.jpg],{type:'image/jpeg'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'blob'

    itFuture 'tif',->
      fixture= new Blob [still.tif],{type:'image/tiff'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'blob'

    itFuture 'bmp',->
      fixture= new Blob [still.bmp],{type:'image/bmp'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'blob'

    itFuture 'jxr',->
      fixture= new Blob [still.jxr],{type:'image/vnd.ms-photo'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'blob'

    itFuture 'psd',->
      fixture= new Blob [still.psd],{type:'image/vnd.adobe.photoshop'}

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'blob'
