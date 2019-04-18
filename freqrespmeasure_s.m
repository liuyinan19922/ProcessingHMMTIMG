function output = freqrespmeasure_s(sample, timeline)

frame = size(sample, 3);
row = size(sample, 1);
col = size(sample, 2);
output = zeros(row, col);
for ii = 1:row
    parfor jj = 1:col
        temp = sample(ii, jj, :);
        temp = reshape(temp, frame, 1);
        [~, output(ii, jj)] = freqrespmeasure(temp, timeline);
%         output(ii, jj) = phdiffmeasure(temp, timeline);
    end
end
end
