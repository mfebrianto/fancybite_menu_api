namespace :docker do
  desc 'Remove docker container'
  task :clean do
    sh 'docker-compose stop'
    sh 'docker-compose rm -f -v'
  end

  desc 'Build Docker image'
  task :build => [:clean] do
    sh 'docker-compose build'
  end

  desc 'Build Docker image'
  task :up => [:build] do
    sh 'docker-compose up'
  end
end