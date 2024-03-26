let numberList: number[] = [1, 2, 3, 4, 5];


console.log("Number List:", numberList);


console.log("Element at index 0:", numberList[0]); 
console.log("Element at index 2:", numberList[2]); 


numberList[1] = 10;
console.log("Modified Number List:", numberList); 


numberList.push(6);
console.log("After Pushing 6:", numberList); 


numberList.pop();
console.log("After Popping:", numberList); 


numberList.unshift(0);
console.log("After Unshifting 0:", numberList); 


numberList.shift();
console.log("After Shifting:", numberList);


const index = numberList.indexOf(3);
console.log("Index of 3:", index); 


numberList.splice(index, 1);
console.log("After Removing at Index 2:", numberList); 

const subset = numberList.slice(1, 3);
console.log("Subset from Index 1 to 3:", subset); 
