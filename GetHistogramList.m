function [ histograms ] = GetHistogramList( imageDirectory )
%GETHISTOGRAMLIST Summary of this function goes here
    rawImages = LoadImages('../Assignments/Images/out_manmade_1k/');
    nImages = length(rawImages);
        %Split into RGB Channels
    %for i = 1:nImages
    parfor i=1:nImages
        %imshow(rawImages{i}); default bins 256?
        histograms{i}=GetColourHistogram(rawImages{i});
    end
    %plots histogram of {1}, for reference
    %plot(0:255, histograms{1,1}, 'Red', 0:255, histograms{1,2}, 'Green', 0:255,  histograms{1,3}, 'Blue');
end
