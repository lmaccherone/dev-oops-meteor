Template.sidebarToggle.events({
  'click': () ->
    Session.set('sidebarVisible', not Session.get('sidebarVisible'))
})

Template.container.showSidebarClass = () ->
  if Session.get('sidebarVisible')
    return 'sidebar-show'
  else
    return ''

Template.navElement.isActive = () ->
  if this.name is Session.get('active')
    return "active"
  else
    return ""

Template.navElement.label = () ->
  if this.label?
    return this.label
  else
    return this.name.substr(0, 1).toUpperCase() + this.name.substr(1)

Template.navElement.href = () ->
  if this.href?
    return this.href
  else
    return "/" + this.name
