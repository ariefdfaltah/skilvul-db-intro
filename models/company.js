'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class company extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  company.init({
    nama: DataTypes.STRING,
    nama_pemilik: DataTypes.STRING,
    alamat: DataTypes.STRING,
    jenis_id: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'company',
    freezeTableName: true
  });
  return company;
};