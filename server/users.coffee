Meteor.startup ->

	isFirstUserExist = Users.findOne { username: 'admin' }

	unless isFirstUserExist

		Accounts.createUser
			username: 'admin'
			password: 'adminqqc'
