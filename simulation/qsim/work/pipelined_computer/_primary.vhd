library verilog;
use verilog.vl_types.all;
entity pipelined_computer is
    port(
        resetn          : in     vl_logic;
        clock           : in     vl_logic;
        pc              : out    vl_logic_vector(31 downto 0);
        inst            : out    vl_logic_vector(31 downto 0);
        ealu            : out    vl_logic_vector(31 downto 0);
        malu            : out    vl_logic_vector(31 downto 0);
        walu            : out    vl_logic_vector(31 downto 0);
        lcd             : out    vl_logic_vector(41 downto 0);
        switch          : in     vl_logic_vector(9 downto 0)
    );
end pipelined_computer;
