use std.textio.all;

entity hello_world is
end hello_world;

architecture behav of hello_world is
begin
	process
		variable l : line;
	begin
		write(l, String'("Hello World!"));
		writeline(output, l);
	end process;
end behav;
