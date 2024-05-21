/* 
 * Title : Inserting insertOne and insertMany 
 * Author : Rosary Abilash M
 * Created At : 07/05/2024
 * Last Modified Date : 07/05/2024
 * Reviewed By :
 * Review Date :
*/

const { MongoClient } = require('mongodb');

const uri = 'mongodb://127.0.0.1:27017/aspire';

const client = new MongoClient(uri);

async function connectToMongoDB() {
    try {
        await client.connect();  

        const db = client.db('aspire');
        const collection = db.collection('employee');

        const cursor = collection.find({});
        await cursor.forEach(record => {
            console.log(record);
        });

        //insertOne
        const singleStmt = await collection.insertOne({
            _id: 1,
            firstName: 'Rosary',
            lastName: 'Abilash',
            gender: 'male',
            email: 'rosaryabilash@gmail.com',
            salary: 60000,
            department: { name: 'Software' }
        });

        console.log("The record inserted" + singleStmt.insertedId);
 
 
        //insertMany      
        const manyStmt = [
            {
                _id: 2,
                firstName: 'Krishna',
                lastName: 'male',
                email: 'krishna@gmail.com',
                salary: 60000,
                department: { name: 'Tester' }
            },{
                _id: 11,
                firstName: 'Nadiya',
                lastName: 'Roy',
                gender: 'female',
                email: 'Nadiya@gmail.com',
                salary: 70000,
                department: { name: 'TN' }
            }
        ];

        const manyStmtResult = await collection.insertMany(manyStmt);
        console.log("The " + manyStmtResult.insertedCount + " records inserted.");

        await client.close();

    } catch (error) {
        console.error('Error connecting to MongoDB:', error);
    }
}

connectToMongoDB();