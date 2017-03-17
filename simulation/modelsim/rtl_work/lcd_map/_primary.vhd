library verilog;
use verilog.vl_types.all;
entity lcd_map is
    port(
        num             : in     vl_logic_vector(7 downto 0);
        lcd             : out    vl_logic_vector(13 downto 0)
    );
end lcd_map;
