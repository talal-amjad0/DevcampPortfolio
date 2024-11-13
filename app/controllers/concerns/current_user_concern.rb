module CurrentUserConcern
    extend ActiveSupport::Concern

    require 'ostruct'
    def current_user
        super || OpenStruct.new(name:"Guest User", first_name:"Guest User", last_name:"Guest User", email:"guest@gmail.com")
      end
    
end