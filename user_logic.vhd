entity user_logic is
  PORT (aclk : IN STD_LOGIC;
     aresetn : IN STD_LOGIC;
  din_tvalid : IN STD_LOGIC;
        a, b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
 dout_tvalid : OUT STD_LOGIC;
           z : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
end user_logic;
