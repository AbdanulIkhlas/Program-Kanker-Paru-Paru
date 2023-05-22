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

% Last Modified by GUIDE v2.5 21-May-2023 23:17:11

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

global data;
% Inisialisasi objek data
data = {};

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

% Membuat cell  1 x 7 untuk menyimpan nilai weight
nilaiWeight = cell(1, 7);  

% perulangan untuk mengambil editWeight
for i = 1:7
    % Nama edit text weight
    weightEditName = ['W', num2str(i), 'Edit'];  
    
    % mengambil nilai dari input editWeight dan memamsukkan ke array cell
    nilaiWeight{i} = str2double(get(handles.(weightEditName), 'string'));
end

% Cek jika ada weight yang lebih dari 5
if any(cell2mat(nilaiWeight) > 5)
    
    % membuka gui error handling
    Note = sprintf("Edit Weight Gagal, \n" + ...
        " Silahkan input weight antara 1 - 5" );
    msgbox(Note, 'Overweight', 'warn');
    
    % Update status setelah klik confirm
    set(handles.statusConfirmWeight, 'string', "Gagal Edit Weight");

    % Hapus isi tabel weight
    set(handles.tabelWeight, 'data', []);
else    
    % Masukkan weight ke dalam cell dan tabel
    set(handles.tabelWeight, 'data', nilaiWeight);

    % Update status pada statusEditWeight dan statusHapusWeight setelah klik confirm
    set(handles.statusConfirmWeight, 'string', "Sukses Edit Weight");
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
set(handles.statusConfirmWeight,'string',"Sukses Hapus Data Weight");

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


function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1 as text
%        str2double(get(hObject,'String')) returns contents of input1 as a double


% --- Executes during object creation, after setting all properties.
function input1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
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

global data;

% Memeriksa apakah data pada tabel sudah berisi atau masih kosong
if isempty(data)
    Note = sprintf("Data pada Tabel Masih Kosong, \n" + ...
        "Silahkan Input Data Terlebih Dahulu" );
    msgbox(Note, 'Data Kosong', 'warn');
