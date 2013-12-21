configure :development do
  # establishes our connection to the DB and other settings
  ActiveRecord::Base.establish_connection(
      :adapter => "postgresql",
      :host => "localhost",
      :username => "ethanschmertzler1",
      :database => "simple_blog",
      :encoding => "utf8"
    )
end

configure :production do
  # HEROKU CONFIG
  db = URI.parse(ENV['HEROKU_POSTGRESQL_ORANGE_URL'])
  #configuration info
  ActiveRecord::Base.establish_connection(
      :adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
      :host    => "ec2-54-204-42-135.compute-1.amazonaws.com",
      :username => "bymramdjatyans",
      :password => db.password,
      :database => "dd6qvo2fk6jcnf",
      :encoding => 'utf8'
  )
end