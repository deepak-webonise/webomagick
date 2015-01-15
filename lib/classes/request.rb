require 'singleton'
# Request for the image process
# Request format hash = {'source' => 'http://test.com/test.jpg',
# 'response' => 'result_path'}
class Request
  include Singleton
  attr_accessor :img_source, :actions, :result
end
