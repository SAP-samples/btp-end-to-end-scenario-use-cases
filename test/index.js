const cds = require("@sap/cds")

module.exports = new Promise(async (resolve) => {
    await cds.deploy("*").to("sqlite:test.db")
    cds.exec("run", "--with-mocks", "--in-memory?")
    cds.on("listening", () => {
        resolve(cds.app)
    })
})