// var example1 = "jainish";
// var example2: boolean = true;
// var example3: string = "janish";
// var example4: number = 3;
// var example5: number | string = "3";

// var example: number[] = [3, 5, 6]; //array
// var example6: (number | string)[] = ["jainish", 4];

// var example7: [number, string] = [3, "jainsih"]; //tupple

//create enum on other files
// export enum Age{
// enum Age {
//   jainish = 21,
//   mother = 50,
// }

// enum Names {
//   mine = "jainish",
//   papa = "rameshbhai",
// }
// import {Age} from './age.emun';
// import {Names} from './name.enum';

// function totalAge(age1: Age, age2: Age) {
//   return age1 + age2;
// }

// const example1: object = undefined;

// const example2: Object = NaN;

// const example3: {} = {};

// example3.firstName = 'jainish';

// import {Person} from './person.model';

// function add(val1: number, val2: number): number {
//   return val1 + val2;
// }
// add(2, 3);

// function sayHello(person:Person) : string{
//     return 'Say Hello to My Little Friend , ${person.firstName}!'
// }
// sayHello(new Person({firstName:'Dylan'}));

// function voidExample(): void {
//   add(1, 2);
// }

// function neverExample(): never {
//   throw Error;
// }

// type
// type person = { firstName: string };
// const example3: person = { firstName: "jainish" };
// example3.firstName = "jainishKunjadiya";

// InterFace

// export interface Person {
// interface Person {
//   firstName: string;
//   middleName: string;
//   lastName: string;
// }
// // import {Person} from './person.interface';
// const example1: Person = { firstName: "jainsh", middleName: "rameshbhai", lastName: "kunjadiya " };
// example1.firstName = "kunjadiya";
// example1.middleName = "jainish";
// example1.lastName = "Rameshbhai";

// Barrels
// import {Bear} from './interface/bear.interface';
// import {Pig} from './interface/pig.interface';
// import {Man} from './interface/man.interface';

// make index.ts in interface folder an do below export
// export * from "./bear.ineterface";
// export * from "./man.ineterface";
// export * from "./pig.ineterface";

// import {Bear , Man , Pig} from './ineterface/index';

//Models in TS
// export class Person {
//   firstName: string;
//   middleName: string;
//   lastName: string;
//   constructor(data?: any) {
//     this.firstName = data.firstName || "jainish";
//     this.middleName = data.middleName || "rameshbhai";
//     this.lastName = data.lastName || "kunjadiya";
//   }
// }

// import {Person} from './person.model';
// const example1 = new Person();
// example1.firstName = "kunjadiya";
// example1.middleName = "jainish";
// example1.lastName = "Rameshbhai";

//Intersection types
// import {Bear , Man ,Pig} from './interfaces';

// let man : Man | Pig;
// let bear : Bear;
// let pig : Pig;

// type ManBearPig = Man & Bear & Pig;

// let manBearPig : ManBearPig;
// manBearPig.firstName = "jainish";
// manBearPig.claws = 3;
// manBearPig.bacon = false;

// Generic
// function example<T>(arg: T[]): T {
//   return arg[0];
// }
// example([5, 4, 5]);

//Access Modifiers
// import {Bear} from './bear.model';

// this is in one file
// class Animal {
//   protected type: string;
//   protected constructor(data?: any) {
//     this.type = data.type;
//   }
// }

// // this is in file number 2
// class Bear extends Animal {
//   public claws: number;
//   readonly name: string;
//   private tail: boolean;
//   constructor(data?: any) {
//     super(data);
//     this.claws = data.claws;
//     this.name = data.name;
//     this.tail = data.tail;
//   }
//   public add(num1, num2) {
//     return this.addTwo(num1, num2);
//   }
//   private addTwo(num1, num2): number {
//     return num1 + num2;
//   }
// }

// // ..this is file number 3
// const bear = new Bear({ name: "jainsh", tail: true });
// bear.claws = 3;
// bear.add(1, 2);
// bear.tail = false; // you can not access private
// bear.name = "jainish"; // you can not reset of value readonly
// const animal = new Animal({ type: 'bear' }); //give an error

// Setup of type Script in Local Machine
// - Node -nodejs.org/en/ ----> download node
// npm install -g typescript
// create typescript file example : index.ts
// tcs index.ts

// @ts-check -- for check javascript

// TSLint - use to write industries level code
// https://youtu.be/_QAbWfcCaKc?t=1783
