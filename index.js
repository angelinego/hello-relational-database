const moment = require("moment")
const knex = require("knex")({
  client: "mysql",
  connection: {
    host: "127.0.0.1",
    user: "root",
    password: "@ngel1287",
    database: "AsianGames",
    charset: "utf8"
  }
})

const bookshelf = require("bookshelf")(knex)

const Athlete = bookshelf.Model.extend({
  tableName: "Athletes",
  parse: res => {
    res.birthdate = moment(res.birthdate).format("DD MMMM YYYY")
    return res
  },
  sports: function() {
    return this.hasOne(Sport)
  }
})

const Sport = bookshelf.Model.extend({
  tableName: "Sports",
  athletes: function() {
    return this.belongsTo(Athlete)
  }
})

const getAthletes = () => {
  Athlete.collection()
    .fetch()
    .then(athlete => {
      console.log(athlete.toJSON())
    })
    .catch(err => {
      console.error(err)
    })
}

getAthletes()