library verilog;
use verilog.vl_types.all;
entity pipelined_computer_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        resetn          : in     vl_logic;
        switch          : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end pipelined_computer_vlg_sample_tst;
