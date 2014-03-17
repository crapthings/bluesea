Meteor.startup ->

	# 去掉 tap 延迟
	window.addEventListener 'load', ->
		FastClick.attach document.body
	, false

	# fake 一个用户登录系统
	Session.setDefault 'currentUser', undefined

	Router.configure
		layoutTemplate: 'layout'

	Router.before(->
		unless Meteor.userId()
			Router.go Router.routes['signin'].path()
			@stop()
	, { except: ['signin', 'signup'] }
	)

	# 退出时返回登录界面
	Deps.autorun ->
		unless Meteor.userId()
			Router.go Router.routes['signin'].path()
