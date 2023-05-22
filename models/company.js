'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Company extends Model {
    static associate(models) {
      // define association here
    }
  }
  
  Company.init({
    name: DataTypes.STRING,
    namapemilik: DataTypes.STRING,
    alamat: DataTypes.STRING,
    jeniskelamin: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'Company',
    tableName: 'company', // Menyesuaikan dengan nama tabel yang digunakan
    timestamps: true // Menandakan apakah model menggunakan kolom createdAt dan updatedAt
  });
  
  return Company;
};
