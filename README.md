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

## `pixelUtil.createBuffer`(file) -> Promise.then(`buffer`)

Create buffer of an argument.

```js
// path
pixelUtil.createBuffer('foo.png').then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// url
pixelUtil.createBuffer('http://example.com/foo.png').then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// datauri
pixelUtil.createBuffer('data:image/png;base64,iVBORw0KGgoAAA...').then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// binary
pixelUtil.createBuffer('PNG\n\nIHDR``¶j\n        0PLT').then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// buffer
var buffer= fs.readFileSync('foo.png');
pixelUtil.createBuffer(buffer).then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var uint8array= new Uint8Array(buffer);
pixelUtil.createBuffer(uint8array).then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.createBuffer(uint8clampedarray).then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// blob
var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.createBuffer(blob).then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});

// image
var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.createBuffer(image).then(function(buffer){
  console.log(buffer instanceof Uint8Array);// true
  console.log(buffer);// <Buffer 47 49 46 38 39 ...
});
```

## `pixelUtil.get`(file) -> `{ext,mime,type}`

> Detect the image type and object type of an argument.
> __Blob is deprecate__. Because analyze using [FileReaderSync](https://w3c.github.io/FileAPI/#FileReaderSync). But has not been implemented in the current browsers...

```js
// path
pixelUtil.get('foo.png');
//-> {ext: 'png', mime: 'image/png', type: 'path'}

// url
pixelUtil.get('http://example.com/foo.png');
//-> {ext: 'png', mime: 'image/png', type: 'url'}

// datauri
pixelUtil.get('data:image/png;base64,iVBORw0KGgoAAA...');
//-> {ext: 'png', mime: 'image/png', type: 'datauri'}

// binary
pixelUtil.get('PNG\n\nIHDR``¶j\n        0PLT');
//-> {ext: 'png', mime: 'image/png', type: 'binary'}

// buffer
var buffer= fs.readFileSync('foo.png');
pixelUtil.get(buffer);
//-> {ext: 'png', mime: 'image/png', type: 'buffer'}

var uint8array= new Uint8Array(buffer);
pixelUtil.get(uint8array);
//-> {ext: 'png', mime: 'image/png', type: 'buffer'}

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.get(uint8clampedarray);
//-> {ext: 'png', mime: 'image/png', type: 'buffer'}

// blob
var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.get(blob);
//-> {ext: 'png', mime: 'image/png', type: 'blob'}

// image
var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.get(image);
//-> {ext: 'png', mime: 'image/png', type: 'image'}
```

## `pixelUtil.getTypeof`(file) -> `type`

Detect the object type of an argument.

```js
// path
pixelUtil.getTypeof('foo.png');
//-> path

// url
pixelUtil.getTypeof('http://example.com/foo.png');
//-> url

// datauri
pixelUtil.getTypeof('data:image/png;base64,iVBORw0KGgoAAA...');
//-> datauri

// binary
pixelUtil.getTypeof('PNG\n\nIHDR``¶j\n        0PLT');
//-> binary

// buffer
var buffer= fs.readFileSync('foo.png');
pixelUtil.getTypeof(buffer);
//-> buffer

var uint8array= new Uint8Array(buffer);
pixelUtil.getTypeof(uint8array);
//-> buffer

var uint8clampedarray= new Uint8ClampedArray(buffer);
pixelUtil.getTypeof(uint8clampedarray);
//-> buffer

// blob
var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.getTypeof(blob);
//-> blob

// image
var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.getTypeof(image);
//-> image
```

# API for browser

## `pixelUtil.fetchImageData` -> Promise.then(`imageData`)
Create ImageData of an argument.

```js
// path
pixelUtil.fetchImageData('foo.png').then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

// url
pixelUtil.fetchImageData('http://example.com/foo.png').then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

// datauri
pixelUtil.fetchImageData('data:image/png;base64,iVBORw0KGgoAAA...').then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

// binary
pixelUtil.fetchImageData('PNG\n\nIHDR``¶j\n        0PLT').then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

// buffer
var buffer= fs.readFileSync('foo.png');
pixelUtil.fetchImageData(buffer).then(function(imageData){
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

// blob
var blob= new Blob([buffer],{type:'image/png'});
pixelUtil.fetchImageData(blob).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});

// image
var image= new Image;
image.src= 'http://example.com/foo.png';
pixelUtil.fetchImageData(image).then(function(imageData){
  console.log(imageData instanceof ImageData);// true
  console.log(imageData.width);// 73
  console.log(imageData.height);// 73
});
```

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
