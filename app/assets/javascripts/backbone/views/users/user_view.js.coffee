class Maru.Views.UserView extends Backbone.View
  template: JST["backbone/templates/users/user"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    confirmed = confirm('Are you sure you want to delete this user?') #Bug #0007
    if confirmed
      Maru.users.remove(@model)
      this.remove()
      return false
    else
      return true

  render: ->
    @$el.html(@template(@model.toJSON()))
    @