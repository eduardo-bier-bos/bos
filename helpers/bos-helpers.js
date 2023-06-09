const fs = require('fs');
const crypto = require('crypto');
const internalClient = require('bos-backend/lib/internal-client');

require('colors');

module.exports = {
	connectBosBackendClient: function (callback) {
		return new Promise((resolve, reject) => {
			try {
				let sessionStore = process.server.sessions;
				sessionStore.createSession(function (error, createdSession) {
					if (error) {
						reject(error);
					} else {
						resolve(internalClient.build(process.server, createdSession));
					}
				});
			} catch (error) {
				reject(error);
			}
		});
	},
	generateKey: function () {
		return crypto.randomBytes(256).toString('hex');
	},
	stop: function (code) {
		var fn = function () {
			exit(code);
		};
		process.stdin.resume();
		process.stdin.setRawMode(true);
		console.log('Pressione qualquer tecla para continuar');
		process.stdin.on('keypress', fn);
	},
	log: {
		info: function (message) {
			console.log(message.blue);
		},
		attention: function (message) {
			console.log(message.yellow);
		},
		error: function (message) {
			console.log(message.red);
		},
		success: function (message) {
			console.log(message.green);
		}
	},
	createDirectory(dirName) {
		return new Promise((resolve, reject) => {
			try {
				fs.mkdirSync(dirName);
				resolve();
			} catch (error) {
				reject(error.message);
			}
		});
	},
	removeDirectory(dirName) {
		return new Promise((resolve, reject) => {
			try {
				fs.rmdirSync(`./${dirName}`, { recursive: true });
				resolve();
			} catch (error) {
				reject(error.message);
			}
		});
	},
	directoryExists(pathDir) {
		try {
			return fs.existsSync(pathDir);
		} catch (error) {
			if (error.code === 'ENOENT') {
				return false;
			}
			throw error;
		}
	}
};
