Router.configure({layoutTemplate: 'mainLayout'})

Router.route('home', {path: '/', template: 'preloader'})
Router.route('home', {path: '/index', template: 'preloader'})
Router.route('dashboard', {path: '/dashboard', template: 'dashboard'})
Router.route('charts', {path: '/charts', template: 'charts'})
Router.route('tables', {path: '/tables', template: 'tables'})
#Router.route('forms', {path: '/forms', template: 'forms'})
#Router.route('ui-elements', {path: '/ui-elements', template: 'ui-elements'})
#Router.route('pages', {path: '/pages', template: 'pages'})
#Router.route('maps', {path: '/maps', template: 'maps'})
#Router.route('gallery', {path: '/gallery', template: 'gallery'})
#Router.route('typography', {path: '/typography', template: 'typography'})
#Router.route('calendar', {path: '/calendar', template: 'calendar'})

Router.route('not-found', {path: '/*', template: '404'})

onRun = () ->
  if @path in ['/', '/index']  # Iron Router's redirect wasn't working. This is my work around.
    Router.go('/dashboard')
  else
    Session.set('active', @route.name)

Router.onRun(onRun)
