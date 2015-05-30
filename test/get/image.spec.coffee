# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= (require 'fixture-images').http

# Specs
describe 'Image',->
  itFuture= if Image? then it else xit

  describe 'animeted',->
    itFuture 'gif',->
      fixture= new Image
      fixture.src= animated.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'image'

    itFuture 'png',->
      fixture= new Image
      fixture.src= animated.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'image'

    itFuture 'webp',->
      fixture= new Image
      fixture.src= animated.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'image'

  describe 'static',->
    itFuture 'gif',->
      fixture= new Image
      fixture.src= still.gif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'image'

    itFuture 'png',->
      fixture= new Image
      fixture.src= still.png

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'image'

    itFuture 'webp',->
      fixture= new Image
      fixture.src= still.webp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'image'

    itFuture 'jpg',->
      fixture= new Image
      fixture.src= still.jpg

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'image'

    itFuture 'tif',->
      fixture= new Image
      fixture.src= still.tif

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'image'

    itFuture 'bmp',->
      fixture= new Image
      fixture.src= still.bmp

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'image'

    itFuture 'jxr',->
      fixture= new Image
      fixture.src= still.jxr

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'image'

    itFuture 'psd',->
      fixture= new Image
      fixture.src= still.psd

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'image'
