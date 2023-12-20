const { locales } = require('../models')
import AbstractRepository from './abstract.repository.js'
//const AbstractRepository = require('./abstract.repository.js')

export default new class UsuarioRepository extends AbstractRepository {
  constructor() {
    super(locales)
  }
}