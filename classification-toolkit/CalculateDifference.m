function [ ] = CalculateDifference( )
%CALCULATEDIFFERENCE Summary of this function goes here
%   Detailed explanation goes here
    [trainManmade,trainNatural] = IdentifyClasses(); %hists of training
    [testManmade, testNatural] = RunTestSet(); %hists of manmade
    [manmadeInManmade, manmadeInNatural] = Test(testManmade, trainManmade, trainNatural);
    [naturalInManmade, naturalInNatural] = Test(testNatural, trainManmade, trainNatural);
    manmadeInManmade
    naturalInNatural
    %Test(testNatural, trainManmade, trainNatural);
end

     