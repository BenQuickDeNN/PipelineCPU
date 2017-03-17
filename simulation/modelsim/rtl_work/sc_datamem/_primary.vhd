library verilog;
use verilog.vl_types.all;
entity sc_datamem is
    port(
        addr            : in     vl_logic_vector(31 downto 0);
        datain          : in     vl_logic_vector(31 downto 0);
        dataout         : out    vl_logic_vector(31 downto 0);
        we              : in     vl_logic;
        clock           : in     vl_logic;
        mem_clk         : in     vl_logic;
        switch          : in     vl_logic_vector(9 downto 0);
        lcd             : out    vl_logic_vector(41 downto 0)
    );
end sc_datamem;
