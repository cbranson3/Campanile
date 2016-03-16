function recursiveCampanile (sides, theta, colors)
hold on
view(3)
axis equal
j=0;
boop = sides;
while boop>1
    boop = boop*.9;
    j=j+1;
end
repeat = j/length(colors);
colorz=[];
while repeat >0
    colorz = [colorz colors];
    repeat = repeat-1;
end
help(sides, theta, [colorz colors], 1, theta)

    function help(size, angle, str, i, original)
        if size<1
            title('My Campanile')
            xlabel('x-axis')
            ylabel('y-axis')
            zlabel('z-axis')
        else
            if i == 1
                x = [size/2, size/2, -size/2, -size/2, size/2];
                y = [size/2, -size/2, -size/2, size/2, size/2];
                %rot = [cos(angle) -sin(angle); sin(angle), cos(angle)];
                %new = rot * [x;y];
                size = size*.9;
                z = zeros(1, 5);
                z(:) = i-1;
                plot3(x, y, z, str(i));
                i=i+1;
                angle = original;
                help(size, angle, str, i, original)
            else              
                x = [size/2, size/2, -size/2, -size/2, size/2];
                y = [size/2, -size/2, -size/2, size/2, size/2];
                size = size*.9;
                rot = [cos(angle) -sin(angle); sin(angle), cos(angle)];
                new = rot * [x;y];
                z = zeros(1, 5);
                z(:) = i-1;
                plot3(new(1,:), new(2,:), z, str(i));
                i=i+1;
                angle = angle+original;
                help(size, angle, str, i, original)
            end
        end
    end

        


end