let myName = "Rosary Abilash"

console.log(myName)


// Length
const nameLength = myName.length

console.log(nameLength)

// charAt

var lastLetter = myName.charAt(nameLength-1)

console.log(lastLetter)

// charCodeAt

console.log("Code of Last Letter ", myName.charCodeAt(nameLength-1))


// Slice

let lastName = myName.slice(7, 14)

console.log(lastName)

// Substring

var firstName = myName.substring(0, 6)

console.log(firstName)

// Upper and Lower
console.log(myName.toUpperCase())
console.log(myName.toLowerCase())


// Concat
var initial = 'M'
let fullName = myName.concat(" ", initial)

console.log(fullName)