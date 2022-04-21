---week 1: introduction & the cool programming language---

Compilers:
* takes program and produces executable (implementation language)
* can be run separately on data and run for output
* "offline"

Interpreters:
* takes program and data as input, and produces output directly 
* "online"

COOL = Classroom Object Oriented Language
* implementable in short time
* gives taste of:
	- abstraction
	- static typing
	- reuse (inheritance)
	- memory management
	- etc.
* Cool -> MIPS assembly language
* 5 assignments (all plug compatible)
	- write Cool program
	- lexical analysis
	- parsing
	- semantic analysis
	- code generation
	- (optional) optimization

---CODE EXAMPLES---

--example I: overview--

class Main {
	i : IO <- new IO;
	main():Int { { i.out_string("Hello World!\n"); 1; } };
};

class Main {
	main():Object { (new IO).out_string("Hello World!\n") };
};

class Main inherits IO {
	main():Object { self.out_string("Hello World!\n") };
};

class Main inherits IO {
	main():Object { out_string("Hello World!\n") };
};

compile by running "coolc filename.cl"
run assembly code with "spim filename.s"
"!x" will run last command that began with "x"

---example II: factorial function---

class Main {

	main() : Object {
		(new IO).out_string((new IO).in_string().concat("\n"))
	};
};