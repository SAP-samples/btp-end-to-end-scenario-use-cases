require('@sap/xotel-agent-ext-js/dist/common/tracer');
const app = require('express')()
const fesr = require("@sap/fesr-to-otel-js");
const autoConf = require('@sap/xotel-agent-ext-js/dist/config/AutoInstrumentationConfig');



cds.serve('all').in(app)
app.listen()
cds.on("bootstrap", (app) => fesr.registerFesrEndpoint(app));

 module.exports = cds.server