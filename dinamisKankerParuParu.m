function varargout = dinamisKankerParuParu(varargin)
% DINAMISKANKERPARUPARU MATLAB code for dinamisKankerParuParu.fig
%      DINAMISKANKERPARUPARU, by itself, creates a new DINAMISKANKERPARUPARU or raises the existing
%      singleton*.
%
%      H = DINAMISKANKERPARUPARU returns the handle to a new DINAMISKANKERPARUPARU or the handle to
%      the existing singleton*.
%
%      DINAMISKANKERPARUPARU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DINAMISKANKERPARUPARU.M with the given input arguments.
%
%      DINAMISKANKERPARUPARU('Property','Value',...) creates a new DINAMISKANKERPARUPARU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dinamisKankerParuParu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dinamisKankerParuParu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dinamisKankerParuParu

% Last Modified by GUIDE v2.5 20-May-2023 00:36:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dinamisKankerParuParu_OpeningFcn, ...
                   'gui_OutputFcn',  @dinamisKankerParuParu_OutputFcn, ...
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


% --- Executes just before dinamisKankerParuParu is made visible.
function dinamisKankerParuParu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dinamisKankerParuParu (see VARARGIN)

% Choose default command line output for dinamisKankerParuParu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dinamisKankerParuParu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dinamisKankerParuParu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in confirmWeightButton.
function confirmWeightButton_Callback(hObject, eventdata, handles)
% hObject    handle to confirmWeightButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% mengambil value dari weight
W1 = str2double(get(handles.W1Edit, 'string'));
W2 = str2double(get(handles.W2Edit, 'string'));
W3 = str2double(get(handles.W3Edit, 'string'));
W4 = str2double(get(handles.W4Edit, 'string'));
W5 = str2double(get(handles.W5Edit, 'string'));
W6 = str2double(get(handles.W6Edit, 'string'));
W7 = str2double(get(handles.W7Edit, 'string'));

if W1 > 5 || W2 > 5 || W3 > 5 || W4 > 5 || W5 > 5 || W6 > 5 || W7 > 5
    errorHandlingOverweight;
    % update status setelah klik confirm
    set(handles.statusConfirmWeight,'string',"Gagal Edit Weight");
    
    % hapus isi tabel weight
    set(handles.tabelWeight,'data','');
else    
    % memasukkan weight ke dalam matriks dan ke tabel
    isiTabelWeight = [W1 W2 W3 W4 W5 W6 W7];
    set(handles.tabelWeight,'data',isiTabelWeight);

    % update status setelah klik confirm
    set(handles.statusConfirmWeight,'string',"Sukses Edit Weight");
end

    



function W1Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1Edit as text
%        str2double(get(hObject,'String')) returns contents of W1Edit as a double


% --- Executes during object creation, after setting all properties.
function W1Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W2Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2Edit as text
%        str2double(get(hObject,'String')) returns contents of W2Edit as a double


% --- Executes during object creation, after setting all properties.
function W2Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W3Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W3Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W3Edit as text
%        str2double(get(hObject,'String')) returns contents of W3Edit as a double


% --- Executes during object creation, after setting all properties.
function W3Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W4Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W4Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W4Edit as text
%        str2double(get(hObject,'String')) returns contents of W4Edit as a double


% --- Executes during object creation, after setting all properties.
function W4Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W4Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W5Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W5Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W5Edit as text
%        str2double(get(hObject,'String')) returns contents of W5Edit as a double


% --- Executes during object creation, after setting all properties.
function W5Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W5Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W6Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W6Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W6Edit as text
%        str2double(get(hObject,'String')) returns contents of W6Edit as a double


% --- Executes during object creation, after setting all properties.
function W6Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W6Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W7Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W7Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W7Edit as text
%        str2double(get(hObject,'String')) returns contents of W7Edit as a double


% --- Executes during object creation, after setting all properties.
function W7Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W7Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W8Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W8Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W8Edit as text
%        str2double(get(hObject,'String')) returns contents of W8Edit as a double


% --- Executes during object creation, after setting all properties.
function W8Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W8Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W9Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W9Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W9Edit as text
%        str2double(get(hObject,'String')) returns contents of W9Edit as a double


% --- Executes during object creation, after setting all properties.
function W9Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W9Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W10Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W10Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W10Edit as text
%        str2double(get(hObject,'String')) returns contents of W10Edit as a double


% --- Executes during object creation, after setting all properties.
function W10Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W10Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W11Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W11Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W11Edit as text
%        str2double(get(hObject,'String')) returns contents of W11Edit as a double


% --- Executes during object creation, after setting all properties.
function W11Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W11Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W12Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W12Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W12Edit as text
%        str2double(get(hObject,'String')) returns contents of W12Edit as a double


% --- Executes during object creation, after setting all properties.
function W12Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W12Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W13Edit_Callback(hObject, eventdata, handles)
% hObject    handle to W13Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W13Edit as text
%        str2double(get(hObject,'String')) returns contents of W13Edit as a double


