const { locales } = require("../models");

const getLocal = async (req, res) => {
  try {
    const { id } = req.params
    const Local = await locales.findOne({
      where: {
        id: id,
      }
    })

    if (!Local) return res.status(404).json({ message: 'Local no existe' })
    res.json(Local)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const getLocales = async (req, res) => {
  try {
    const listaLocales = await locales.findAll();
    res.json(listaLocales);

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const createLocal = async (req, res) => {
  const { name_l, direction, description, image_link, capacity } = req.body

  try {
    const newLocal = await locales.create({
      name_l,
      direction,
      description,
      image_link,
      capacity,
    })

    res.json(newLocal)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const updateLocal = async (req, res) => {
  try {
    const { id } = req.params;

    const {
      name_l,
      direction,
      description,
      image_link,
      capacity,
    } = req.body

    const Local = await locales.findByPk(id)
    Local.name = name_l
    Local.location = direction
    Local.description = description
    Local.image_link = image_link
    Local.capacity = capacity

    await Local.save()
    res.json(Local)

  } catch (error) {
    return res.status(500).json({ message: error.message })
  }
};

const deleteLocal = async (req, res) => {
  try {
    const { id } = req.params
    await locales.destroy({
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
  getLocal,
  getLocales,
  createLocal,
  updateLocal,
  deleteLocal,
}
