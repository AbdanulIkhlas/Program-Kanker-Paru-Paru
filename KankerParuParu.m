function varargout = KankerParuParu(varargin)
% KANKERPARUPARU MATLAB code for KankerParuParu.fig
%      KANKERPARUPARU, by itself, creates a new KANKERPARUPARU or raises the existing
%      singleton*.
%
%      H = KANKERPARUPARU returns the handle to a new KANKERPARUPARU or the handle to
%      the existing singleton*.
%
%      KANKERPARUPARU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KANKERPARUPARU.M with the given input arguments.
%
%      KANKERPARUPARU('Property','Value',...) creates a new KANKERPARUPARU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before KankerParuParu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to KankerParuParu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help KankerParuParu

% Last Modified by GUIDE v2.5 20-May-2023 02:39:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @KankerParuParu_OpeningFcn, ...
                   'gui_OutputFcn',  @KankerParuParu_OutputFcn, ...
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


% --- Executes just before KankerParuParu is made visible.
function KankerParuParu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to KankerParuParu (see VARARGIN)

% Choose default command line output for KankerParuParu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes KankerParuParu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = KankerParuParu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in lihatDataButton.
function lihatDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to lihatDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% membaca data dari file excel 'DataKankerParuParu.xlsx'
% pathFileData = fullfile('C:\Users\user\OneDrive\Documents\TUGAS ONGOING\SMS 4\PRAK SCPK\ProjectAkhir\Data', 'dataPercobaan.xlsx');
% isiTabelData = cell2mat(readcell('dataPercobaan.xlsx', 'Range', 'A2:N1001'));
isiTabelData = readcell('DataKankerParuParu.xlsx', 'Range', 'A2:N1001');

% memasukkan  data ke dalam tabelData
set(handles.tabelData,'data',isiTabelData);

% --- Executes on button press in hapusDataButton.
function hapusDataButton_Callback(hObject, eventdata, handles)
% hObject    handle to hapusDataButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menghapus data pada tabeldata
set(handles.tabelData,'data','');


% --- Executes on button press in lihatHasilButton.
function lihatHasilButton_Callback(hObject, eventdata, handles)
% hObject    handle to lihatHasilButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% mengambil value tabel data, kriteria, dan weight
data = cell2mat(readcell('DataKankerParuParu.xlsx', 'Range', 'B2:N1001'));
kriteria = cell2mat(readcell('Kriteria.xlsx', 'Range', 'A2:M2'));
weight = cell2mat(readcell('Weight.xlsx', 'Range', 'A2:M2'));


% Melakukan normalisasi
[m,n]= size(data); % inisialisasi ukuran data

% membagi bobot per kriteria dengan jumlah total seluruh bobot
weight = round(weight./sum(weight),2);

% Kali weight cost dengan -1 agar berubah jadi minus
for j = 1: n
    if kriteria(j) == 0 
        weight(j) = -1 * weight(j);
    end
end

%Melakukan perhitungan vektor(S) per baris (alternatif)
for i=1:m
    S(i)= prod(data(i,:).^weight);
end;

%tahapan ketiga, proses perangkingan
V = S/sum(S);

% variabel untuk menyimpan hasil WP dan index
[hasilWP, index] = sort(V,'descend');

% variabel untuk menyimpan hasil WP dalam bentuk cell
hasil = num2cell(hasilWP.');

% variabel untuk menyimpan index WP dalam bentuk matriks
indexHasil = index.';

% Mendapatkan data dari tabel GUI
tableData = get(handles.tabelData, 'data');

% Mengambil kolom pertama dari tabel
kolomPertama = tableData(:, 1);

% Inisialisasi array cell
namaPasien = cell(size(kolomPertama));

% Memasukkan nilai ke dalam array cell menggunakan looping
for i = 1:numel(kolomPertama)
    namaPasien{i} = kolomPertama{i};
end

% membuat cell untuk menampung hasil akhir nama pasien
hasilPasien = cell(4,1); 
[m, n] = size(indexHasil);  % Mendapatkan ukuran matriks indexHasil

% memeriksa setiap elemen matriks index
for i = 1:m
    for j = 1:n
        % memasukkan nama pasien berdasarkan index 
        % sesuai dengan indexHasil yang sudah di sorting
        hasilPasien{i} = namaPasien{indexHasil(i,j)};
    end
end

% variabel menyimpan hasil akhir
hasilAkhir = [hasil hasilPasien];

% menampilkan hasil ke tabel hasil
set(handles.tabelHasil,'data',hasilAkhir);

% --- Executes on button press in hapusHasil.
function hapusHasil_Callback(hObject, eventdata, handles)
% hObject    handle to hapusHasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menghapus data pada tabel hasil
set(handles.tabelHasil,'data','');


% --- Executes on button press in lihatKriteriaButton.
function lihatKriteriaButton_Callback(hObject, eventdata, handles)
% hObject    handle to lihatKriteriaButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% membaca data dari file excel 'Kriteria.xlsx'
isiTabelKriteria = cell2mat(readcell('Kriteria.xlsx', 'Range', 'A2:M2'));

% memasukkan  data ke dalam tabelKriteria
set(handles.tabelKriteria,'data',isiTabelKriteria);



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in lihatWeightButton.
function lihatWeightButton_Callback(hObject, eventdata, handles)
% hObject    handle to lihatWeightButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% membaca data dari file excel 'Weight.xlsx'
isiTabelWeight = cell2mat(readcell('Weight.xlsx', 'Range', 'A2:M2'));

% memasukkan  data ke dalam tabelData
set(handles.tabelWeight,'data',isiTabelWeight);



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
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

% menutup gui frame static KankerParuParu
close(KankerParuParu);

% membuka GUI Menu
MenuAwal;


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function tabelData_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabelData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in text22.
function text22_Callback(hObject, eventdata, handles)
% hObject    handle to text22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menutup gui static kanker paru paru
close(KankerParuParu);

% membuka gui menu awal
MenuAwal;
