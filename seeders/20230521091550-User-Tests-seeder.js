'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('company_kind', [
      {
        name: 'Company A',
        email: 'companya@example.com',
        password: 'passwordA',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'Company B',
        email: 'companyb@example.com',
        password: 'passwordB',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'Company C',
        email: 'companyc@example.com',
        password: 'passwordC',
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ], {});
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('company_kind', null, {});
  }
};
