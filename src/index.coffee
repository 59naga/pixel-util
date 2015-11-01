# Dependencies
Promise= require 'bluebird'
PixelData= (require './pixel-data').PixelData

unless window?
  request= require 'request'
  fs= require 'fs'

# Public
class PixelUtil extends PixelData
  createBuffer: (file)->
    promise=
      switch @getTypeof file
        when 'path'
          @fetchFile file

        when 'url'
          @fetchBuffer file

        when 'datauri'
          Promise.resolve @getBuffer file

        when 'binary'
          Promise.resolve @getBufferBinary file

        when 'blob'
          @readAsArrayBuffer file

        when 'file'
          @readAsArrayBuffer file

        when 'image'
          @fetchBuffer file.src

        else
          Promise.resolve file

    promise.then (arraybuffer)->
      new Buffer new Uint8Array arraybuffer

  fetchFile: (path)->
    unless window?
      Promise.resolve fs.readFileSync path

    else
      @fetchBuffer path

  fetchBuffer: (url)->
    unless window?
      new Promise (resolve,reject)->
        request {url:url,encoding:null},(error,response,buffer)->
          return reject error if error?

          resolve buffer

    else
      @fetchArrayBuffer url

  fetchArrayBuffer: (url)->
    new Promise (resolve,reject)->
      xhr= new XMLHttpRequest
      xhr.open 'GET',url,true
      xhr.responseType= 'arraybuffer'
      xhr.send()

      xhr.onerror= (error)->
        return reject xhr.statusText

      xhr.onload= ->
        return reject xhr.statusText unless xhr.readyState is 4

        resolve xhr.response
  
module.exports= new PixelUtil
module.exports.PixelUtil= PixelUtil
