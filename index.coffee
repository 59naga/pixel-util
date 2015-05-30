main=
  if __filename.slice(-7) is '.coffee'
    require './src'
  else
    require './lib'

module.exports= main