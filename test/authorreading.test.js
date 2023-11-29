"strict"
const chai = require("chai")
const chaiHttp = require("chai-http")
const server = require("./index")

// Configure chai
const assert = chai.assert
chai.use(chaiHttp)
chai.should();

let app = null
before(async () => {
    app = await server
})

const API_ENDPOINT = "/authorreadingmanager"

describe("API Test - GET", () => {

    const entities = ["AuthorReadings", "AuthorReadingStatusCodes", "Participants", "ParticipantStatusCodes", "Currencies"];
    entities.forEach(entity => {
        it(`should be able to read ${entity}`, (done) => {
            chai.request(app)
                .get(`${API_ENDPOINT}/${entity}`)
                .end((error, response) => {
                    try {
                        response.should.have.status(200);
                        done();
                    } catch (error) {
                        done(error);
                    }
                });
        })
    })
})

describe("API Test - Author Reading", () => {




})