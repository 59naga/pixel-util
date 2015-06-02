# Dependencies
pixelUtil= require '../src'

# Fixtures
fixtureImages= require 'fixture-images'

# Specs
describe '.getTypeof',->
  it 'path',->
    fixture= fixtureImages.path.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'path'

    # Fixed #1
    fixture= 'C:\\Users\\IEUser\\Downloads\\pixel-util\\node_modules\\fixture-images\\still.WEBP'

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'path'

  it 'url',->
    fixture= fixtureImages.https.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'url'

  it 'datauri',->
    fixture= 'data:image/gif;base64,'
    fixture+= fixtureImages.animated.gif.toString 'base64'

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'datauri'

  it 'binary',->
    fixture= fixtureImages.animated.gif.toString 'binary'

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'binary'

  it 'buffer',->
    fixture= fixtureImages.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'buffer'

  itFuture= if ArrayBuffer? then it else xit
  itFuture 'arraybuffer',->
    fixture= new ArrayBuffer fixtureImages.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'arraybuffer'

  itFuture= if Uint8Array? then it else xit
  itFuture 'uint8array',->
    fixture= new Uint8Array fixtureImages.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'uint8array'

  itFuture= if Uint8ClampedArray? then it else xit
  itFuture 'uint8clampedarray',->
    fixture= new Uint8ClampedArray fixtureImages.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'uint8clampedarray'

  itFuture= if Blob? then it else xit
  itFuture 'blob',->
    fixture= new Blob [fixtureImages.animated.gif],{type:'image/gif'}

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'blob'

  # File isn't constructor
  xit 'file',->
    fixture= new File [fixtureImages.animated.gif],{type:'image/gif'}

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'file'

  itFuture= if Image? then it else xit
  itFuture 'image',->
    fixture= new Image
    fixture.src= fixtureImages.https.animated.gif

    type= pixelUtil.getTypeof fixture
    expect(type).toBe 'image'
