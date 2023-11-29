// Define allowed access origins for CORS checks
// In our example we allow all origins. For productive use specific origins shall be allowed only.

const cds = require('@sap/cds')

cds.on('bootstrap', (app) => {
    const cors = require('cors')
	app.use(cors())
	app.use((req, res, next) => {
		res.setHeader('Access-Control-Allow-Origin', '*');
		next();
	});
})

cds.on('listening', () => {
	// add more middleware ...
})

module.exports = cds.server // delegate to default server.js