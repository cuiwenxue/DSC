clear;
clc;

root1 = '/home/xwhu/dataset/ISTD/train/train_A/';
image_path1 = dir(fullfile(root1,'*.png'));
root2 = '/home/xwhu/dataset/ISTD/train/train_B/';
image_path2 = dir(fullfile(root2,'*.png'));
root3 = '/home/xwhu/dataset/ISTD/train/train_C/';
image_path3 = dir(fullfile(root3,'*.png'));

save_root1 = '/home/xwhu/dataset/ISTD/train_argu/train_A/';
save_root2 = '/home/xwhu/dataset/ISTD/train_argu/train_B/';
save_root3 = '/home/xwhu/dataset/ISTD/train_argu/train_C/';


for i=1: length(image_path1)
    i
    
    image1 = imread([root1 image_path1(i).name]);
    image2 = imread([root2 image_path2(i).name]);
    image3 = imread([root3 image_path3(i).name]);
    
    imwrite(image1,[save_root1  image_path1(i).name]);
    imwrite(image2,[save_root2  image_path2(i).name]);
    imwrite(image3,[save_root3  image_path3(i).name]);
    
    image1_a = image1;
    image2_a = image2;
    image3_a = image3;
    
    image1_b = image1;
    image2_b = image2;
    image3_b = image3;
    
    %flip left and right
    for k=1:3
        image1_a(:,:,k) = fliplr(image1(:,:,k));
        image3_a(:,:,k) = fliplr(image3(:,:,k));
    end
    image2_a(:,:) = fliplr(image2(:,:));
    
    imwrite(image1_a,[save_root1 'a_' image_path1(i).name]);
    imwrite(image2_a,[save_root2 'a_' image_path2(i).name]);
    imwrite(image3_a,[save_root3 'a_' image_path3(i).name]);
    
    %flip up and down
    for k=1:3
        image1_b(:,:,k) = flipud(image1(:,:,k));
        image3_b(:,:,k) = flipud(image3(:,:,k));
    end
    image2_b(:,:) = flipud(image2(:,:));
    imwrite(image1_b,[save_root1 'b_' image_path1(i).name]);
    imwrite(image2_b,[save_root2 'b_' image_path2(i).name]);
    imwrite(image3_b,[save_root3 'b_' image_path3(i).name]);  
  
    
    %rotation 90
    image1_c = imrotate(image1,90);
    image2_c = imrotate(image2,90);
    image3_c = imrotate(image3,90);
    imwrite(image1_c,[save_root1 'c_' image_path1(i).name]);
    imwrite(image2_c,[save_root2 'c_' image_path2(i).name]);
    imwrite(image3_c,[save_root3 'c_' image_path3(i).name]);  
    
    %rotation 180
    image1_d = imrotate(image1,180);
    image2_d = imrotate(image2,180);
    image3_d = imrotate(image3,180);
    imwrite(image1_d,[save_root1 'd_' image_path1(i).name]);
    imwrite(image2_d,[save_root2 'd_' image_path2(i).name]);
    imwrite(image3_d,[save_root3 'd_' image_path3(i).name]);  
    
    %rotation 270
    image1_e = imrotate(image1,270);
    image2_e = imrotate(image2,270);
    image3_e = imrotate(image3,270);
    imwrite(image1_e,[save_root1 'e_' image_path1(i).name]);
    imwrite(image2_e,[save_root2 'e_' image_path2(i).name]);
    imwrite(image3_e,[save_root3 'e_' image_path3(i).name]);  
    
    
    %crop
    h_off = floor(rand(1)/6*size(image1,1))+1;  
    w_off = floor(rand(1)/6*size(image1,2))+1;  
    image1_f = image1(h_off:size(image1,1)-h_off,w_off:size(image1,2)-w_off,:);
    image2_f = image2(h_off:size(image2,1)-h_off,w_off:size(image2,2)-w_off,:);
    image3_f = image3(h_off:size(image3,1)-h_off,w_off:size(image3,2)-w_off,:);
    imwrite(image1_f,[save_root1 'f_' image_path1(i).name]);
    imwrite(image2_f,[save_root2 'f_' image_path2(i).name]);
    imwrite(image3_f,[save_root3 'f_' image_path3(i).name]);  
    
    h_off = floor(rand(1)/6*size(image1,1))+1;  
    w_off = floor(rand(1)/6*size(image1,2))+1;  
    image1_g = image1_d(h_off:size(image1,1)-h_off,w_off:size(image1,2)-w_off,:);
    image2_g = image2_d(h_off:size(image2,1)-h_off,w_off:size(image2,2)-w_off,:);
    image3_g = image3_d(h_off:size(image3,1)-h_off,w_off:size(image3,2)-w_off,:);
    imwrite(image1_g,[save_root1 'g_' image_path1(i).name]);
    imwrite(image2_g,[save_root2 'g_' image_path2(i).name]);
    imwrite(image3_g,[save_root3 'g_' image_path3(i).name]);  
    
end
