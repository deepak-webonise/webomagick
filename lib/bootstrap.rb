require 'RMagick'
include Magick
require 'json'
require 'yaml'
require 'singleton'
require 'fileutils'
require ::File.expand_path('../MIME/image_operation', __FILE__)
require ::File.expand_path('../MIME/jpeg_operation', __FILE__)
require ::File.expand_path('../MIME/png_operation', __FILE__)
require ::File.expand_path('../MIME/gif_operation', __FILE__)
require ::File.expand_path('../classes/request', __FILE__)
require ::File.expand_path('../classes/response', __FILE__)
require ::File.expand_path('../modules/file_opertations', __FILE__)
require ::File.expand_path('../modules/http_operations', __FILE__)
