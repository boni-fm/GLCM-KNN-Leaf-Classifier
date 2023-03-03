#Mengimport package image
pkg load image

#Mendapatkan file-file bertipe .JPG pada directory 
imagefiles = dir('*.jpg');
#Banyaknya file yang didapatkan
n_files = length(imagefiles);

#Looping untuk membaca citra sebanyak n_files
for ii=1:n_files
  
   #mendapatkan nama file citra dari directory
   currentfilename = imagefiles(ii).name;
   
   #Membaca citra 
   img{ii} = imread(currentfilename);
   #Mengubah citra dari RGB menjadi grayscale
   imgray = rgb2gray(img{ii});
   
   #Melakukan perhitungan GLCM Orde 1
   glcm_1(ii, 1) = mean(imgray(:));
   glcm_1(ii, 2) = skewness(imgray(:));
   glcm_1(ii, 3) = var(imgray(:));
   glcm_1(ii, 4) = kurtosis(imgray(:));
   

end



% img = imread('Salam_01.jpg');
% img = rgb2gray(img);
% glcm = graycomatrix(img);
% stats = graycoprops(glcm, 'Contrast Correlation Energy Homogeneity');
% stats
