/* 
 * Title : Storing Job Seeker information using Mongoose
 * Author : Rosary Abilash M
 * Created At : 09/05/2024
 * Last Modified Date : 09/05/2024
 * Reviewed By :
 * Review Date :
*/


var mongoose=require('mongoose')

var Schema=mongoose.Schema;

var skillSchema = new Schema({
    skillName:String,
    experience:Number,
    proficiency:String
})

var jobSeekerSchema = new Schema({
    jobseekerName:String,
    emailId:String,
    age:Number,
    certified:Boolean,
    skills:[skillSchema]
})

var js=mongoose.model('jobseeker',jobSeekerSchema);
mongoose.connect("mongodb://127.0.0.1:27017/aspire");

var jobseeker1=new js({
    jobseekerName:"Yogesh",
    emailId:"yogeshzindae@gmail.com",
    age:25,
    certified:true,
    skills:[{skillName : "Python", experience : 8, proficiency : "advanced"},
    {skillName : "Java", experience : 4, proficiency : "Medium"},
    {skillName: "PHP", experience : 2, proficiency: "Beginner"},
    ]
})

jobseeker1.save();







