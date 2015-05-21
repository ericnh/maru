class Maru.Views.UsersIndexView extends Backbone.View

  template: JST["backbone/templates/users/index"]

  el: '#main-content-area'

  initialize: ->
    # Maru.users.bind 'remove', @render()
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->
    @view = new Maru.Views.UserView({model: model})
    @$el.find('tbody').append @view.render().el
    $('#main-content-area').find('tbody').append @view.render().el

  render: ->
    @$el.html @template() #Redundant?
    $('#main-content-area').html @template()
    @