else
    % Mengambil data dari tabel
    dataTabel = get(handles.tabelData, 'data');
    
    % Mengambil kolom 2 hingga 8
    kolomKriteria = dataTabel(:, 2:8);
    kolomNamaPasien = dataTabel(:, 1);

    % assign Mengkonversi seluruh elemen dalam cell array menjadi angka
    dataKriteria = cellfun(@str2double, kolomKriteria);

    % assign value kriteria, dan weight ke variabel
    kriteria = [1 0 1 1 1 1 1];
    weight = cell2mat(get(handles.tabelWeight, 'Data'));
    % Memeriksa apakah weight sudah berisi atau masih kosong
    
    if isempty(weight)
        Note = sprintf("Nilai Weight Masih Kosong, \n" + ...
            "Silahkan Confirm Weight Terlebih Dahulu" );
        msgbox(Note, 'Weight Kosong', 'warn');
    else
        % Melakukan normalisasi
        [m,n]= size(dataKriteria); % inisialisasi ukuran data

        % membagi bobot per kriteria dengan jumlah total seluruh bobot
        weight = round(weight./sum(weight),2);

        % Kali weight cost dengan -1 agar berubah jadi minus
        for j = 1: n
            if kriteria(j) == 0 
                weight(j) = -1 * weight(j);
            end
        end

        % Melakukan perhitungan vektor(S) per baris (alternatif)
        for i=1:m
            S(i)= prod(dataKriteria(i,:).^weight);
        end;

        % proses perangkingan
        V = S/sum(S);

        % variabel untuk menyimpan hasil WP dan index
        [hasilWP, index] = sort(V,'descend');

        % variabel untuk menyimpan hasil WP dalam bentuk cell
        hasil = num2cell(hasilWP.');

        % variabel untuk menyimpan index WP dalam bentuk matriks
        indexHasil = index.';

        [baris, kolom] = size(kolomNamaPasien)

        % membuat cell untuk menampung hasil akhir nama pasien
        hasilNamaPasien = cell(baris,kolom); 
        [m, n] = size(indexHasil);  % Mendapatkan ukuran matriks indexHasil

        % memeriksa setiap elemen matriks index
        for i = 1:m
            for j = 1:n
                % memasukkan nama pasien berdasarkan index 
                % sesuai dengan indexHasil yang sudah di sorting
                hasilNamaPasien{i} = kolomNamaPasien{indexHasil(i,j)};
            end
        end

        % variabel menyimpan hasil akhir
        hasilAkhir = [hasil hasilNamaPasien];

        % menampilkan data ke tabel hasil
        set(handles.tabelHasil,'Data',hasilAkhir);

        % menampilkan hasil pasien paling kronis ke GUI
        WPMax = hasil(1);
        namaPasienMax = hasilNamaPasien(1);
        set(handles.namaPasienMax,'string',namaPasienMax);
        set(handles.nilaiWPMax,'string',WPMax);
        
       % reset status confirm dan input
       set(handles.statusConfirmWeight,'string','');
       set(handles.statusSubmit,'string','');
    end
end

        



% --- Executes on button press in hapusHasilButton.
function hapusHasilButton_Callback(hObject, eventdata, handles)
% hObject    handle to hapusHasilButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% menghapus data tabel hasil
set(handles.tabelHasil,'Data','');

% reset isi nama pasien dan nilai WP prioritas
set(handles.namaPasienMax,'string','');
set(handles.nilaiWPMax,'string','');



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

global data;

% membuat cell untuk menampung data yang baru di input
newData = cell(1,8);

% mengambil value kriteria input1
for i = 1 : 8
    % menggabung string untuk inputKriteriaPasien
    inputData = ['input',num2str(i)];

    % mengambil input kriteria dan memasukkan ke cell array
    newData{i} = get(handles.(inputData), 'string');
end

% Memeriksa apakah data sudah berisi atau masih kosong
if isempty(data)
    % Jika kosong, inisialisasikan data dengan newData
    data = newData; 
else
    % Jika sudah berisi, tambahkan newData ke dalam data
    data = [data; newData]; 
    
end

% Menampilkan data ke tabel
set(handles.tabelData, 'data', data);

% menampilkan status berhasil pada status submit
set(handles.statusSubmit, 'string', 'Berhasil Menambahkan Data');

% reset value kriteria input1
for i = 1 : 8
    % menggabung string untuk inputKriteriaPasien
    inputData = ['input',num2str(i)];

    % mengambil input kriteria dan memasukkan ke cell array
    newData{i} = set(handles.(inputData), 'string','');
end








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


% --- Executes on button press in hapusData.
function hapusData_Callback(hObject, eventdata, handles)
% hObject    handle to hapusData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global data

data = {};
% menghapus data tabel
set(handles.tabelData,'Data','');

% menampilkan status berhasil pada status submit
set(handles.statusSubmit, 'string', 'Berhasil Menghapus Data');



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input3_Callback(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input3 as text
%        str2double(get(hObject,'String')) returns contents of input3 as a double


% --- Executes during object creation, after setting all properties.
function input3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input4_Callback(hObject, eventdata, handles)
% hObject    handle to input4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input4 as text
%        str2double(get(hObject,'String')) returns contents of input4 as a double


% --- Executes during object creation, after setting all properties.
function input4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input5_Callback(hObject, eventdata, handles)
% hObject    handle to input5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input5 as text
%        str2double(get(hObject,'String')) returns contents of input5 as a double


% --- Executes during object creation, after setting all properties.
function input5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input6_Callback(hObject, eventdata, handles)
% hObject    handle to input6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input6 as text
%        str2double(get(hObject,'String')) returns contents of input6 as a double


% --- Executes during object creation, after setting all properties.
function input6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input7_Callback(hObject, eventdata, handles)
% hObject    handle to input7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input7 as text
%        str2double(get(hObject,'String')) returns contents of input7 as a double


% --- Executes during object creation, after setting all properties.
function input7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input8_Callback(hObject, eventdata, handles)
% hObject    handle to input8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input8 as text
%        str2double(get(hObject,'String')) returns contents of input8 as a double


% --- Executes during object creation, after setting all properties.
function input8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in help1.
function help1_Callback(hObject, eventdata, handles)
% hObject    handle to help1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Title1 = " Petunjuk Criteria " ;
Note1 = sprintf(" Cost = 0 \n" + ...
        " Benefit = 1 \n" + ...
        " \n"+ ...
        " C1 = Umur \n" + ...
        " C2 = Jenis Kelamin [ 1 : L / 2 : P ] \n" + ...
        " C3 = Konsumsi \n" + ...
        " C4 = Alergi \n" + ...
        " C5 = Merokok \n" + ...
        " C6 = Batuk \n" + ...
        " C7 = Sesak Nafas\n" );

msgbox(Note1, Title1)


% --- Executes on key press with focus on input1 and none of its controls.
function input1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over input1.
function input1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
