const { Router } = require('express');
const router = Router();
const { getLocal, getLocales, createLocal, updateLocal, deleteLocal } = require('../controllers/locales.controller.js')

/** Rutas **/
router.get('/', (req, res) => {
  res.send(">> Backend ChongAPI <<")
})
router.get('/local/:id', getLocal)
router.get('/locales/list', getLocales)
router.post('/local/create', createLocal)
router.put('/local/update/:id', updateLocal)
router.delete('/local/delete/:id', deleteLocal)
/** **/

module.exports = router;