# JPG/JPEG operations
class JpegOperation < ImageOperation
  def quality(qty)
    request = Request.instance
    @image.write("#{request.result}") { self.quality = qty.to_i }
  end

  def resize_by_resolution(resolution)
    resolution = resolution_type(resolution)
    @image = @image.resample(resolution, resolution) do
      self.density = resolution.to_s
    end
  end
end
