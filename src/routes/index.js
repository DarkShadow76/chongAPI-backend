const { Router } = require('express');
const router = Router();
const {
  getLocal,
  getLocales,
  createLocal,
  updateLocal,
  deleteLocal } = require('../controllers/locales.controller.js')
const {
  getAnfitriona,
  getAnfitrionasByLocal,
  updateAnfitriona,
  createAnfitriona,
  deleteAnfitriona } = require('../controllers/anfitrionas.controller.js')

/** Rutas **/
router.get('/', (req, res) => {
  res.send(">> Backend ChongAPI <<")
})

/** Rutas Locales**/
router.get('/local/:id', getLocal)
router.get('/locales/list', getLocales)
router.post('/local/create', createLocal)
router.put('/local/update/:id', updateLocal)
router.delete('/local/delete/:id', deleteLocal)

/** Rutas Anfitrionas**/
router.get('/anfitriona/:id', getAnfitriona)
router.get('/anfitrionas/list/:id_local', getAnfitrionasByLocal)
router.post('/anfitriona/create', createAnfitriona)
router.put('/anfitriona/update/:id', updateAnfitriona)
router.delete('/anfitriona/delete/:id', deleteAnfitriona)
/** **/

module.exports = router;