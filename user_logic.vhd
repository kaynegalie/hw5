ibrary IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VComponents.all;
 
library UNISIM;
use UNISIM.VComponents.all;


entity user_logic is
  PORT (aclk : IN STD_LOGIC;
     aresetn : IN STD_LOGIC;
  din_tvalid : IN STD_LOGIC;
        a, b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
 dout_tvalid : OUT STD_LOGIC;
           z : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
end user_logic;

  
   architecture Behavioral of user_logic2 is
     
     
     

COMPONENT cordic_0
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_cartesian_tvalid : IN STD_LOGIC;
    s_axis_cartesian_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_dout_tvalid : OUT STD_LOGIC;
    m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;
begin
  
  signal temp : signed(15 downto 0);
     temp <= a+b
U : cordic_0
  PORT MAP (
    aclk => aclk,
    s_axis_cartesian_tvalid => din_tvalid,
    s_axis_cartesian_tdata => temp,
    m_axis_dout_tvalid => dout_tvalid,
    m_axis_dout_tdata => z
  );
 
end Behavioral;
