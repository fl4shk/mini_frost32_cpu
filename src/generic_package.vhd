library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pkg_generic is

	type dim_t is record
		w : integer;
		mp : integer;
	end record dim_t;

	function build_dim(s_w : integer)
		return dim_t;

	function width2mp(some_width : integer)
		return integer;
end package pkg_generic;

package body pkg_generic is
	function build_dim(s_w : integer)
		return dim_t is
		variable ret : dim_t;
	begin
		ret.w := s_w;
		ret.mp := (ret.w - 1);
		return ret;
	end function build_dim;

	function width2mp(some_width : integer)
		return integer is
	begin
		return (some_width - 1);
	end function width2mp;
end package body pkg_generic;
