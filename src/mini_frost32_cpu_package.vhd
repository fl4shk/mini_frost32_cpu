library ieee;
use ieee.std_logic_1164.all;

use work.pkg_generic.all;

package pkg_mini_frost32_cpu is
	constant DIM_DATA_INOUT : dim_t := build_dim(32);
	constant DIM_ADDR : dim_t := build_dim(32);

	subtype data_t is std_logic_vector(DIM_DATA_INOUT.mp downto 0);
	subtype addr_t is std_logic_vector(DIM_ADDR.mp downto 0);

	type prtin_t is record
		data : data_t;
	end record prtin_t;

	type prtout_t is record
		data : data_t;
		addr : addr_t;
	end record prtout_t;

	function build_prtin(s_data : data_t)
		return prtin_t;

	function build_prtout(s_data : data_t; s_addr : addr_t)
		return prtout_t;
end package pkg_mini_frost32_cpu;


package body pkg_mini_frost32_cpu is

	function build_prtin(s_data : data_t)
		return prtin_t is
		variable ret : prtin_t;
	begin
		ret.data := s_data;
		return ret;
	end function build_prtin;

	function build_prtout(s_data : data_t; s_addr : addr_t)
		return prtout_t is
		variable ret : prtout_t;
	begin
		ret.data := s_data;
		ret.addr := s_addr;
		return ret;
	end function build_prtout;
end package body pkg_mini_frost32_cpu;
