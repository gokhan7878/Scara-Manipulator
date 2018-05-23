function varargout = SCARA_GUI(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename,'gui_Singleton',gui_Singleton,'gui_OpeningFcn', @SCARA_GUI_OpeningFcn, 'gui_OutputFcn',  @SCARA_GUI_OutputFcn, 'gui_LayoutFcn',  [] , 'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function SCARA_GUI_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
view(SCARA28);

dist=-get(handles.slider5,'value');
y1=-.5*dist;
y2=.5*dist;
SCARA28.EndV1.translation = [-.35, y1, 0];
SCARA28.EndV2.translation = [-.35, y2, 0];

d4=-get(handles.slider4,'value');
SCARA28.d4b.translation=[0,d4,0];

T4=get(handles.slider3,'value');
SCARA28.d4b.rotation = [0, 1, 0,T4*pi/180];


T2=-get(handles.slider2,'value');
SCARA28.a2.rotation = [1, 0, 0, T2*pi/180];

T1=get(handles.slider1,'value');
SCARA28.d1.rotation = [0, 1, 0, T1*pi/180];
clc

function varargout = SCARA_GUI_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;

function slider1_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
T1=get(handles.slider1,'value');
if T1==360
   set(handles.slider1,'value',0);
end
SCARA28.d1.rotation = [0, 1, 0, T1*pi/180];

function slider1_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider2_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
T2=-get(handles.slider2,'value');
SCARA28.a2.rotation = [1, 0, 0, T2*pi/180];

function slider2_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
T4=get(handles.slider3,'value');
if T4==360
   set(handles.slider3,'value',0);
end
SCARA28.d4b.rotation = [0, 1, 0,T4*pi/180];

function slider3_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function slider4_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
d4=-get(handles.slider4,'value');
SCARA28.d4b.translation=[0,d4,0];

function slider4_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider5_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
dist=-get(handles.slider5,'value');
y1=-.5*dist;
y2=.5*dist;
SCARA28.EndV1.translation = [-.35, y1, 0];
SCARA28.EndV2.translation = [-.35, y2, 0];
function slider5_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function File_tag_Callback(hObject, eventdata, handles)
function Edit_tag_Callback(hObject, eventdata, handles)
function Reset_tag_Callback(hObject, eventdata, handles)

SCARA28 = vrworld('SCARA28.wrl');
open(SCARA28)
dist=-1.3;
y1=-.5*dist;
y2=.5*dist;
SCARA28.EndV1.translation = [-.35, y1, 0];
SCARA28.EndV2.translation = [-.35, y2, 0];
d4=0;
SCARA28.d4b.translation=[0,d4,0];
T4=0;
SCARA28.d4b.rotation = [0, 1, 0,T4*pi/180];
T2=0;
SCARA28.a2.rotation = [1, 0, 0, T2*pi/180];
T1=0;
SCARA28.d1.rotation = [0, 1, 0, T1*pi/180];
clc

set(handles.slider5,'value',-dist);
set(handles.slider4,'value',0);
set(handles.slider3,'value',0);
set(handles.slider2,'value',0);
set(handles.slider1,'value',0);
function About_us_tag_Callback(hObject, eventdata, handles)

about_us
function figure1_CreateFcn(hObject, eventdata, handles)
function Exit_Tag_Callback(hObject, eventdata, handles)
