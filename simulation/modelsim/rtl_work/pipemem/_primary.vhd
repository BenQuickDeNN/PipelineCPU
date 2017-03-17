library verilog;
use verilog.vl_types.all;
entity pipemem is
    port(
        mwmem           : in     vl_logic;
        malu            : in     vl_logic_vector(31 downto 0);
        mb              : in     vl_logic_vector(31 downto 0);
        resetn          : in     vl_logic;
        clock           : in     vl_logic;
        mem_clock       : in     vl_logic;
        mmo             : out    vl_logic_vector(31 downto 0);
        switch          : in     vl_logic_vector(9 downto 0);
        lcd             : out    vl_logic_vector(41 downto 0)
    );
end pipemem;
