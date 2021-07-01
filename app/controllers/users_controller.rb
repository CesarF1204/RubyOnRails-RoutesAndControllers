class UsersController < ApplicationController
    def hello
        render :plain => 'Hello CodingDojo!'
    end
    def sayHello
        render :plain => 'Saying Hello'
    end
    def sayHelloJoe
        render :plain => 'Saying Hello Joe'
    end
    def sayHelloMichael
        redirect_to '/say/hello/joe'
    end
    def index
        render :plain => 'What do you want me to say???'
    end
    def pageVisit
        if session[:counter] == nil
            session[:counter] = 1
        else
            session[:counter] += 1
        end
        render :plain => 'You visited this url ' + session[:counter].to_s + ' times'
    end
    def pageRestart
        session.clear
        render :plain => 'Destroyed the session!'
    end
end
