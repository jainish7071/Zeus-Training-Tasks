// this is my first javascript code
// console.log("hello world");
// let name = "jainish";
// console.log(name);

// ----  variables -------------------------------
// cannot be a reserved key word
// should be meaning full
// cannot start with number
// cannot contain space or hyphen(-)
// Are case sensitive

// let firstName = "jainish";
// let lastName = "kunjadiya";

// ----------------- CONSTANTS --------------------
// const interestRate = 0.3;
// console.log(interestRate);

// ------------------- primitives type / VALUE TYPES------------
// let name = "jainish"; // strign literal
// let age = 30; // number literal
// let isApproved = false; // Boolean literal
// let firstName = undefined; // undefined literal
// let selectedColor = null; // null  literal

// ------------------ DYNAMIC TYPING - type is not fixed in js ------------------
// name = 8;

// -------------------- REFERENCE TYPE - OBJECT
// let person = {
//   name: "jainish",
//   age: 30,
// };
// DOT NOTATION
// person.name = "kunjadiya";

// Bracket Notation
// let selection = "name";
// person[selection] = "Rameshbhai";
// console.log(person.name);

// -------------------- REFERENCE TYPE - ARRAY
// let selectedColors = ["red", "blue"];
// selectedColors[2] = 3;
// console.log(selectedColors.length);

// -------------------- REFERENCE TYPE - FUNCTION
// Performing a task
// function greet(name, lastName = "") {
//   console.log("Hello " + name + " " + lastName);
// }
// greet("Jainish", "kunjadiya");
// greet("Mary");

// Calculating a value
function square(number) {
  return number * number;
}
console.log(square(2));
