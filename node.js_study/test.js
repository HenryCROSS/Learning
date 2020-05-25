//NaN is a number

// if the function greeting() did not return anything, it will output an error
// function greeting(){...}
// !!!!!!!!!!!!!!! //console.log(greeting());

console.log(parseInt('15', 2)); // 1 valid, 5 invalid in binary
console.log(parseInt('15', 16));//1*15 + 5*1 = 21

function sum() {
    //argument is an object, behaviour like array
    //like vector object
    var count = arguments.length;
    var total = 0;
    for (let i = 0; i < count.length; i++) {
        total += arguments[i];

    }
    total += arguments[i];
}

function sum_rest(...numbers)// that is an array
{

}

// That is Closure ===========================================
function program(prog) {
    var school = "ICT";

    //encapsulation, it is the private function
    function student(name)// the inner function
    {
        var str = name + "hello";
        return str; //return a string
    }
    return student; //return a function
}

var bsd_student = program("BSD");//bsd_student is a function student() not a variable
var john = bsd_student("John"); // a String
var john2 = program("BSD")("john2");
console.log(john);
console.log(john2);

//function declaration
var x = function (a, b) {
    return a * b
};
var z = x(4, 3);
console.log("z : " + z);
console.log("x(100:100) : " + x(100,100));
console.log("x : " + x + "\n\n");
//anonymous function
// function return a function --> return a value
function program(ab) {
    //return an object function
    return function (name) {
        return "hi " + name + " hi";
    }
}

//====================================================================
//scope
var ident_A = 5; //global variable
function someFunction() {
    var ident_B = 15; //Local variable
    ident_C = 34; //global variable
    var ident_A = 0;
    ident_C++;
    ident2_A = ident_B + ident_C; //50
    console.log("ident_A in function: " + ident_A);// output 50
}

someFunction();
// console.log(ident_A); // output value outside the someFunction()
// console.log(ident_B); //undefined
// console.log(ident_C); //show value ident_C

var q;
console.log("q = " + q);//undefined is a value


//var vs. let
//var only declare in the function will be local scope where the variable is declared at the first time
//let will be block scope everywhere
var x = 2;//var holds the functions scope, not block scope
var y = 2
for (let i = 0; i < 3; i++) {
    console.log("inside i = " + i);
    var x = 10; //change the global variable
    let y = 10; //would not change anything
}
console.log("x = " + x);
console.log("y = " + y);
