

	Scenario.destroy_all
	Negotiation.destroy_all
	User.destroy_all
	Message.destroy_all
	Agreement.destroy_all
	
	
	@scenario = Scenario.create(
		general: 'Admin Scenario',
		first_role: 'Admin',
		second_role: 'Admin',
		title: "Admin",
		language: "English"
	)
	
	@scenario_2 = Scenario.create(
		general: 'Admin Scenario',
		first_role: 'Admin',
		second_role: 'Admin',
		title: "Admin",
		language: "Hebrew"
	)
	
	@negotiation = @scenario.negotiations.create(
		secure_key: "english"
	)
	
	@negotiation_2 = @scenario_2.negotiations.create(
		secure_key: "hebrew"
	)
	
	@user = User.create(
		username: 'admin',
		name: 'Admin',
		email: 'admin@uchicago.edu',
		password: 'foobar',
		password_confirmation: 'foobar',
		sex: 'male',
		date_of_birth: Time.now - 100000000,
		secure_key: "english", 
		start_english: '25',
		country: 'usa',
		english_home: true,
		acquired_english: ['from parent'],
		hebrew_listening: 3,
		hebrew_speaking: 3,
		hebrew_reading: 3,
		hebrew_writing: 3,
		english_listening: 3,
		english_speaking: 3,
		english_reading: 3,
		english_writing: 3,
		research: 'Hi there',
		emotions: 'Many.'
	)
	
	@user.update_attribute :admin, true
	
	User.create(
			username: 'Ziv',
			name: 'Ziv',
			email: 'ziv@uchicago.edu',
			password: 'foobar',
			password_confirmation: 'foobar',
			sex: 'male',
			date_of_birth: Time.now - 100000000,
			secure_key: "english", 
			start_english: '25',
			country: 'usa',
			english_home: true,
			acquired_english: ['from parent'],
			hebrew_listening: 3,
			hebrew_speaking: 3,
			hebrew_reading: 3,
			hebrew_writing: 3,
			english_listening: 3,
			english_speaking: 3,
			english_reading: 3,
			english_writing: 3,
			research: 'Hi there',
			emotions: 'Many.'
		)
		User.create(
				username: 'charles',
				name: 'Charles',
				email: 'charles@uchicago.edu',
				password: 'foobar',
				password_confirmation: 'foobar',
				sex: 'male',
				date_of_birth: Time.now - 100000000,
				secure_key: "english", 
				start_english: '25',
				country: 'usa',
				english_home: true,
				acquired_english: ['from parent'],
				hebrew_listening: 3,
				hebrew_speaking: 3,
				hebrew_reading: 3,
				hebrew_writing: 3,
				english_listening: 3,
				english_speaking: 3,
				english_reading: 3,
				english_writing: 3,
				research: 'Hi there',
				emotions: 'Many.'
			)
	
			User.create(
					username: 'hebrew1',
					name: 'Hebrew1',
					email: 'hebrew1@uchicago.edu',
					password: 'foobar',
					password_confirmation: 'foobar',
					sex: 'male',
					date_of_birth: Time.now - 100000000,
					secure_key: "hebrew", 
					start_english: '25',
					country: 'usa',
					english_home: true,
					acquired_english: ['from parent'],
					hebrew_listening: 3,
					hebrew_speaking: 3,
					hebrew_reading: 3,
					hebrew_writing: 3,
					english_listening: 3,
					english_speaking: 3,
					english_reading: 3,
					english_writing: 3,
					research: 'Hi there',
					emotions: 'Many.'
				)
	
				User.create(
						username: 'hebrew2',
						name: 'Hebrew2',
						email: 'hebrew2@uchicago.edu',
						password: 'foobar',
						password_confirmation: 'foobar',
						sex: 'male',
						date_of_birth: Time.now - 100000000,
						secure_key: "hebrew", 
						start_english: '25',
						country: 'usa',
						english_home: true,
						acquired_english: ['from parent'],
						hebrew_listening: 3,
						hebrew_speaking: 3,
						hebrew_reading: 3,
						hebrew_writing: 3,
						english_listening: 3,
						english_speaking: 3,
						english_reading: 3,
						english_writing: 3,
						research: 'Hi there',
						emotions: 'Many.'
					)
	
	puts 'Seed successful.'
	puts 'Email: admin@uchicago.edu'
	puts 'Password: foobar'
