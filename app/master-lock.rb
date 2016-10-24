require 'api/root'
require 'rack/oauth2'

module MasterLock
  class App
    def call(env)
      API::Root.call(env)
    end
  end
end
