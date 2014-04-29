class WelcomeController < ApplicationController
    
    
    def index
        Pusher['test_channel'].trigger('greet', {
            :greeting => "Hello there!"})
    end
    
    def binding
        Pusher['test_channel'].trigger('binding', { :message => "good day"})
    end
end
