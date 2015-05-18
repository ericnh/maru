class Maru.Routers.UsersRouter extends Backbone.Router 
	initialize: (options) ->
		@users = new Maru.Collections.UsersCollection()
		@users.reset options.users

	routes:
		'index'    : 'index'
		'new'      : 'newUser'
		':id'      : 'show'
		':id/edit' : 'edit'
		':id/destroy' : 'destroy'
		'.*'       : 'index'

	index: ->
		@view = new Maru.Views.UsersIndexView({collection: @users})

	newUser: ->
		@view = new Maru.Views.UsersNewView({collection: @users})

	show: (id) ->
		debugger
		user = @users.get(id)
		@view = new Maru.Views.UsersShowView({model: user})

	edit: (id) ->
		user = @users.get(id)
		@view = new Maru.Views.UsersEditView({model: user})

	destroy: (id) ->
		debugger
		@users.remove(id)
		location.href = '#/index'