# Environment
jasmine.DEFAULT_TIMEOUT_INTERVAL= 3000

require './create-buffer.spec'
require './create-image-data.spec'

require './fetch-image-data.spec'

require './get/path.spec'
require './get/url.spec'
require './get/datauri.spec'
require './get/binary.spec'
require './get/buffer.spec'
require './get/uint8array.spec'
require './get/uint8clampedarray.spec'
require './get/blob.spec'
require './get/image.spec'

require './detect/path.spec'
require './detect/url.spec'
require './detect/datauri.spec'
require './detect/binary.spec'
require './detect/buffer.spec'
require './detect/uint8array.spec'
require './detect/uint8clampedarray.spec'
require './detect/blob.spec'
require './detect/image.spec'

require './get-typeof.spec'