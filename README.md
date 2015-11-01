# PixelUtil [![NPM version][npm-image]][npm] [![Build Status][travis-image]][travis] [![Coverage Status][coveralls-image]][coveralls]

[![Sauce Test Status][sauce-image]][sauce]

## Installation

### Via npm

```bash
$ npm install pixel-util --save
```
```js
var pixelUtil= require('pixel-util');
console.log(pixelUtil); //object
```

### Via bower

```bash
$ bower install pixel-util --save
```
```html
<script src="bower_components/pixel-util/pixel-util.min.js"></script>
<script>
  console.log(pixelUtil); //object
</script>
```

# API

## `.createBuffer`(file) -> Promise.then(`buffer`)

Create buffer of an argument.

```js
var path= 'foo.png';
pixelUtil.createBuffer(path).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var url= 'http://example.com/foo.png';
pixelUtil.createBuffer(url).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var datauri= 'data:image/png;base64,iVBORw0KGgoAAA...';
pixelUtil.createBuffer(datauri).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var binary= 'PNG\n\nIHDR``¶j\n        0PLT';
pixelUtil.createBuffer(binary).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var buffer= fs.readFileSync('foo.png');
pixelUtil.createBuffer(buffer).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var arraybuffer= new ArrayBuffer(buffer.length);
new Uint8Array(arraybuffer).set(buffer);
pixelUtil.createBuffer(arraybuffer).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var uint8array= new Buffer(buffer);
pixelUtil.createBuffer(uint8array).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.createBuffer(uint8clampedarray).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.createBuffer(blob).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var file= new File([buffer],{type:'image/png'});
pixelUtil.createBuffer(file).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.createBuffer(image).then(function(buffer){
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});
```

## `.detect`(file) -> Promise.then(`{ext,mime,type}`)

> Asynchronous detection the image type and object type of an argument.

```js
var path= 'foo.png';
pixelUtil.detect(path).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'path'}

var url= 'http://example.com/foo.png';
pixelUtil.detect(url).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'url'}

var datauri= 'data:image/png;base64,iVBORw0KGgoAAA...';
pixelUtil.detect(datauri).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'datauri'}

var binary= 'PNG\n\nIHDR``¶j\n        0PLT';
pixelUtil.detect(binary).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'binary'}

var buffer= fs.readFileSync('foo.png');
pixelUtil.detect(buffer).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'buffer'}

var arraybuffer= new ArrayBuffer(buffer.length);
new Uint8Array(arraybuffer).set(buffer);
pixelUtil.detect(arraybuffer).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'arraybuffer'}

var uint8array= new Uint8Array(buffer);
pixelUtil.detect(uint8array).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'uint8array'}

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.detect(uint8clampedarray).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'uint8clampedarray'}

var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.detect(blob).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'blob'}

var file= new File([buffer],{type:'image/png'});
pixelUtil.detect(file).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'file'}

var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.detect(image).then(function(types){
  console.log(types);
});
//-> {ext: 'png', mime: 'image/png', type: 'image'}
```

## `.get`(file) -> `{ext,mime,type}`

