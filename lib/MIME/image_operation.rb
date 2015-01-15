# common  image operations methods
class ImageOperation

  def initialize(magick_object)
    @image = magick_object
  end

  def thumbnail(width)
    @image = @image.resize_to_fit(width)
  end

  def resolution_type(type)
    (type.to_s == 'PixelsPerCentimeterResolution') ? (type / 2.54) : type
  end

  def resize_by_scale(scale)
    @image = @image.scale(scale)
  end

  def rotate(degree)
    @image = @image.rotate(degree)
  end

  def crop(params)
    @image.crop!(params['x'].abs, params['y'].abs, params['width'].abs,
                 params['height'].abs, true)
  end

  def write_image
    request = Request.instance
    FileOperations::FileOperation.prepare_path(request.result)
    @image.write("#{request.result}")
    response = Response.instance
    response.finish(200, request.result)
  end
end
