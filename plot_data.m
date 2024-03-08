clc
clear all
close all hidden

%% delete
delete( '*.asv')
delete( './fig/*.emf')
delete( './fig/*.png')


%% path
add_pathes

%% parameters
core_num = 6;
movie_name = 'movie';
time_shift = 0.0;       %% [s]


%% multi threading
maxNumCompThreads( core_num);


%% load

disp( 'Now loading...')
video = mmread( [ './load/', movie_name, '.mp4']);
time_m = video.times - time_shift;
d_time = diff( time_m(1:2));

disp( 'Video loaded.')

%% paly back

h_fig1 = figure(1);
set( h_fig1, 'Position', [ 100 100 600 600])
h_ax1 = axes( 'Parent', h_fig1, 'FontSize', 15);
set( h_ax1, 'Position', get( h_ax1, 'OuterPosition'));%figure‚Ì—]”’‚ðíœ

rgb_img = video.frames(1,1).cdata;
h_imag1 = imagesc( rgb_img, 'Parent', h_ax1);
h_txt = text( 100, 100, 'textbox', 'String', ['Time: ', num2str( 0, '%.2f'), ' s'], ...
                    'FontName', 'Times New Roman', 'FontSize', 40, ...
                    'BackgroundColor', 'g');
axis off
axis equal



i_time = 1;
for time = time_m
    
    rgb_img = video.frames(1,i_time).cdata;
   
    set( h_imag1, 'CData', rgb_img, 'ButtonDownFcn', '@onvoiddown')
    pause( d_time)

    
    %%[*] Create textbox
    set( h_txt, 'String', ['Time: ', num2str( time, '%.2f'), ' s'])
    drawnow
        
    %%[*] save
    if mod( i_time, 20) == 0 && time >= 0
        saveas( h_fig1, [ './fig/', num2str( time, '%.1f'), 's.png'])
    end
    
    i_time = i_time + 1;
end



%% Finish
warndlg( 'Finish!!')





