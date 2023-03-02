% BMS Kodu

% Batarya parametreleri
nominal_voltage = 4; % V
rated_capacity = 4; % Ah
initial_soc = 100; % %
response_time = 5; % s

% SOC De?erlerini Ayarla
soc_range = [0:1:100]; 
voltage_range = [3:0.01:4];
soc_percent = interp1(voltage_range, soc_range, measured_voltage);

% Batarya voltaj?n? �l�
measured_voltage = 3.5; % �rnek de?er

% Voltaj �l��mlerinin do?rulu?unu kontrol etmek i�in g�venlik ko?ullar?
if measured_voltage > 4 
    error("Voltage exceeds maximum rated voltage!");
elseif measured_voltage < 3
    error("Voltage is below minimum rated voltage!");
else
    % Coulomb Counting y�ntemi ile SOC'u hesapla
    delta_soc = measured_current/(rated_capacity*3600*response_time)*100; %%
    new_soc = initial_soc + delta_soc;
    
    % SOC de?erini kontrol etmek i�in g�venlik ko?ullar?
    if new_soc > 100 
        new_soc = 100;
    elseif new_soc < 0
        new_soc = 0;
    end
    
    % Yeni SOC de?erini g�r�nt�le
    disp(['New SOC: ', num2str(new_soc), '%']);
end
