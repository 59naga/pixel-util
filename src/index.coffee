# Dependencies
Promise= require 'bluebird'
PixelData= (require './pixel-data').PixelData

superagent= require 'superagent'
unless window?
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
    new Promise (resolve,reject)->
      superagent url
      .buffer()
      .end (error,response)->
        return reject error if error?

        resolve response.body

module.exports= new PixelUtil
module.exports.PixelUtil= PixelUtil
