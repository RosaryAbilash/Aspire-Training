/* 
 * Title : Update Operations
 * Author : Rosary Abilash M
 * Created At : 09/05/2024
 * Last Modified Date : 09/05/2024
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
        
        //updateOne
        const updateResult = await collection.updateOne(
            { _id: 11 },
            { $set: { salary: 60000 } }
        );
        console.log("Updated " + updateResult.modifiedCount + " document");


        //updateMany       
        const updateManyResult = await collection.updateMany(
            { department: { name: 'TN' } }, 
            { $set: { lastName:'Devdood' } } 
        );
        console.log("Updated " + updateManyResult.modifiedCount + " documents");

        await client.close();

    } catch (error) {
        console.error('Error connecting to MongoDB:', error);
    }
}

connectToMongoDB();