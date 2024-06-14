library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Pause is
    Port ( start_stop : in STD_LOGIC;
           detected : in STD_LOGIC;
           q : out STD_LOGIC);
end Pause;

architecture Behavioral of Pause is
    signal q_internal : STD_LOGIC := '0';
    signal start_stop_prev : STD_LOGIC := '0';
    signal detected_prev : STD_LOGIC := '0';
begin

process(start_stop, detected)
begin
    -- Detectando a subida no sinal start_stop
    if start_stop = '1' and start_stop_prev = '0' then
        q_internal <= not q_internal;
    end if;

    -- Detectando a subida no sinal detected
    if detected = '1' and detected_prev = '0' then
        q_internal <= not q_internal;
    end if;

    -- Atualizando os sinais anteriores
    start_stop_prev <= start_stop;
    detected_prev <= detected;
end process;

q <= q_internal;

end Behavioral;
