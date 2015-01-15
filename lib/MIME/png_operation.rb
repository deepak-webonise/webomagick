# PNG image processing class
class PngOperation < ImageOperation
  def convert(format)
    img = @img_path
    write_image(img, format)
  end

  def resize_by_resolution(resolution)
    resolution = resolution_type(resolution)
    @image.x_resolution = resolution
    @image.y_resolution = resolution
    #@image.density = "#{resolution}x#{resolution}"
    @image = @image.resample(resolution, resolution)
  end

  def resize_by_size(new_size)
    file_size = @image.filesize / 1024  # converting to KB
    scale = ((new_size - file_size) / file_size)
    scale = (scale < 0) ? (scale * -0.1) : scale
    @image.scale!(scale)
  end
end