% --- Executes during object creation, after setting all properties.
function W13Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W13Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hapusWeightButton.
function hapusWeightButton_Callback(hObject, eventdata, handles)
% hObject    handle to hapusWeightButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% update status setelah klik confirm
set(handles.statusHapusWeight,'string',"Sukses Hapus Data Weight");

% hapus isi tabel weight
set(handles.tabelWeight,'data','');


function A2_Callback(hObject, eventdata, handles)
% hObject    handle to A2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2 as text
%        str2double(get(hObject,'String')) returns contents of A2 as a double


% --- Executes during object creation, after setting all properties.
function A2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3_Callback(hObject, eventdata, handles)
% hObject    handle to A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3 as text
%        str2double(get(hObject,'String')) returns contents of A3 as a double


% --- Executes during object creation, after setting all properties.
function A3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1_Callback(hObject, eventdata, handles)
% hObject    handle to A1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1 as text
%        str2double(get(hObject,'String')) returns contents of A1 as a double


% --- Executes during object creation, after setting all properties.
function A1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lihatHasilButton.
function lihatHasilButton_Callback(hObject, eventdata, handles)
% hObject    handle to lihatHasilButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in hapusHasilButton.
function hapusHasilButton_Callback(hObject, eventdata, handles)
% hObject    handle to hapusHasilButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function A4_Callback(hObject, eventdata, handles)
% hObject    handle to A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4 as text
%        str2double(get(hObject,'String')) returns contents of A4 as a double


% --- Executes during object creation, after setting all properties.
function A4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C1_Callback(hObject, eventdata, handles)
% hObject    handle to A1C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C1 as text
%        str2double(get(hObject,'String')) returns contents of A1C1 as a double


% --- Executes during object creation, after setting all properties.
function A1C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C2_Callback(hObject, eventdata, handles)
% hObject    handle to A1C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C2 as text
%        str2double(get(hObject,'String')) returns contents of A1C2 as a double


% --- Executes during object creation, after setting all properties.
function A1C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C1_Callback(hObject, eventdata, handles)
% hObject    handle to A2C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C1 as text
%        str2double(get(hObject,'String')) returns contents of A2C1 as a double


% --- Executes during object creation, after setting all properties.
function A2C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C1_Callback(hObject, eventdata, handles)
% hObject    handle to A3C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C1 as text
%        str2double(get(hObject,'String')) returns contents of A3C1 as a double


% --- Executes during object creation, after setting all properties.
function A3C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C1_Callback(hObject, eventdata, handles)
% hObject    handle to A4C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C1 as text
%        str2double(get(hObject,'String')) returns contents of A4C1 as a double


% --- Executes during object creation, after setting all properties.
function A4C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C2_Callback(hObject, eventdata, handles)
% hObject    handle to A2C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C2 as text
%        str2double(get(hObject,'String')) returns contents of A2C2 as a double


% --- Executes during object creation, after setting all properties.
function A2C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C2_Callback(hObject, eventdata, handles)
% hObject    handle to A3C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C2 as text
%        str2double(get(hObject,'String')) returns contents of A3C2 as a double


% --- Executes during object creation, after setting all properties.
function A3C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C2_Callback(hObject, eventdata, handles)
% hObject    handle to A4C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C2 as text
%        str2double(get(hObject,'String')) returns contents of A4C2 as a double


% --- Executes during object creation, after setting all properties.
function A4C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C3_Callback(hObject, eventdata, handles)
% hObject    handle to A1C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C3 as text
%        str2double(get(hObject,'String')) returns contents of A1C3 as a double


% --- Executes during object creation, after setting all properties.
function A1C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C3_Callback(hObject, eventdata, handles)
% hObject    handle to A2C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C3 as text
%        str2double(get(hObject,'String')) returns contents of A2C3 as a double


% --- Executes during object creation, after setting all properties.
function A2C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C3_Callback(hObject, eventdata, handles)
% hObject    handle to A3C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C3 as text
%        str2double(get(hObject,'String')) returns contents of A3C3 as a double


% --- Executes during object creation, after setting all properties.
function A3C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C3_Callback(hObject, eventdata, handles)
% hObject    handle to A4C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C3 as text
%        str2double(get(hObject,'String')) returns contents of A4C3 as a double


% --- Executes during object creation, after setting all properties.
function A4C3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C7_Callback(hObject, eventdata, handles)
% hObject    handle to A1C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C7 as text
%        str2double(get(hObject,'String')) returns contents of A1C7 as a double


% --- Executes during object creation, after setting all properties.
function A1C7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C7_Callback(hObject, eventdata, handles)
% hObject    handle to A2C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C7 as text
%        str2double(get(hObject,'String')) returns contents of A2C7 as a double


