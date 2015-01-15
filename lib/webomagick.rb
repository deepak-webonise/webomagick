require ::File.expand_path('../bootstrap', __FILE__)
# Initialize the Image Process
class Webomagick
  def self.image_process(params)
    request = Request.instance
    response = Response.instance
    request.img_source = params['source_url']
    request.actions = params['actions']
    request.result = params['result']
    if HttpOperations::HttpValidation.valid_url?(request.img_source)
      obj_img = create_object
      (request.actions).each do |action, param|
        if defined?action
          obj_img.method(action.to_sym).call(param)
        else
          response.finish(602)
        end
      end
      obj_img.write_image
    else
      response.finish(404)
    end
  end

  def self.create_object
    request = Request.instance
    response = Response.instance
    obj_img_magick = ImageList.new(request.img_source)
    if  FileOperations::FileValidation.valid_format?(obj_img_magick.format)
      class_name = Object.const_get(obj_img_magick.format.to_s.capitalize +
                                   'Operation')
      class_name.new(obj_img_magick)
    else
      response.finish(601)
    end
  end
end
