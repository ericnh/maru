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
   console.log('save')

   e.preventDefault()
   e.stopPropagation()

   name = $('#name').val()
   points = $('#points').val()
   side = $('#side').val()

   id = @collection.length + 1 # TODO add as some sort of global varriable which gets incremented here

   model = new Maru.Models.User({id: id, name: name, points: points, side: side})
   @collection.add(model,
                   success: (user) => # Never get here because this is an add not a save
                       @model = user
                       debugger)
   # this.remove()
   # this.unbind()
   # https://lostechies.com/derickbailey/2011/09/15/zombies-run-managing-page-transitions-in-backbone-apps/
   window.location.hash = ""