class Maru.Models.User extends Backbone.Model
  paramRoot: 'user'

class Maru.Collections.UsersCollection extends Backbone.Collection
  model: Maru.Models.User
  url: '/users'
