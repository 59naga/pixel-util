# Note: API for browsers

# Dependencies
PixelType= (require './pixel-type').PixelType

Promise= require 'bluebird'

# Public
class PixelData extends PixelType
  fetchImageData: (file)->
    switch @getTypeof file
      when 'path'
        @fetchImageDataViaUrl file

      when 'url'
        @fetchImageDataViaUrl file

      when 'datauri'
        @fetchImageDataViaUrl file

      when 'binary'
        @fetchImageDataViaBinary file

      when 'buffer'
        @fetchImageDataViaBuffer file

      when 'blob'
        @fetchImageDataViaBlob file

      when 'image'
        @fetchImageDataViaUrl file.src

  fetchImageDataViaUrl: (url)->
    new Promise (resolve,reject)=>
      image= new Image
      image.crossOrigin= 'Anonymous'
      image.src= url

      image.onerror= (error)->
        reject error.message
      image.onload= =>
        resolve @getImageData image

  fetchImageDataViaBinary: (binary)->
    @fetchImageDataViaBuffer @getBufferBinary binary

  fetchImageDataViaBuffer: (buffer)->
    {type}= @getImageType buffer

    @fetchImageDataViaBlob new Blob [buffer],{type}

  fetchImageDataViaBlob: (blob)->
    url= URL ? webkitURL

    @fetchImageDataViaUrl url.createObjectURL blob

  fetchObjectUrl: (blob)->
    new Promise (resolve,reject)=>
      resolve blob

  getImageData: (image)->
    context= document.createElement('canvas').getContext '2d'
    context.canvas.width= image.width
    context.canvas.height= image.height
    context.drawImage image,0,0

    context.getImageData 0,0,image.width,image.height

module.exports= new PixelData
module.exports.PixelData= PixelData