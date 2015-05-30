# Dependencies
pixelUtil= require '../../src'

# Fixtures
{animated,still}= (require 'fixture-images').http

# Specs
describe 'URL',->
  describe 'animeted',->
    it 'gif',->
      fixture= animated.gif+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'url'

    it 'png',->
      fixture= animated.png+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'url'

    it 'webp',->
      fixture= animated.webp+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'url'

  describe 'static',->
    it 'gif',->
      fixture= still.gif+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'gif'
      expect(mime).toBe 'image/gif'
      expect(type).toBe 'url'

    it 'png',->
      fixture= still.png+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'png'
      expect(mime).toBe 'image/png'
      expect(type).toBe 'url'

    it 'webp',->
      fixture= still.webp+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'webp'
      expect(mime).toBe 'image/webp'
      expect(type).toBe 'url'

    it 'jpg',->
      fixture= still.jpg+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jpg'
      expect(mime).toBe 'image/jpeg'
      expect(type).toBe 'url'

    it 'tif',->
      fixture= still.tif+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'tif'
      expect(mime).toBe 'image/tiff'
      expect(type).toBe 'url'

    it 'bmp',->
      fixture= still.bmp+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'bmp'
      expect(mime).toBe 'image/bmp'
      expect(type).toBe 'url'

    it 'jxr',->
      fixture= still.jxr+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'jxr'
      expect(mime).toBe 'image/vnd.ms-photo'
      expect(type).toBe 'url'

    it 'psd',->
      fixture= still.psd+'?foo=bar&baz'

      {ext,mime,type}= pixelUtil.get fixture

      expect(ext).toBe 'psd'
      expect(mime).toBe 'image/vnd.adobe.photoshop'
      expect(type).toBe 'url'
