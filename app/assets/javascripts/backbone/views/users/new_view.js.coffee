class Maru.Views.UsersNewView extends Backbone.View
 el: '#users'

 template: JST["backbone/templates/users/new"]

 events:
   "submit #new-user": "save"

 initialize: ->
   @render()

 render: ->
   @$el.html @template()

 save: (e) ->
   e.preventDefault()
   e.stopPropagation()
   name = $('#name').val()
   points = $('#points').val()
   side = $('#side').val()
   model = new Maru.Models.User({name: name, points: points, side: side})
   @collection.create model,
        success: (user) =>
       @model = user
       window.location.hash = "/#{@model.id}"