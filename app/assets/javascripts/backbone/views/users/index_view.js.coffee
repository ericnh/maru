class Maru.Views.UsersIndexView extends Backbone.View

	template: JST["backbone/templates/users/index"]

	el: '#users'

	initialize: ->
	  @render()
	  @addAll()

	addAll: ->
	  @collection.forEach(@addOne, @)

	addOne: (model) ->
	  @view = new Maru.Views.UserView({model: model})
	  @$el.find('tbody').append @view.render().el
	  $('#users').find('tbody').append @view.render().el

	render: ->
	  @$el.html @template() #Redundant?
	  $('#users').html @template()
	  @
