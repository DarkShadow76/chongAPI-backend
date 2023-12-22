const { anfitrionas } = require('../models')

const getAnfitriona = async (req, res) => {
  try {
    const { id } = req.params

    const Anfitriona = await anfitrionas.findOne({
      where: {
        id,
      }
    })

    if (!Anfitriona) return res.status(404).json({ message: 'Anfitriona no existe' })
    res.json(Anfitriona)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const getAnfitrionasByLocal = async (req, res) => {
  try {
    const { id_local } = req.params
    const listAnfitrionas = await anfitrionas.findAll({
      where: {
        id_local,
      }
    });

    if (!listAnfitrionas) return res.status(404).json({ message: 'Local no existe' })
    res.json(listAnfitrionas)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const createAnfitriona = async (req, res) => {
  const { alias, nacionalidad, cuarto, id_local } = req.body

  try {
    const newAnfitriona = await anfitrionas.create({
      alias,
      nacionalidad,
      cuarto,
      id_local,
    })

    res.json(newAnfitriona)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const updateAnfitriona = async (req, res) => {
  try {
    const { id } = req.params

    const {
      alias,
      cuarto,
      nacionalidad,
    } = req.body

    const Anfitriona = await anfitrionas.findByPk(id)
    Anfitriona.alias = alias
    Anfitriona.cuarto = cuarto
    Anfitriona.nacionalidad = nacionalidad

    await Anfitriona.save()
    res.json(Anfitriona)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const deleteAnfitriona = async (req, res) => {
  try {
    const { id } = req.params
    await anfitrionas.destroy({
      where: {
        id: id,
      }
    })

    res.sendStatus(204)
  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

module.exports = {
  getAnfitriona,
  getAnfitrionasByLocal,
  createAnfitriona,
  updateAnfitriona,
  deleteAnfitriona,
}