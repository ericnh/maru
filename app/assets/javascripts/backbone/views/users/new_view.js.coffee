class Maru.Views.UsersNewView extends Backbone.View
 el: '#main-content-area'

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

   Maru.count = Maru.count + 1

   id = Maru.count

   model = new Maru.Models.User({id: id, name: name, points: points, side: side})
   @collection.add(model,
                   success: (user) => # Never get here because this is an add not a save
                       @model = user
                       debugger)
   this.undelegateEvents();
   window.location.hash = "/index"