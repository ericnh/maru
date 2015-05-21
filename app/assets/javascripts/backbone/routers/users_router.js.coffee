class Maru.Routers.UsersRouter extends Backbone.Router 
  initialize: (options) ->
    @users = new Maru.Collections.UsersCollection()
    @users.reset options.users
    Maru.users = @users
    Maru.count = @users.length

  routes:
    'index'       : 'index'
    'new'         : 'newUser'
    ':id'         : 'show'
    ':id/edit'    : 'edit'
    '.*'          : 'index'

  index: ->
    @view = new Maru.Views.UsersIndexView({collection: @users})

  newUser: ->
    @view = new Maru.Views.UsersNewView({collection: @users})

  show: (id) ->
    user = @users.get(id)
    @view = new Maru.Views.UsersShowView({model: user})

  edit: (id) ->
    user = @users.get(id)
    @view = new Maru.Views.UsersEditView({model: user})
