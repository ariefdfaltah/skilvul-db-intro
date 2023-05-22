'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('user_tests', [{
        nama: 'Adam Lepin',
        email: 'adam@email.com',
        password: 'adam123456'
      }], {});
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('user_tests', null, {});
  }
};
