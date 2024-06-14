library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ResetControl  is
    Port ( clk : in STD_LOGIC;
           load : out STD_LOGIC);
end ResetControl ;

architecture Behavioral of ResetControl  is
    signal count : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin

    -- Processo para a lógica do contador
    process(clk)
    begin
        if rising_edge(clk) then
            if count = "1111" then
                count <= "0000";
            else
                count <= std_logic_vector(count + 1);
            end if;
        end if;
    end process;

    -- Processo para controlar o sinal de saída
    process(count)
    begin
        if count = "0001" then
            load <= '1';
        else
            load <= '0';
        end if;
    end process;

end Behavioral;