% --- Executes during object creation, after setting all properties.
function A2C7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C7_Callback(hObject, eventdata, handles)
% hObject    handle to A3C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C7 as text
%        str2double(get(hObject,'String')) returns contents of A3C7 as a double


% --- Executes during object creation, after setting all properties.
function A3C7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C7_Callback(hObject, eventdata, handles)
% hObject    handle to A4C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C7 as text
%        str2double(get(hObject,'String')) returns contents of A4C7 as a double


% --- Executes during object creation, after setting all properties.
function A4C7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C4_Callback(hObject, eventdata, handles)
% hObject    handle to A1C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C4 as text
%        str2double(get(hObject,'String')) returns contents of A1C4 as a double


% --- Executes during object creation, after setting all properties.
function A1C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C4_Callback(hObject, eventdata, handles)
% hObject    handle to A2C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C4 as text
%        str2double(get(hObject,'String')) returns contents of A2C4 as a double


% --- Executes during object creation, after setting all properties.
function A2C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C4_Callback(hObject, eventdata, handles)
% hObject    handle to A3C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C4 as text
%        str2double(get(hObject,'String')) returns contents of A3C4 as a double


% --- Executes during object creation, after setting all properties.
function A3C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C4_Callback(hObject, eventdata, handles)
% hObject    handle to A4C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C4 as text
%        str2double(get(hObject,'String')) returns contents of A4C4 as a double


% --- Executes during object creation, after setting all properties.
function A4C4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submitDataButton.
function submitDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to submitDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% A1 = get(handles.A1, 'string');
% A2 = get(handles.A2, 'string');
% A3 = get(handles.A3, 'string');
% A4 = get(handles.A4, 'string');


% Membuat array sel untuk menyimpan nilai A1, A2, A3, A4 dan index nya
namaPasien = cell(4, 1); 
indexPasien = cell(4, 1);

% mengambil nama pasien
for i = 1:4
    inputNamaPasien = ['A', num2str(i)];
    namaPasien{i} = get(handles.(inputNamaPasien), 'string');
    indexPasien{i} = i;
end


% membuat array sel untuk menyimpan data kriteria
nilaiKriteriaPasien = cell(4,7);

% mengambil value kriteria A1
for i = 1 : 7
    for j = 1 : 4
        inputKriteriaPasien = ['A', num2str(j),'C',num2str(i)];
        nilaiKriteriaPasien{j} = str2double(get(handles.(inputKriteriaPasien), 'string'));
    end
end


% menggabungkan namaPasien dan 
dataTabel = table(namaPasien,nilaiKriteriaPasien);
disp(dataTabel)








function A1C6_Callback(hObject, eventdata, handles)
% hObject    handle to A1C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C6 as text
%        str2double(get(hObject,'String')) returns contents of A1C6 as a double


% --- Executes during object creation, after setting all properties.
function A1C6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C6_Callback(hObject, eventdata, handles)
% hObject    handle to A2C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C6 as text
%        str2double(get(hObject,'String')) returns contents of A2C6 as a double


% --- Executes during object creation, after setting all properties.
function A2C6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C6_Callback(hObject, eventdata, handles)
% hObject    handle to A3C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C6 as text
%        str2double(get(hObject,'String')) returns contents of A3C6 as a double


% --- Executes during object creation, after setting all properties.
function A3C6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C6_Callback(hObject, eventdata, handles)
% hObject    handle to A4C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C6 as text
%        str2double(get(hObject,'String')) returns contents of A4C6 as a double


% --- Executes during object creation, after setting all properties.
function A4C6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A1C5_Callback(hObject, eventdata, handles)
% hObject    handle to A1C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A1C5 as text
%        str2double(get(hObject,'String')) returns contents of A1C5 as a double


% --- Executes during object creation, after setting all properties.
function A1C5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A1C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A2C5_Callback(hObject, eventdata, handles)
% hObject    handle to A2C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A2C5 as text
%        str2double(get(hObject,'String')) returns contents of A2C5 as a double


% --- Executes during object creation, after setting all properties.
function A2C5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A2C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A3C5_Callback(hObject, eventdata, handles)
% hObject    handle to A3C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A3C5 as text
%        str2double(get(hObject,'String')) returns contents of A3C5 as a double


% --- Executes during object creation, after setting all properties.
function A3C5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A3C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A4C5_Callback(hObject, eventdata, handles)
% hObject    handle to A4C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A4C5 as text
%        str2double(get(hObject,'String')) returns contents of A4C5 as a double


% --- Executes during object creation, after setting all properties.
function A4C5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A4C5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in menuAwalButton.
function menuAwalButton_Callback(hObject, eventdata, handles)
% hObject    handle to menuAwalButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menutup gui frame dinamisKankerParuParu
close(dinamisKankerParuParu);

% membuka GUI Menu
MenuAwal;


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)