# Dependencies
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
    trasted= 
      switch type
        when 'datauri'
          @getBuffer file

        when 'binary'
          @getBufferBinary file

        when 'blob'
          @readAsArrayBuffer file

        else
          file

    pixelType=
      switch type
        when 'url'
          [url,querystring]= trasted.split '?'

          @lookupImageType url
        when 'datauri'
          @getImageType trasted
        when 'path'
          @lookupImageType trasted
        when 'binary'
          @getImageType trasted
        when 'buffer'
          @getImageType trasted
        when 'blob'
          @getImageType trasted
        when 'image'
          @lookupImageType trasted.src
    pixelType.type= type

    pixelType

  getTypeof: (file)->
    switch typeof file
      when 'string'
        switch
          when file.match /^https?:\/\//
            'url'

          when file.match /^data:image\//
            'datauri'

          when file.match /^[\w\-\/\\.~ ]+$/
            'path'

          else
            'binary'

      when 'object'
        return 'buffer' if file.length>0

        if file?.toString
          switch file.toString() 
            when '[object HTMLImageElement]'
              'image'
              
            else
              file.toString().match(/(\w+)\]/)[1].toLowerCase()
        else
          'undefined'
      else
        'undefined'

  getImageType: (buffer)->
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
    if FileReaderSync?
      reader= new FileReaderSync
      reader.readAsArrayBuffer blob      
    else
      new ArrayBuffer 0

module.exports= new PixelType
module.exports.PixelType= PixelType