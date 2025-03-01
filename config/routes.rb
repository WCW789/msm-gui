Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/insert_director_record", {:controller => "directors", :action => "create" })
  post("/modify_director_record/:an_id", { :controller => "directors", :action => "modify" })
  get("/delete_director/:an_id", { :controller => "directors", :action => "destroy" })

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie_record", {:controller => "movies", :action => "create" })
  post("/modify_movie_record/:an_id", { :controller => "movies", :action => "modify" })
  get("/delete_movie/:an_id", { :controller => "movies", :action => "destroy" })
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor_record", {:controller => "actors", :action => "create" })
  post("/modify_actor_record/:an_id", { :controller => "actors", :action => "modify" })
  get("/delete_actor/:an_id", { :controller => "actors", :action => "destroy" })
end
