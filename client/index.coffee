Template.showSidebar.events({
  'click': () ->
    Session.set('sidebarVisible', not Session.get('sidebarVisible'))
})

Template.container.showSidebarClass = () ->
  if Session.get('sidebarVisible')
    return 'sidebar-show'
  else
    return ''