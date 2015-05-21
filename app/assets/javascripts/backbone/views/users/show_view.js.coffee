class Maru.Views.UsersShowView extends Backbone.View

  template: JST["backbone/templates/users/show"]

  initialize: ->
    @render()

  render: ->
    $('#main-content-area').html(@template(@model.toJSON()))
    @