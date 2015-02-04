Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new",          { :controller => "photos", :action => "new" })
  post("/photos",             { :controller => "photos", :action => "create" })

  # Routes to READ photos
  get("/photos",              { :controller => "photos", :action => "index" })
  get("/photos/:id",          { :controller => "photos", :action => "show" })

  # Routes to UPDATE photos
  get("/photos/:id/edit",     { :controller => "photos", :action => "edit" })
  patch("/photos/:id",        { :controller => "photos", :action => "update" })

  # Route to DELETE photos
  delete("/photos/:id",       { :controller => "photos", :action => "destroy" })

end
