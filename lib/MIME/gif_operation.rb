# Gif imaeg operations
class GifOperation < ImageOperation
  def crop(params)
    @image = @image.crop(params['x'].abs, params['y'].abs, params['width'].abs,
                 params['height'].abs, true)
  end
  def resize_by_resolution(resolution)
    resolution = resolution_type(resolution)
    @image.density = "#{resolution}x#{resolution}"
    @image = @image.resample(resolution, resolution)
  end
end
