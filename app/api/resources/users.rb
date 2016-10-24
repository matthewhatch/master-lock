module API
  module Resources
    class Users < Grape::API
      before do
        require_oauth_token
      end
      
      resource :users do
        get do
          users = [User.new(first_name: 'Ion'), User.new(first_name: 'Gheo')]
          present users, with: API::Entities::User
        end
      end
    end
  end
end
