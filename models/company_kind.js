'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class company_kind extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  company_kind.init({
    nama: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'company_kind',
  });
  return company_kind;
};