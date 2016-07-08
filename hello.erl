-module(hello).
-compile(export_all). 

loop2() ->
	io:format("Hello, World!~n"),
	loop2().



loop() ->

	receive

		hello ->
			io:format("Hello, World!~n"),
			loop();

		goodbye ->
			ok
			end.
		
start() ->
	spawn(fun() -> loop() end).


