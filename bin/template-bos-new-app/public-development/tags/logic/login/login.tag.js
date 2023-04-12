/* BOS - BierOnStack - File Reserved */
loginTag = function (opts) {
	var self = this;
	this.on('before-mount', function () {
		this.show = opts.show;
	});

	this.start = function () {
		$('.login-form').form({
			on: 'submit',
			fields: {
				loginUserName: {
					identifier: 'login-username',
					rules: [
						{
							type: 'empty',
							prompt: 'Digite seu nome de usuário.'
						}
					]
				},
				loginPassword: {
					identifier: 'login-password',
					rules: [
						{
							type: 'empty',
							prompt: 'Digite sua senha.'
						}
					]
				}
			},
			onSuccess: function (e) {
				e.preventDefault();
				e.stopPropagation();
				app.loading(true);
				dpd.users.login(
					{
						username: $('.login-form #login-username').val(),
						password: $('.login-form #login-password').val()
					},
					function (user, error) {
						if (error) {
							helperClient.showErrors('.login-form', error);
							$('.login-form #login-email').focus();
							app.loading(false);
						} else {
							helperClient.isLogged(function (isLogged, user) {
								if (isLogged) {
									app.loadRoutesByMenus(function () {
										app.loadTimeZone(function (timeZone) {
											window.loggedUser = user;
											window.timeZone = timeZone;
											app.mainTag = riot.mount('#root-content', 'main-container', { showHeader: true });
											window.location.href = '#/home';
											app.listenUserEvents(user);
											app.loading(false);
										});
									});
								} else {
									riot.mount('login', {
										show: true,
										animation: false
									});
									app.loading(false);
								}
							});
						}
					}
				);
			}
		});

		$('.login-form #login-username').focus();
	};

	this.on('mount', function () {
		app.loading(false);
		if (opts.show) {
			if (opts.animation) {
				$('.login-container-tag .login-container-grid').transition({
					animation: 'fade left',
					onComplete: function () {
						$('.register-tag').hide();
						$('.login-tag').show();
						$('.login-container-tag .login-container-grid').transition({
							animation: 'fade right',
							onComplete: function () {
								self.start();
							}
						});
					}
				});
			} else {
				self.start();
			}
		}
	});

	this.registerClick = function () {
		riot.mount('register', { show: true });
	};
};
