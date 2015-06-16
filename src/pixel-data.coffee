# Dependencies
Promise= require 'bluebird'
PixelType= (require './pixel-type').PixelType

# Note: API for browsers

# Public
class PixelData extends PixelType
  fetchImageData: (file)->
    promise=
      switch @getTypeof file
        when 'path'
          @fetchImageDataViaUrl file

        when 'url'
          @fetchImageDataViaUrl file

        when 'datauri'
          @fetchImageDataViaDatauri file

        when 'binary'
          @fetchImageDataViaBinary file

        when 'blob'
          @fetchImageDataViaBlob file

        when 'file'
          @fetchImageDataViaBlob file

        when 'image'
          @fetchImageDataViaUrl file.src

        else
          @fetchImageDataViaBuffer file
    
    promise

  fetchImageDataViaUrl: (url)->
    new Promise (resolve,reject)=>
      image= new Image
      image.crossOrigin= 'Anonymous'
      image.src= url

      image.onerror= (error)->
        reject error.message
      image.onload= =>
        resolve @getImageData image

  fetchImageDataViaDatauri: (datauri)->
    binary= atob datauri.slice datauri.indexOf(',')+1
    
    @fetchImageDataViaBinary binary

  fetchImageDataViaBinary: (binary)->
    @fetchImageDataViaBuffer @getBufferBinary binary

  fetchImageDataViaBuffer: (buffer)->
    {type}= @getImageType buffer

    @fetchImageDataViaBlob new Blob [buffer],{type}

  fetchImageDataViaBlob: (blob)->
    url= URL ? webkitURL

    @fetchImageDataViaUrl url.createObjectURL blob

  fetchObjectUrl: (blob)->
    new Promise (resolve,reject)->
      resolve blob

  getImageData: (image)->
    context= document.createElement('canvas').getContext '2d'
    context.canvas.width= image.width
    context.canvas.height= image.height
    context.drawImage image,0,0

    context.getImageData 0,0,image.width,image.height

  createImageData: (width,height)->
    U8CA= Uint8ClampedArray ? Uint8Array

    if document?
      context= document.createElement('canvas').getContext '2d'

      context.createImageData width,height
    else
      imageData= {width,height}
      imageData.data= new U8CA width * height * 4
      imageData

  set: (to,from)->
    dataType= Object.prototype.toString.call to.data

    unless to.data.set?
      if to.data.length isnt from.data.length
        throw new RangeError "Source is invalid(#{to.data.length} == #{from.data.length})"

      i= 0
      while from.data[i]?
        to.data[i]= from.data[i]

        i++

    else
      to.data.set from.data

module.exports= new PixelData
module.exports.PixelData= PixelData