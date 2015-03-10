module Kanban
  class API < Grape::API
    prefix 'api'
    format :json
    mount ::Kanban::Ping
  end
end
