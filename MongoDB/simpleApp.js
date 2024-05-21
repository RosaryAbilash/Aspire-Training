var mongoose=require('mongoose')

var Schema=mongoose.Schema;


var  skillSchema=new Schema({
    skillName:String,
    experience:Number,
    proficiency:String
})

var jobSeekerSchema=new Schema({
jobseekerName:String,
emailId:String,
age:Number,
certified:Boolean,
skills:[skillSchema]

})