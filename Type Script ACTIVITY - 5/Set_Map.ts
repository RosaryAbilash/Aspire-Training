let numberSet: Set<number> = new Set();

numberSet.add(1);
numberSet.add(2);
numberSet.add(3);
numberSet.add(4);
numberSet.add(5);


numberSet.add(1);


console.log("Size of Set:", numberSet.size);


console.log("Set contains 3:", numberSet.has(3));
console.log("Set contains 6:", numberSet.has(6)); 


numberSet.delete(2);


console.log("Elements of Set:");
numberSet.forEach(element => {
    console.log(element);
});


numberSet.clear();
console.log("Size of Set after clearing:", numberSet.size);




let numberMap: Map<string, number> = new Map();


numberMap.set("one", 1);
numberMap.set("two", 2);
numberMap.set("three", 3);
numberMap.set("four", 4);
numberMap.set("five", 5);


numberMap.set("one", 10);


console.log("Size of Map:", numberMap.size);


console.log("Value for key 'three':", numberMap.get("three"));
console.log("Value for key 'six':", numberMap.get("six"));


console.log("Map contains key 'two':", numberMap.has("two"));
console.log("Map contains key 'seven':", numberMap.has("seven")); 


numberMap.delete("four");


console.log("Entries of Map:");
numberMap.forEach((value, key) => {
    console.log(`${key} => ${value}`);
});


numberMap.clear();
console.log("Size of Map after clearing:", numberMap.size);
