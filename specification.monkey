// Variable definition
let age = 1';
let name = "Monkey";
let result = 10 * (20 / 2);

// Arrays
let myArray = [1, 2, 3, 4, 5];

// Hash
let thorsten = {"name": "Throsten", "age": 28};

// Indexing
myArray[0] // => 1
thorsten["name"] // => "Throsten"

// let can bind functions to names
let add = fn(a, b) { return a + b; };

// Implicit returns
let add = fn(a, b) { a + b; };

// Calling a function
add(1, 2);

// Fibonacci
let fibonacci = fn(x) {
	if (x == 0) {
		0	// returns 0 implicitly
	} else {
		if (x == 1) {
			1
		} else {
			fibonacci(x - 1) + fibonacci(x - 2)
		}
	}
};

// Higher order functions - take functions as arguments
let twice = fn(f, x) {
	return f(f(x));
};

let addTwo = fn(x) {
	return x + 2;
}

twice(addTwo, 2); // => 6