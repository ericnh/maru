class Maru.Views.UsersShowView extends Backbone.View

  template: JST["backbone/templates/users/show"]

  initialize: ->
    @render()

  render: ->
    $('#users').html(@template(@model.toJSON()))
    @