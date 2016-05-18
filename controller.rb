require("sinatra")
require("sinatra/contrib/all") if development?
require("json")
require("pry-byebug")
require_relative('db/sql_runner')
require_relative('models/preorder')

get '/' do
    erb(:index)
end

get '/view' do
    @preorders = Preorder.all()
    erb(:orders)
end

get '/add' do
    erb(:order)
end

post '/add' do
    @preorder = Preorder.new(params)
    puts params.inspect()
    if params['save_order']
        @preorder.save()
        @saved = true
    else
        @saved = false
    end
    erb(:confirm)
end
