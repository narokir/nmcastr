class WelcomeController < ApplicationController
    def home
        # root set in routes.rb
        @castingcalls = Castingcall.all
    end
end
