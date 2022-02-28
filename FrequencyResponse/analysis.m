dataFolder = './Clean';
matFolder = './mat';
fileNames = ["RFID_Antenna_No_Tag", "RFID_Antenna_Far_Tag", "RFID_Antenna_Close_Tag"];
plotNames = ["No Tag", "Far Tag", "Close Tag"];
numberOfFiles = size(fileNames,2);
fileExtension = '.s1p';
saveExtension = '.mat';
formatSpec = '%d %f %f';

hold on;
for index = 1:numberOfFiles
    fileName = fileNames(index);
    
    fn = fileName + fileExtension;
    sfn = fileName + saveExtension;

    filePath = fullfile(dataFolder, fn);
    saveFilePath = fullfile(matFolder, sfn);

    fileID = fopen(filePath, 'r');
    data = fscanf(fileID,formatSpec);

    sZ = size(data,1) / 3;

    Frequency = zeros(sZ,1);
    S11 = zeros(sZ,1);
    R = zeros(sZ,1);

    for i = 1:sZ
        dataIndex = (i-1)*3 + 1;
        Frequency(i) = data(dataIndex);
        S11(i) = data(dataIndex+1);
        R(i) = data(dataIndex+2);
    end

    dataTable = table(Frequency, S11, R);
    save(saveFilePath,'dataTable');
    fclose(fileID);
    
    plot(dataTable.Frequency / (1e6), dataTable.S11, 'DisplayName', plotNames(index));
    
end

legend('Location', 'best');
xlabel('Frequency (MHz)');
ylabel('|S11| (dB)');
title('Reflection Coefficient');

xline(902,'-b',{'Minimum Frequency'},...
    'DisplayName', 'FCC Minimum RFID Frequency');
xline(928,'-r','Maximum Frequency',...
    'DisplayName', 'FCC Maximum RFID Frequency');
yline(-10, '--g',{'Well Matched'},...
    'DisplayName', '-10dB Line');

hold off;
