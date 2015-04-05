%11060264 Sümeyye Kaptan
%10060305 Merve Arslan
clc;   
close all;  
clear; 
fontSize = 15;
folder = fullfile('C:\Users\sumeyye\Desktop\resim');
button = menu('Resim Seçiniz...', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44');
    if button == 1
        baseFileName = '1.JPG';
    elseif button == 2
    	baseFileName = '1a.JPG';
    elseif button == 3
    	baseFileName = '1b.JPG';
    elseif button == 4
    	baseFileName = '1c.JPG';
    elseif button == 5
        baseFileName = '2.JPG';
    elseif button == 6
        baseFileName = '2a.JPG';
    elseif button == 7
    	baseFileName = '2b.JPG';
    elseif button == 8
    	baseFileName = '2c.JPG';
    elseif button == 9
    	baseFileName = '4.JPG';
    elseif button == 10
        baseFileName = '4a.JPG';
    elseif button == 11
    	baseFileName = '4b.JPG';
    elseif button == 12
    	baseFileName = '4c.JPG';
    elseif button == 13
    	baseFileName = '5.JPG';
    elseif button == 14
    	baseFileName = '5a.JPG';
    elseif button == 15
        baseFileName = '5b.JPG';
    elseif button == 16
    	baseFileName = '5c.JPG';
    elseif button == 17
    	baseFileName = '6.JPG';
    elseif button == 18
    	baseFileName = '6a.JPG';
    elseif button == 19
    	baseFileName = '6b.JPG';
    elseif button == 20
    	baseFileName = '6c.JPG';
    elseif button == 21
    	baseFileName = '7.JPG';
    elseif button == 22
    	baseFileName = '7a.JPG';
    elseif button == 23
    	baseFileName = '7b.JPG';
    elseif button == 24
    	baseFileName = '7c.JPG';
    elseif button == 25
    	baseFileName = '8.JPG';
    elseif button == 26
    	baseFileName = '8a.JPG';
    elseif button == 27
    	baseFileName = '8b.JPG';
    elseif button == 28
    	baseFileName = '8c.JPG';
    elseif button == 29
    	baseFileName = '9.JPG';
    elseif button == 30
    	baseFileName = '9a.JPG';
    elseif button == 31
    	baseFileName = '9b.JPG';
    elseif button == 32
    	baseFileName = '9c.JPG';
    elseif button == 33
    	baseFileName = '10.JPG';
    elseif button == 34
    	baseFileName = '10a.JPG';
    elseif button == 35
    	baseFileName = '10b.JPG';
    elseif button == 36
    	baseFileName = '10c.JPG';
    elseif button == 37
    	baseFileName = '11.JPG';
    elseif button == 38
    	baseFileName = '11a.JPG';
    elseif button == 39
    	baseFileName = '11b.JPG';
    elseif button == 40
	baseFileName = '11c.JPG';
    elseif button == 41
    	baseFileName = '12.JPG';
    elseif button == 42
    	baseFileName = '12a.JPG';
    elseif button == 43
    	baseFileName = '12b.JPG';
    elseif button == 44
    	baseFileName = '12c.JPG';
    end
    fullFileName = fullfile(folder, baseFileName);
if ~exist(fullFileName, 'file')
	
	fullFileName = baseFileName; 
	if ~exist(fullFileName, 'file')
		
		errorMessage = sprintf('Hata!!: %s dosyası mevcut değil!', fullFileName);
		uiwait(warndlg(errorMessage));
		return;
	end
end
 
imageData = imread(fullFileName);
 
avg_rgb = mean(mean(imageData));
 
factors = max(mean(avg_rgb), 128)./avg_rgb;
 
imageData(:,:,1) = imageData(:,:,1)*factors(1);
imageData(:,:,2) = imageData(:,:,2)*factors(2);
imageData(:,:,3) = imageData(:,:,3)*factors(3);
 
subplot(1, 2, 1);
imshow(fullFileName);
title('Orjinal Resim', 'FontSize', fontSize);
 
subplot(1, 2, 2);
imshow(imageData);
caption = sprintf('\nWhite Balance');
title(caption, 'FontSize', fontSize);
