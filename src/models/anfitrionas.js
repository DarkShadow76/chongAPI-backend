'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class anfitrionas extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  anfitrionas.init({
    id_local: DataTypes.UUID,
    alias: DataTypes.STRING,
    nacionalidad: DataTypes.STRING,
    cuarto: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'anfitrionas',
    freezeTableName: true
  });
  return anfitrionas;
};