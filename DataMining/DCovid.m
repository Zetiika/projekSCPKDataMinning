function varargout = DCovid(varargin)
% DCOVID MATLAB code for DCovid.fig
%      DCOVID, by itself, creates a new DCOVID or raises the existing
%      singleton*.
%
%      H = DCOVID returns the handle to a new DCOVID or the handle to
%      the existing singleton*.
%
%      DCOVID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DCOVID.M with the given input arguments.
%
%      DCOVID('Property','Value',...) creates a new DCOVID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DCovid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DCovid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DCovid

% Last Modified by GUIDE v2.5 09-May-2020 20:54:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DCovid_OpeningFcn, ...
                   'gui_OutputFcn',  @DCovid_OutputFcn, ...
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


% --- Executes just before DCovid is made visible.
function DCovid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DCovid (see VARARGIN)

% Choose default command line output for DCovid
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DCovid wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DCovid_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function konfir_Callback(hObject, eventdata, handles)
% hObject    handle to konfir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of konfir as text
%        str2double(get(hObject,'String')) returns contents of konfir as a double


% --- Executes during object creation, after setting all properties.
function konfir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to konfir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function plus_Callback(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of plus as text
%        str2double(get(hObject,'String')) returns contents of plus as a double


% --- Executes during object creation, after setting all properties.
function plus_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sembuh_Callback(hObject, eventdata, handles)
% hObject    handle to sembuh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sembuh as text
%        str2double(get(hObject,'String')) returns contents of sembuh as a double


% --- Executes during object creation, after setting all properties.
function sembuh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sembuh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function meninggal_Callback(hObject, eventdata, handles)
% hObject    handle to meninggal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of meninggal as text
%        str2double(get(hObject,'String')) returns contents of meninggal as a double


% --- Executes during object creation, after setting all properties.
function meninggal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to meninggal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sd_Callback(hObject, eventdata, handles)
% hObject    handle to sd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = xlsread('DataCovid.xlsx','B2:E16');
group = xlsread('DataCovid.xlsx','F2:F16');

input1 = get(handles.konfir,'string');
input2 = get(handles.plus,'string');
input3 = get(handles.sembuh,'string');
input4 = get(handles.meninggal,'string');

nilai1 = str2num(input1);
nilai2 = str2num(input2);
nilai3 = str2num(input3);
nilai4 = str2num(input4);

sampel = [nilai1 nilai2 nilai3 nilai4];
hasil = fitcknn(data, group, 'numNeighbor', 3);
nilai = num2str(predict(hasil, sampel));
set(handles.sd, 'string', nilai);
% Hints: get(hObject,'String') returns contents of sd as text
%        str2double(get(hObject,'String')) returns contents of sd as a double


% --- Executes during object creation, after setting all properties.
function sd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sd.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to sd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes when entered data in editable cell(s) in tabel.
function tabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
