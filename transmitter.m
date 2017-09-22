function varargout = transmitter(varargin)
% TRANSMITTER MATLAB code for transmitter.fig
%      TRANSMITTER, by itself, creates a new TRANSMITTER or raises the existing
%      singleton*.
%
%      H = TRANSMITTER returns the handle to a new TRANSMITTER or the handle to
%      the existing singleton*.
%
%      TRANSMITTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRANSMITTER.M with the given input arguments.
%
%      TRANSMITTER('Property','Value',...) creates a new TRANSMITTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before transmitter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to transmitter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help transmitter

% Last Modified by GUIDE v2.5 24-Aug-2016 17:59:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @transmitter_OpeningFcn, ...
                   'gui_OutputFcn',  @transmitter_OutputFcn, ...
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


% --- Executes just before transmitter is made visible.
function transmitter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to transmitter (see VARARGIN)

% Choose default command line output for transmitter
handles.output = hObject;
global ser
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes transmitter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = transmitter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function morse_t_Callback(hObject, eventdata, handles)
% hObject    handle to morse_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of morse_t as text
%        str2double(get(hObject,'String')) returns contents of morse_t as a double


% --- Executes during object creation, after setting all properties.
function morse_t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to morse_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_t_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha_t as text
%        str2double(get(hObject,'String')) returns contents of alpha_t as a double


% --- Executes during object creation, after setting all properties.
function alpha_t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in morse_ent.
function morse_ent_Callback(hObject, eventdata, handles)
% hObject    handle to morse_ent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ser
str=get(handles.morse_t,'string');
ma=(strcmp(str,'.-'));
if(ma==1)
    set(handles.alpha_t,'string','A');
    fprintf(ser,'%c','A');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\A.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-...'));
if(ma==1)
    set(handles.alpha_t,'string','B');
    fprintf(ser,'%c','B');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\B.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-.-.'));
if(ma==1)
    set(handles.alpha_t,'string','C');
    fprintf(ser,'%c','C');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\C.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-..'));
if(ma==1)
    set(handles.alpha_t,'string','D');
    fprintf(ser,'%c','D');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\D.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.'));
if(ma==1)
    set(handles.alpha_t,'string','E');
    fprintf(ser,'%c','E');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\E.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'..-.'));
if(ma==1)
    set(handles.alpha_t,'string','F');
    fprintf(ser,'%c','F');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\F.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--.'));
if(ma==1)
    set(handles.alpha_t,'string','G');
    fprintf(ser,'%c','G');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\G.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'....'));
if(ma==1)
    set(handles.alpha_t,'string','H');
    fprintf(ser,'%c','H');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\H.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'..'));
if(ma==1)
    set(handles.alpha_t,'string','I');
    fprintf(ser,'%c','I');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\I.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.---'));
if(ma==1)
    set(handles.alpha_t,'string','J');
    fprintf(ser,'%c','J');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\J.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-.-'));
if(ma==1)
    set(handles.alpha_t,'string','K');
    fprintf(ser,'%c','K');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\K.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.-..'));
if(ma==1)
    set(handles.alpha_t,'string','L');
    fprintf(ser,'%c','L');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\L.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--'));
if(ma==1)
    set(handles.alpha_t,'string','M');
    fprintf(ser,'%c','M');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\M.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-.'));
if(ma==1)
    set(handles.alpha_t,'string','N');
    fprintf(ser,'%c','N');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\N.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'---'));
if(ma==1)
    set(handles.alpha_t,'string','O');
    fprintf(ser,'%c','O');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\O.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.--.'));
if(ma==1)
    set(handles.alpha_t,'string','P');
    fprintf(ser,'%c','P');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\P.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--.-'));
if(ma==1)
    set(handles.alpha_t,'string','Q');
    fprintf(ser,'%c','Q');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Q.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.-.'));
if(ma==1)
    set(handles.alpha_t,'string','R');
    fprintf(ser,'%c','R');
    figure(20);
    imshow('E:\\aidifico\\PROJECT\\letters\\R.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'...'));
if(ma==1)
    set(handles.alpha_t,'string','S');
    fprintf(ser,'%c','S');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\S.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-'));
if(ma==1)
    set(handles.alpha_t,'string','T');
    fprintf(ser,'%c','T');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\T.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'..-'));
