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
      // anfitriona belongs to local
      // anfitriona * - 1 local      
    }
  }
  anfitrionas.init({
    id_local: DataTypes.UUID,
    alias: DataTypes.STRING,
    nacionalidad: DataTypes.STRING,
    cuarto: DataTypes.STRING
  }, {
    sequelize,
    timestamps: true,
    modelName: 'anfitrionas',
    freezeTableName: true
  });
  return anfitrionas;
};