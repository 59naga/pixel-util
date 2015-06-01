# Dependencies
pixelUtil= require '../src'

# Fixtures
fixtureImages= require 'fixture-images'

# Specs
describe 'createBuffer',->
  itFuture= unless window? then it else xit
  itFuture 'path',(done)->
    fixture= fixtureImages.path.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  it 'url',(done)->
    fixture= fixtureImages.https.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  it 'datauri',(done)->
    fixture= 'data:image/gif;base64,'
    fixture+= fixtureImages.animated.gif.toString 'base64'

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  it 'binary',(done)->
    fixture= fixtureImages.animated.gif.toString 'binary'

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  it 'buffer',(done)->
    fixture= fixtureImages.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  it 'buffer',(done)->
    fixture= new Uint8Array fixtureImages.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  itFuture= if Uint8ClampedArray? then it else xit
  itFuture 'buffer',(done)->
    fixture= new Uint8ClampedArray fixtureImages.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  itFuture= if Blob? then it else xit
  itFuture 'blob',(done)->
    fixture= new Blob [fixtureImages.animated.gif],{type:'image/gif'}

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  # itFuture= if File? then it else xit
  itFuture= xit
  itFuture 'file',(done)->
    fixture= new File [fixtureImages.animated.gif],{type:'image/gif'}

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()

  itFuture= if Image? then it else xit
  itFuture 'image',(done)->
    fixture= new Image
    fixture.src= fixtureImages.https.animated.gif

    pixelUtil.createBuffer fixture
    .then (buffer)->

      expect(Buffer.isBuffer(buffer)).toBe true
      expect(buffer.length).toBe fixtureImages.animated.gif.length
      done()
