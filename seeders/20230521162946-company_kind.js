'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('company_kind', [
      {
        name: 'jne',
        email: 'jne@example.com',
        password: '1234',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'shopee',
        email: 'shopee@example.com',
        password: '1234',
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        name: 'jnt',
        email: 'jnt@example.com',
        password: '1234',
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ], {});

    // Query the table description after seeding
    const [results, metadata] = await queryInterface.sequelize.query('DESCRIBE company_kind');
    console.log(results); // Output the table description
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('company_kind', null, {});
  }
};
