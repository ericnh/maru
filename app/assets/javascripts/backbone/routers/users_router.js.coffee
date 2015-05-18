class Maru.Routers.UsersRouter extends Backbone.Router 
	initialize: (options) ->
		@users = new Maru.Collections.UsersCollection()
		@users.reset options.users

	routes:
		'index'    : 'index'
		'new'      : 'newUser'
		':id'      : 'show'
		':id/edit' : 'edit'
		'.*'       : 'index'

	index: ->
		@view = Maru.Views.UsersIndexView({collection: @users})

	newUser: ->
		@view = Maru.Views.UsersNewView({collection: @users})

	show: (id) ->
		user = @users.get(id)
		@view = Maru.Views.UsersShowView({model: user})

	edit: (id) ->
		user = @users.get(id)
		@view = Maru.Views.UsersEditView({model: user})		