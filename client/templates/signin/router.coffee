Router.map ->
	@route 'signin',
		path: '/signin'
		before: [
			->
				if Meteor.userId()
					Router.go Router.routes['home'].path()
		]

	@route 'forgotPassword',
		path: '/forgot-password'
