require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/highschool' do
    erb :highschool
  end

  get '/college' do
    erb :college
  end

  get '/suicide' do
    erb :suicide
  end

  get '/collegelistings' do
    erb :collegelistings
  end

  get '/gpalist' do
    erb :gpalist
  end

  get '/entertainment' do
    erb :entertainment
  end

  post '/movielist' do
      @choice = params[:genre]
      erb :movielist
  end

  post '/booklist' do
      @choice = params[:genre]
      erb :booklist
  end

  post '/songlist' do
      @choice = params[:genre]
      erb :songlist
  end

  get '/memes' do
    erb :memes
  end

  post '/collegelistings' do
      @choice = params[:major]
      erb :collegelistings
  end

  post '/gpalist' do
      @choice = params[:gpa]
      erb :gpalist
  end


  get '/health' do
    erb :health
  end

  post '/healthinformation' do
    @choice = params[:emotion]
    erb :healthinformation
  end

end
