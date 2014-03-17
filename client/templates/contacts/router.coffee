Router.map ->
	@route 'contacts',
		path: '/contacts'
		data: ->
			page:
				title: '联系人'
			users: Users.find { username: { $nin: ['admin'] } }
