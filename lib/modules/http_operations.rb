require 'net/http'
module HttpOperations
  # Http url validation
  class HttpValidation
    def self.valid_url?(url)
      url = URI.parse(url)
      req = Net::HTTP.new(url.host, url.port)
      req.use_ssl = (url.scheme == 'https')
      res = req.request_head(url.path)
      res.code == '200' ? true : false
    end
  end
end