> Synchronous detection the image type and object type of an argument.
> __Blob/File is deprecate__. Because analyze using [FileReaderSync](https://w3c.github.io/FileAPI/#FileReaderSync). But has not been implemented in the current browsers...

```js
var path= 'foo.png';
pixelUtil.get(path);
//-> {ext: 'png', mime: 'image/png', type: 'path'}

var url= 'http://example.com/foo.png';
pixelUtil.get(url);
//-> {ext: 'png', mime: 'image/png', type: 'url'}

var datauri= 'data:image/png;base64,iVBORw0KGgoAAA...';
pixelUtil.get(datauri);
//-> {ext: 'png', mime: 'image/png', type: 'datauri'}

var binary= 'PNG\n\nIHDR``¶j\n        0PLT';
pixelUtil.get(binary);
//-> {ext: 'png', mime: 'image/png', type: 'binary'}

var buffer= fs.readFileSync('foo.png');
pixelUtil.get(buffer);
//-> {ext: 'png', mime: 'image/png', type: 'buffer'}

var arraybuffer= new ArrayBuffer(buffer.length);
new Uint8Array(arraybuffer).set(buffer);
pixelUtil.get(arraybuffer);
//-> {ext: 'png', mime: 'image/png', type: 'arraybuffer'}

var uint8array= new Uint8Array(buffer);
pixelUtil.get(uint8array);
//-> {ext: 'png', mime: 'image/png', type: 'uint8array'}

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.get(uint8clampedarray);
//-> {ext: 'png', mime: 'image/png', type: 'uint8clampedarray'}

var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.get(blob);
//-> {ext: 'png', mime: 'image/png', type: 'blob'}

var file= new File([buffer],{type:'image/png'});
pixelUtil.get(file);
//-> {ext: 'png', mime: 'image/png', type: 'file'}

var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.get(image);
//-> {ext: 'png', mime: 'image/png', type: 'image'}
```

## `.getTypeof`(file) -> `type`

Detect the object type of an argument.

```js
var path= 'foo.png';
pixelUtil.getTypeof(path);
//-> path

var url= 'http://example.com/foo.png';
pixelUtil.getTypeof(url);
//-> url

var datauri= 'data:image/png;base64,iVBORw0KGgoAAA...';
pixelUtil.getTypeof(datauri);
//-> datauri

var binary= 'PNG\n\nIHDR``¶j\n        0PLT';
pixelUtil.getTypeof(binary);
//-> binary

var buffer= fs.readFileSync('foo.png');
pixelUtil.getTypeof(buffer);
//-> buffer

var arraybuffer= new ArrayBuffer(buffer.length);
pixelUtil.getTypeof(arraybuffer);
//-> arraybuffer

var uint8array= new Uint8Array(buffer);
pixelUtil.getTypeof(uint8array);
//-> uint8array

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.getTypeof(uint8clampedarray);
//-> uint8clampedarray

var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.getTypeof(blob);
//-> blob

var file= new File([buffer],{type:'image/png'});
pixelUtil.getTypeof(file);
//-> file

var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.getTypeof(image);
//-> image
```

## `.createImageData`(width,height) -> imageData
Return imageData has `width` and `height`.
> Return Object like the ImageData if in Node.js

```js
pixelUtil.createImageData 59,798
//-> <ImageData {width: 59, height: 798, data: <Uint8ClampedArray ...>}>
```

# API for browser

## `.fetchImageData`(file) -> Promise.then(`imageData`)
Create ImageData of an argument.

```js
var path= 'foo.png';
pixelUtil.fetchImageData(path).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var url= 'http://example.com/foo.png';
pixelUtil.fetchImageData(url).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var datauri= 'data:image/png;base64,iVBORw0KGgoAAA...';
pixelUtil.fetchImageData(datauri).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var binary= 'PNG\n\nIHDR``¶j\n        0PLT';
pixelUtil.fetchImageData(binary).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var buffer= fs.readFileSync('foo.png');
pixelUtil.fetchImageData(buffer).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var arraybuffer= new ArrayBuffer(buffer.length);
new Uint8Array(arraybuffer).set(buffer);
pixelUtil.fetchImageData(arraybuffer).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var uint8array= new Uint8Array(buffer);
pixelUtil.fetchImageData(uint8array).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.fetchImageData(uint8clampedarray).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.fetchImageData(blob).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var file= new File([buffer],{type:'image/png'});
pixelUtil.fetchImageData(file).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.fetchImageData(image).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});
```

## `.set`(imageData,source) polyfill under IE11

Instance of imageData.data is `CanvasPixelArray` if __IE10 or less__.
That hasn't a `.set` method of `Uint8Array`, Change the `imageData.data` using `pixelUtil.set` with `source.data`.

```js
var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.fetchImageData(image).then(function(imageData){
  var source= {data:new Array(imageData.data.length)};
  for(var i= 0; i< imageData.data.length; i++){
    source.data[i]= 0;
  }
  source.data[0]= 255;

  pixelUtl.set(imageData,source); // undefined

  console.log(imageData[0]); // 255
  console.log(imageData[imageData.data.length-1]); // 0
});
```

# Related projects
* __pixel-util__
* [pixel-gif](https://github.com/59naga/pixel-gif-/)
* [pixel-png](https://github.com/59naga/pixel-png/)
* [pixel-jpg](https://github.com/59naga/pixel-jpg/)
* [pixel-bmp](https://github.com/59naga/pixel-bmp/)
* [pixel](https://github.com/59naga/pixel/)
* [pixel-to-ansi](https://github.com/59naga/pixel-to-ansi/)
* [pixel-to-svg](https://github.com/59naga/pixel-to-svg/)

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

[sauce-image]: http://soysauce.berabou.me/u/59798/pixel-util.svg
[sauce]: https://saucelabs.com/u/59798
[npm-image]:https://img.shields.io/npm/v/pixel-util.svg?style=flat-square
[npm]: https://npmjs.org/package/pixel-util
[travis-image]: http://img.shields.io/travis/59naga/pixel-util.svg?style=flat-square
[travis]: https://travis-ci.org/59naga/pixel-util
[coveralls-image]: http://img.shields.io/coveralls/59naga/pixel-util.svg?style=flat-square
[coveralls]: https://coveralls.io/r/59naga/pixel-util?branch=master
