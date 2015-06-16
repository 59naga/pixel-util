# Dependencies
Promise= require 'bluebird'

imageType= require 'image-type'
mime= require 'mime'

# Mime settings
mime.define 'image/vnd.ms-photo':['jxr']
mime.extensions['image/vnd.ms-photo']= 'jxr'
mime.extensions['image/jpeg']= 'jpg'
mime.extensions['image/tiff']= 'tif'

# Public
class PixelType
  get: (file)->
    type= @getTypeof file
    trusted=
      switch type
        when 'datauri'
          @getBuffer file

        when 'binary'
          @getBufferBinary file

        when 'blob'
          @readAsArrayBufferSync file

        when 'file'
          @readAsArrayBufferSync file

        else
          file

    pixelType=
      switch type
        when 'url'
          [url,querystring]= trusted.split '?'

          @lookupImageType url
        when 'path'
          @lookupImageType trusted
        when 'image'
          @lookupImageType trusted.src
        else
          @getImageType trusted

    pixelType?= {}
    pixelType.type= type

    pixelType

  detect: (file)->
    type= @getTypeof file

    promise=
      switch type
        when 'datauri'
          Promise.resolve @getBuffer file

        when 'binary'
          Promise.resolve @getBufferBinary file

        when 'blob'
          @readAsArrayBuffer file

        when 'file'
          @readAsArrayBuffer file

        else
          Promise.resolve file

    promise.then (trusted)=>
      pixelType=
        switch type
          when 'url'
            [url,querystring]= trusted.split '?'

            @lookupImageType url
          when 'path'
            @lookupImageType trusted
          when 'image'
            @lookupImageType trusted.src
          else
            @getImageType trusted

      pixelType?= {}
      pixelType.type= type

      pixelType

  getTypeof: (file)->
    return 'buffer' if Buffer.isBuffer file

    type= Object.prototype.toString.call file
    type= type.toString().match(/(\w+)\]/)[1].toLowerCase()
    switch type
      when 'string'
        switch
          when file.match /^https?:\/\//
            'url'

          when file.match /^data:image\//
            'datauri'

          when file.match /^(?:\w:)?[\w\-\/\\.~ ]+$/
            'path'

          else
            'binary'

      when 'htmlimageelement'
        'image'

      else
        type

  getImageType: (buffer)->
    buffer= new Uint8Array buffer if buffer instanceof ArrayBuffer
    imageType buffer

  lookupImageType: (url)->
    mimeType= mime.lookup url

    mime: mimeType
    ext: mime.extension mimeType

  getBuffer: (datauri)->
    new Buffer (datauri.slice datauri.indexOf(',')+1),'base64'

  getBufferBinary: (binary)->
    new Buffer binary,'binary'

  readAsArrayBuffer: (blob)->
    new Promise (resolve,reject)->
      return reject new ArrayBuffer 0 unless FileReader?

      reader= new FileReader
      reader.readAsArrayBuffer blob
      reader.onload= ->
        resolve reader.result

  readAsArrayBufferSync: (blob)->
    if FileReaderSync?
      reader= new FileReaderSync
      reader.readAsArrayBuffer blob
    else
      new ArrayBuffer 0

module.exports= new PixelType
module.exports.PixelType= PixelType