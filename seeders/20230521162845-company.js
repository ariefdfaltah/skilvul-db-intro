'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('company', [
      {
        name: 'Company A',
        namapemilik: 'Pemilik A',
        alamat: 'Alamat A',
        jeniskelamin: 1,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'Company B',
        namapemilik: 'Pemilik B',
        alamat: 'Alamat B',
        jeniskelamin: 2,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'Company C',
        namapemilik: 'Pemilik C',
        alamat: 'Alamat C',
        jeniskelamin: 1,
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ], {});
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('company', null, {});
  }
};
