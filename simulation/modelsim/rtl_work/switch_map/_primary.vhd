library verilog;
use verilog.vl_types.all;
entity switch_map is
    port(
        num             : out    vl_logic_vector(7 downto 0);
        switches        : in     vl_logic_vector(4 downto 0)
    );
end switch_map;
