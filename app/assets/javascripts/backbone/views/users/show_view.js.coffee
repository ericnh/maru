class Maru.Views.UsersShowView extends Backbone.View

  template: JST["backbone/templates/users/show"]

  el: '#users'

  initialize: ->
    @render()

  render: ->
    @$el.html(@template(@model.toJSON()))
    @