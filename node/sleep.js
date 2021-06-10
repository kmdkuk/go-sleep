/**
 * sleep.js
 * FROM https://blog.katsubemakito.net/nodejs/sleep
 */
const sleep = (time) => {
	return new Promise((resolve, reject) => {
		setTimeout(() => {
			resolve()
		}, time)
	})
}

module.exports = sleep
