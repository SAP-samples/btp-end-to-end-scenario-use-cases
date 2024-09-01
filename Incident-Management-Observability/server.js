const cds = require('@sap/cds')
// Import necessary modules
const { metrics } = require('@opentelemetry/api');

const meter = metrics.getMeter('@capire/incidents:incidents.urgency.high');
// Create a counter
const counter = meter.createUpDownCounter('incidents.urgency.high');

cds.on('served', async () => {
const { ProcessorService } = cds.services
// Increase count when new incident with high urgency is created
ProcessorService.after("CREATE", "Incidents", (results, req) => {
    if (results.urgency_code === "H" && results.status_code !== "C") {
    counter.add(1, { 'sap.tenancy.tenant_id': req.tenant });
    }
});
// Reduce count once incident is closed
ProcessorService.after("UPDATE", "Incidents", (results, req) => {
    if (results.urgency_code === "H" && results?.status_code === "C") {
    counter.add(-1, { 'sap.tenancy.tenant_id': req.tenant });
    }
});
});
module.exports = cds.server