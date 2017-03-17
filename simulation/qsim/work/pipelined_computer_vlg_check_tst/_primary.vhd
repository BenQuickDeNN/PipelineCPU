library verilog;
use verilog.vl_types.all;
entity pipelined_computer_vlg_check_tst is
    port(
        ealu            : in     vl_logic_vector(31 downto 0);
        inst            : in     vl_logic_vector(31 downto 0);
        lcd             : in     vl_logic_vector(41 downto 0);
        malu            : in     vl_logic_vector(31 downto 0);
        pc              : in     vl_logic_vector(31 downto 0);
        walu            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end pipelined_computer_vlg_check_tst;
