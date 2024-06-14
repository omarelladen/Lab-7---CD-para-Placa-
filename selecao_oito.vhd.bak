library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Selecao_Oito is
    port (
        barramento_1 : in std_logic_vector(7 downto 0);
        barramento_2 : in std_logic_vector(7 downto 0);
        selecao : in std_logic;
        selecionadas : out std_logic_vector(7 downto 0)
    );
end entity Selecao_Oito;

architecture Behavioral of Selecao_Oito is
begin
    process(barramento_1, barramento_2, selecao)
    begin
        if selecao = '0' then
            selecionadas <= barramento_1;
        else
            selecionadas <= barramento_2;
        end if;
    end process;
end architecture Behavioral;