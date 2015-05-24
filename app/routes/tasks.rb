class TodoMelodiest
  get '/' do
    "hello world!"
  end

  get '/tasks' do
    @tasks = Task.all
    erb :'tasks/index'
  end

  post '/tasks' do
    @task = Task.new
    @task.name = params[:name]
    @task.save

    redirect '/tasks'
  end

  get '/tasks/edit/:id' do
    @task = Task[params[:id]]

    erb :'tasks/edit'
  end

  put '/tasks' do
    @task = Task[params[:id]]
    @task.name = params[:name]
    @task.save

    redirect '/tasks'
  end

  delete '/tasks' do
    @task = Task[params[:id]]
    @task.destroy

    redirect '/tasks'
  end
end
