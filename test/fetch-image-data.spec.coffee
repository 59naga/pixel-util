# Dependencies
pixelUtil= require '../src'

# Fixtures
fixtureImages= require 'fixture-images'

# Specs
describeFuture= if ImageData? then describe else xdescribe
describeFuture 'fetchImageData',->
  itFuture= unless window? then it else xit
  itFuture 'path',(done)->
    fixture= fixtureImages.path.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  it 'url',(done)->
    fixture= fixtureImages.https.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  it 'datauri',(done)->
    fixture= 'data:image/gif;base64,'
    fixture+= fixtureImages.animated.gif.toString 'base64'

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  it 'binary',(done)->
    fixture= fixtureImages.animated.gif.toString 'binary'

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  it 'buffer',(done)->
    fixture= fixtureImages.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  itFuture= if ArrayBuffer? then it else xit
  itFuture 'arraybuffer',(done)->
    fixture= new ArrayBuffer fixtureImages.animated.gif.length
    (new Uint8Array fixture).set fixtureImages.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  itFuture= if Uint8Array? then it else xit
  itFuture 'uint8array',(done)->
    fixture= new Uint8Array fixtureImages.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  itFuture= if Uint8ClampedArray? then it else xit
  itFuture 'uint8clampedarray',(done)->
    fixture= new Uint8ClampedArray fixtureImages.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  itFuture= if Blob? then it else xit
  itFuture 'blob',(done)->
    fixture= new Blob [fixtureImages.animated.gif],{type:'image/gif'}

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  # File isn't constructor
  xit 'file',(done)->
    fixture= new File [fixtureImages.animated.gif],{type:'image/gif'}

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()

  it 'image',(done)->
    fixture= new Image
    fixture.src= fixtureImages.https.animated.gif

    pixelUtil.fetchImageData fixture
    .then (imageData)->
      expect(imageData instanceof ImageData).toBe true
      
      expect(imageData.width).toBe 73
      expect(imageData.height).toBe 73
      expect(imageData.data.length).toBe imageData.width*imageData.height*4
      done()
