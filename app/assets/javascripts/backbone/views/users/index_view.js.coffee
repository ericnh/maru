class Maru.Views.UsersIndexView extends Backbone.View

  el: '#users'

	template: JST["backbone/templates/users/index"]

	initialize: ->
	  @render()
	  @addAll()

	addAll: ->
	  @collection.forEach(@addOne, @)

	addOne: (model) ->
	  @view = new Maru.Views.UserView({model: model})
	  @$el.find('tbody').append @view.render().el

	render: ->
	  @$el.html @template()
	  @
