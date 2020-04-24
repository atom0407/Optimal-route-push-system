function varargout = dijkstra_gui(varargin)
% DIJKSTRA_GUI MATLAB code for dijkstra_gui.fig
%      DIJKSTRA_GUI, by itself, creates a new DIJKSTRA_GUI or raises the existing
%      singleton*.
%
%      H = DIJKSTRA_GUI returns the handle to a new DIJKSTRA_GUI or the handle to
%      the existing singleton*.
%
%      DIJKSTRA_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIJKSTRA_GUI.M with the given input arguments.
%
%      DIJKSTRA_GUI('Property','Value',...) creates a new DIJKSTRA_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dijkstra_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dijkstra_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dijkstra_gui

% Last Modified by GUIDE v2.5 05-Nov-2019 13:47:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dijkstra_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @dijkstra_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before dijkstra_gui is made visible.
function dijkstra_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dijkstra_gui (see VARARGIN)

% Choose default command line output for dijkstra_gui
handles.output = hObject;
set(handles.figure1,'NumberTitle','off','name','NUIST');
set(handles.axes1,'Box','on');
set(handles.axes1,'Xlim',[0 100]);
set(handles.axes1,'Ylim',[0 50]);
set(handles.axes1,'NextPlot','add');
%set(handles.text1,'string','最优路线推送系统','color','r')
%画点
p1 = circle(96,25,1);
handles.hp1 = p1;
p2 = circle(90,35,2);
handles.hp2 = p2;
p3 = circle(90,15,3);
handles.hp3 = p3;
p4 = circle(88,45,4);
handles.hp4 = p4;
p5 = circle(85,12,5);
handles.hp5 = p5;
p6 = circle(80,35,6);
handles.hp6 = p6;
p7 = circle(75,35,7);
handles.hp7 = p7;
p8 = circle(76,15,8);
handles.hp8 = p8;
p9 = circle(71,45,9);
handles.hp9 = p9;
p10 = circle(71,35,10);
handles.hp10 = p10;
p11 = circle(69,15,11);
handles.hp11 = p11;
p12 = circle(65,35,12);
handles.hp12 = p12;
p13 = circle(60,15,13);
handles.hp13 = p13;
p14 = circle(56,20,14);
handles.hp14 = p14;
p15 = circle(56,35,15);
handles.hp15 = p15;
p16 = circle(58,45,16);
handles.hp16 = p16;
p17 = circle(54,15,17);
handles.hp17 = p17;
p18 = circle(52,12,18);
handles.hp18 = p18;
p19 = circle(46,7,19);
handles.hp19 = p19;
p20 = circle(42,15,20);
handles.hp20 = p20;
p21 = circle(40,20,21);
handles.hp21 = p21;
p22 = circle(35,15,22);
handles.hp22 = p22;
p23 = circle(30,20,23);
handles.hp23 = p23;
p24 = circle(30,25,24);
handles.hp24 = p24;
p25 = circle(30,30,25);
handles.hp25 = p25;
p26 = circle(26,25,26);
handles.hp26 = p26;
p27 = circle(19,33,27);
handles.hp27 = p27;
p28 = circle(12,33,28);
handles.hp28 = p28;
p29 = circle(9,12,29);
handles.hp29 = p29;
p30 = circle(9,7,30);
handles.hp30 = p30;
p31 = circle(21,5,31);
handles.hp31 = p31;

%点矩阵
global P;
P = [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,...
    p25,p26,p27,p28,p29,p30,p31];

%坐标矩阵
global A;
A = [96,25;90,35;90,15;88,45;85,12;80,35;75,35;76,15;71,45;71,35;69,15;...
    65,35;60,15;56,20;56,35;58,45;54,15;52,12;46,7;42,15;40,20;35,15;...
    30,20;30,25;30,30;26,25;19,33;12,33;9,12;9,7;21,5];
%画线
draw_line();

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes dijkstra_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dijkstra_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
global start;
global P;
start = get(handles.popupmenu1,'Value');
for i = 1:31
    set(P(i),'Color','r');
end
set(P(start),'Color','g');


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2
global stop;
global P;
stop = get(handles.popupmenu2,'Value');
for i = 1:31
    set(P(i),'Color','r');
end
set(P(stop),'Color','g');


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global P;
num_r = 0;

for i = 1:31
    set(P(i),'Color','r');
end

draw_line();

load W
load n
global start;
global stop;
global A;

pr = dijkstra_best(W,n,start);
p = best(pr,start,stop,n);
for i = 1:31
    if(p(i) ~= -1)
        num_r = num_r + 1;
    end
end

for i = 1:num_r
    set(P(p(i)),'Color','g');
end

for i = 1:(num_r - 1)
    line([A(p(i),1),A(p(i + 1),1)],[A(p(i),2),A(p(i + 1),2)],'Color','g','LineWidth',1);
end
