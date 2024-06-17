Rails.application.routes.draw do

  get("/users", {:controller => "users", :action => "index"})

  get("/users/:path_username", {:controller => "users", :action => "show"})

  get("/follow_requests", {:controller => "follow_requests", :action => "index"})

  get("/likes", {:controller => "likes", :action => "index"})

  get("/photos", {:controller => "photos", :action => "index"})

  get("/comments", {:controller => "comments", :action => "index"})

end
