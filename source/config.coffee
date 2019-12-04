api_host = '192.168.31.18'
api_port = '3001'
api_prefix = 'http'


photo_host = 'localhost'
photo_port = '3002'
photo_prefix = 'http'


export default {
  api_service: "#{api_prefix}://#{api_host}:#{api_port}"
  photo_service: "#{photo_prefix}://#{photo_host}:#{photo_port}"
}
