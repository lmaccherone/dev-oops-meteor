Router.configure({layoutTemplate: 'mainLayout'})

Router.route('home', {path: '/', template: 'preloader'})
Router.route('home', {path: '/index', template: 'preloader'})
Router.route('dashboard', {path: '/dashboard', template: 'dashboard'})
Router.route('charts', {path: '/charts', template: 'charts'})
Router.route('404', {path: '/*', template: '404'})

onRun = () ->
  console.log(this)
  if @path in ['/', '/index']  # Iron Router's redirect wasn't working. This is my work around.
    Router.go('/dashboard')
  else
    Session.set('active', @route.name)
    console.log('rendered')

Router.onRun(onRun)