if(ma==1)
    set(handles.alpha_t,'string','U');
    fprintf(ser,'%c','U');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\U.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'...-'));
if(ma==1)
    set(handles.alpha_t,'string','V');
    fprintf(ser,'%c','V');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\V.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.--'));
if(ma==1)
    set(handles.alpha_t,'string','W');
    fprintf(ser,'%c','W');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\W.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-..-'));
if(ma==1)
    set(handles.alpha_t,'string','X');
    fprintf(ser,'%c','X');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\X.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-.--'));
if(ma==1)
    set(handles.alpha_t,'string','Y');
    fprintf(ser,'%c','Y');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Y.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--..'));
if(ma==1)
    set(handles.alpha_t,'string','Z');
    fprintf(ser,'%c','Z');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Z.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-----'));
if(ma==1)
    set(handles.alpha_t,'string','0');
    fprintf(ser,'%c','0');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\0.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.----'));
if(ma==1)
    set(handles.alpha_t,'string','1');
    fprintf(ser,'%c','1');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\1.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'..---'));
if(ma==1)
    set(handles.alpha_t,'string','2');
    fprintf(ser,'%c','2');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\2.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'...--'));
if(ma==1)
    set(handles.alpha_t,'string','3');
    fprintf(ser,'%c','3');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\3.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'....-'));
if(ma==1)
    set(handles.alpha_t,'string','4');
    fprintf(ser,'%c','4');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\4.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.....'));
if(ma==1)
    set(handles.alpha_t,'string','5');
    fprintf(ser,'%c','5');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\5.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-....'));
if(ma==1)
    set(handles.alpha_t,'string','6');
    fprintf(ser,'%c','6');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\6.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--...'));
if(ma==1)
    set(handles.alpha_t,'string','7');
    fprintf(ser,'%c','7');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\7.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'---..'));
if(ma==1)
    set(handles.alpha_t,'string','8');
    fprintf(ser,'%c','8');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\8.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'----.'));
if(ma==1)
    set(handles.alpha_t,'string','9');
    fprintf(ser,'%c','9');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\9.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.-.-.-'));
if(ma==1)
    set(handles.alpha_t,'string','.');
    fprintf(ser,'%c','.');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\dot.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'--..--'));
if(ma==1)
    set(handles.alpha_t,'string',',');
    fprintf(ser,'%c',',');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\comma.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'..--..'));
if(ma==1)
    set(handles.alpha_t,'string','?');
    fprintf(ser,'%c','?');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\qm.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'-.-.--'));
if(ma==1)
    set(handles.alpha_t,'string','!');
    fprintf(ser,'%c','!');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\em.jpg')
    pause(2);
    close
end

% --- Executes on button press in alpha_ent.
function alpha_ent_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_ent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ser
str=get(handles.alpha_t,'string');
ma=(strcmpi(str,'A'));
if(ma==1)
    set(handles.morse_t,'string','.-');
    fprintf(ser,'%c','A');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\A.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'B'));
if(ma==1)
    set(handles.morse_t,'string','-...');
    fprintf(ser,'%c','B');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\B.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'C'));
if(ma==1)
    set(handles.morse_t,'string','-.-.');
    fprintf(ser,'%c','C');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\C.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'D'));
if(ma==1)
    set(handles.morse_t,'string','-..');
    fprintf(ser,'%c','D');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\D.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'E'));
if(ma==1)
    set(handles.morse_t,'string','.');
    fprintf(ser,'%c','E');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\E.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'F'));
if(ma==1)
    set(handles.morse_t,'string','..-.');
    fprintf(ser,'%c','F');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\F.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'G'));
if(ma==1)
    set(handles.morse_t,'string','--.');
    fprintf(ser,'%c','G');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\G.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'H'));
if(ma==1)
    set(handles.morse_t,'string','....');
    fprintf(ser,'%c','H');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\H.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'I'));
if(ma==1)
    set(handles.morse_t,'string','..');
    fprintf(ser,'%c','I');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\I.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'J'));
if(ma==1)
    set(handles.morse_t,'string','.---');
    fprintf(ser,'%c','J');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\J.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'K'));
if(ma==1)
    set(handles.morse_t,'string','-.-');
    fprintf(ser,'%c','K');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\K.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'L'));
