----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/15/2018 10:08:56 PM
-- Design Name: 
-- Module Name: shift_left_2_jump - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity shift_left_2_jump is
port ( imm :  in std_logic_vector(25 downto 0);
   pc_4msb :  in std_logic_vector(3 downto 0);
 jump_addr : out std_logic_vector(31 downto 0));
end shift_left_2_jump;

architecture Behavioral of shift_left_2_jump is

begin

jump_addr <= pc_4msb & imm & "00";

end Behavioral;
