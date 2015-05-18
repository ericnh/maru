class Maru.Views.UsersEditView extends Backbone.View

  template: JST["backbone/templates/users/edit"]

  el: '#users'

  events:
    "submit #edit-user" : "update"

  initialize: ->
    @render()

  render: ->
    @$el.html @template(@model.toJSON())
    @

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()
    name = $('#name').val()
    points = $('#points').val()
    side = $('#side').val()
    @model.save({name: name, points: points, side: side},
                success: (user) =>
                    @model = user
                    window.location.hash = "/#{@model.id}")