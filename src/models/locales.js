'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class locales extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  locales.init({
    name_l: DataTypes.STRING,
    direction: DataTypes.STRING,
    description: DataTypes.TEXT,
    image_link: DataTypes.STRING,
    capacity: DataTypes.INTEGER
  }, {
    sequelize,
    timestamps: false,
    modelName: 'locales',
    freezeTableName: true
  });
  return locales;
};