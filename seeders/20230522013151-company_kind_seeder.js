'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('company_kind', [
      {
        nama: 'Logistik',
      },
      {
        nama: 'Konsultan',
      },
      {
        nama: 'F&B',
      },
      {
        nama: 'Usaha Dagang',
      },
      {
        nama: 'Teknologi Informasi',
      }
    ], {});
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('company_kind', null, {});
  }
};