if(ma==1)
    set(handles.morse_t,'string','.-..');
    fprintf(ser,'%c','L');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\L.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'M'));
if(ma==1)
    set(handles.morse_t,'string','--');
    fprintf(ser,'%c','M');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\M.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'N'));
if(ma==1)
    set(handles.morse_t,'string','-.');
    fprintf(ser,'%c','N');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\N.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'O'));
if(ma==1)
    set(handles.morse_t,'string','---');
    fprintf(ser,'%c','O');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\O.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'P'));
if(ma==1)
    set(handles.morse_t,'string','.--.');
    fprintf(ser,'%c','P');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\P.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'Q'));
if(ma==1)
    set(handles.morse_t,'string','--.-');
    fprintf(ser,'%c','Q');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Q.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'R'));
if(ma==1)
    set(handles.morse_t,'string','.-.');
    fprintf(ser,'%c','R');
    figure(20);
    imshow('E:\\aidifico\\PROJECT\\letters\\R.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'S'));
if(ma==1)
    set(handles.morse_t,'string','...');
    fprintf(ser,'%c','S');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\S.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'T'));
if(ma==1)
    set(handles.morse_t,'string','-');
    fprintf(ser,'%c','T');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\T.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'U'));
if(ma==1)
    set(handles.morse_t,'string','..-');
    fprintf(ser,'%c','U');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\U.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'V'));
if(ma==1)
    set(handles.morse_t,'string','...-');
    fprintf(ser,'%c','V');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\V.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'W'));
if(ma==1)
    set(handles.morse_t,'string','.--');
    fprintf(ser,'%c','W');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\W.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'X'));
if(ma==1)
    set(handles.morse_t,'string','-..-');
    fprintf(ser,'%c','X');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\X.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'Y'));
if(ma==1)
    set(handles.morse_t,'string','-.--');
    fprintf(ser,'%c','Y');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Y.jpg')
    pause(2);
    close
end
ma=(strcmpi(str,'Z'));
if(ma==1)
    set(handles.morse_t,'string','--..');
    fprintf(ser,'%c','Z');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\Z.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'O'));
if(ma==1)
    set(handles.morse_t,'string','-----');
    fprintf(ser,'%c','0');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\0.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'1'));
if(ma==1)
    set(handles.morse_t,'string','.----');
    fprintf(ser,'%c','1');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\1.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'2'));
if(ma==1)
    set(handles.morse_t,'string','..---');
    fprintf(ser,'%c','2');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\2.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'3'));
if(ma==1)
    set(handles.morse_t,'string','...--');
    fprintf(ser,'%c','3');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\3.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'4'));
if(ma==1)
    set(handles.morse_t,'string','....-');
    fprintf(ser,'%c','4');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\4.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'5'));
if(ma==1)
    set(handles.morse_t,'string','.....');
    fprintf(ser,'%c','5');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\5.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'6'));
if(ma==1)
    set(handles.morse_t,'string','-....');
    fprintf(ser,'%c','6');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\6.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'7'));
if(ma==1)
    set(handles.morse_t,'string','--...');
    fprintf(ser,'%c','7');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\7.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'8'));
if(ma==1)
    set(handles.morse_t,'string','---..');
    fprintf(ser,'%c','8');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\8.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'9'));
if(ma==1)
    set(handles.morse_t,'string','----.');
    fprintf(ser,'%c','9');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\9.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'.'));
if(ma==1)
    set(handles.morse_t,'string','.-.-.-');
    fprintf(ser,'%c','.');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\dot.jpg')
    pause(2);
    close
end
ma=(strcmp(str,','));
if(ma==1)
    set(handles.morse_t,'string','--..--');
    fprintf(ser,'%c',',');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\comma.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'?'));
if(ma==1)
    set(handles.morse_t,'string','..--..');
    fprintf(ser,'%c',',');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\qm.jpg')
    pause(2);
    close
end
ma=(strcmp(str,'!'));
if(ma==1)
    set(handles.morse_t,'string','-.-.--');
    fprintf(ser,'%c','!');
    figure(1);
    imshow('E:\\aidifico\\PROJECT\\letters\\em.jpg')
    pause(2);
    close
end


% --- Executes on button press in reci.
function reci_Callback(hObject, eventdata, handles)
% hObject    handle to reci (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
homescreen;
fprintf(ser,'%c','^');
