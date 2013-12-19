# establishes our connection to the DB and other settings
ActiveRecord::Base.establish_connection(
    :adapter => "postgresql",
    :host => "localhost",
    :username => "ethanschmertzler1",
    :database => "simple_blog",
    :encoding => "utf8"
  )