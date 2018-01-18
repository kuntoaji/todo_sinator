class TodoSinator
  get '/' do
    @home = "Hello World from app/routes/home.rb"
    erb :"home/index"
  end
end
