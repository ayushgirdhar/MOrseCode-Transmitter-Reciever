function varargout = reciever(varargin)
% RECIEVER MATLAB code for reciever.fig
%      RECIEVER, by itself, creates a new RECIEVER or raises the existing
%      singleton*.
%
%      H = RECIEVER returns the handle to a new RECIEVER or the handle to
%      the existing singleton*.
%
%      RECIEVER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RECIEVER.M with the given input arguments.
%
%      RECIEVER('Property','Value',...) creates a new RECIEVER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reciever_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reciever_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reciever

% Last Modified by GUIDE v2.5 24-Aug-2016 17:45:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @reciever_OpeningFcn, ...
                   'gui_OutputFcn',  @reciever_OutputFcn, ...
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


% --- Executes just before reciever is made visible.
function reciever_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reciever (see VARARGIN)

% Choose default command line output for reciever
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reciever wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global ser
ma=fscanf(ser)
if(ma=='|')
    str=[];
    while(fscanf(ser)~='#')
        ma=fscanf(ser)
        strcat(str,ma)
        set(handles.morse_r,'string',str);
    end
    ma=(strcmp(str,'.-'));
    if(ma==1)
        set(handles.morse_r,'string','.-');
        set(handles.char_r,'string','A');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\A.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-...'));
    if(ma==1)
        set(handles.morse_r,'string','-...');
        set(handles.char_r,'string','B');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\B.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-.-.'));
    if(ma==1)
        set(handles.morse_r,'string','-.-.');
        set(handles.char_r,'string','C');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\C.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-..'));
    if(ma==1)
        set(handles.morse_r,'string','-..');
        set(handles.char_r,'string','D');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\D.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.'));
    if(ma==1)
        set(handles.morse_r,'string','.');
        set(handles.char_r,'string','E');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\E.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'..-.'));
    if(ma==1)
        set(handles.morse_r,'string','..-.');
        set(handles.char_r,'string','F');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\F.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'--.'));
    if(ma==1)
        set(handles.morse_r,'string','--.');
        set(handles.char_r,'string','G');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\G.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'....'));
    if(ma==1)
        set(handles.morse_r,'string','....');
        set(handles.char_r,'string','H');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\H.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'..'));
    if(ma==1)
        set(handles.morse_r,'string','..');
        set(handles.char_r,'string','I');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\I.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.---'));
    if(ma==1)
        set(handles.morse_r,'string','.---');
        set(handles.char_r,'string','J');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\J.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-.-'));
    if(ma==1)
        set(handles.morse_r,'string','-.-');
        set(handles.char_r,'string','K');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\K.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.-..'));
    if(ma==1)
        set(handles.morse_r,'string','.-..');
        set(handles.char_r,'string','L');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\L.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'--'));
    if(ma==1)
        set(handles.morse_r,'string','--');
        set(handles.char_r,'string','M');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\M.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-.'));
    if(ma==1)
        set(handles.morse_r,'string','-.');
        set(handles.char_r,'string','N');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\N.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'---'));
    if(ma==1)
        set(handles.morse_r,'string','---');
        set(handles.char_r,'string','O');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\O.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.--.'));
    if(ma==1)
        set(handles.morse_r,'string','.--.');
        set(handles.char_r,'string','P');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\P.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'--.-'));
    if(ma==1)
        set(handles.morse_r,'string','--.-');
        set(handles.char_r,'string','Q');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\Q.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.-.'));
    if(ma==1)
        set(handles.morse_r,'string','.-.');
        set(handles.char_r,'string','R');
        figure(20);
        imshow('E:\\aidifico\\PROJECT\\letters\\R.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'...'));
    if(ma==1)
        set(handles.morse_r,'string','...');
        set(handles.char_r,'string','S');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\S.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-'));
    if(ma==1)
        set(handles.morse_r,'string','-');
        set(handles.char_r,'string','T');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\T.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'..-'));
    if(ma==1)
        set(handles.morse_r,'string','..-');
        set(handles.char_r,'string','U');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\U.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'...-'));
    if(ma==1)
        set(handles.morse_r,'string','...-');
        set(handles.char_r,'string','V');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\V.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'.--'));
    if(ma==1)
        set(handles.morse_r,'string','.--');
        set(handles.char_r,'string','W');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\W.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-..-'));
    if(ma==1)
        set(handles.morse_r,'string','-..-');
        set(handles.char_r,'string','X');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\X.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'-.--'));
    if(ma==1)
        set(handles.morse_r,'string','-.--');
        set(handles.char_r,'string','Y');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\Y.jpg')
        pause(2);
        close
    end
    ma=(strcmpi(str,'--..'));
    if(ma==1)
        set(handles.morse_r,'string','--..');
        set(handles.char_r,'string','Z');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\Z.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'-----'));
    if(ma==1)
        set(handles.morse_r,'string','-----');
        set(handles.char_r,'string','0');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\0.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'.----'));
    if(ma==1)
        set(handles.morse_r,'string','.----');
        set(handles.char_r,'string','1');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\1.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'..---'));
    if(ma==1)
        set(handles.morse_r,'string','..---');
        set(handles.char_r,'string','2');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\2.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'...--'));
    if(ma==1)
        set(handles.morse_r,'string','...--');
        set(handles.char_r,'string','3');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\3.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'....-'));
    if(ma==1)
        set(handles.morse_r,'string','....-');
        set(handles.char_r,'string','4');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\4.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'.....'));
    if(ma==1)
        set(handles.morse_r,'string','.....');
        set(handles.char_r,'string','5');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\5.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'-....'));
    if(ma==1)
        set(handles.morse_r,'string','-....');
        set(handles.char_r,'string','6');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\6.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'--...'));
    if(ma==1)
        set(handles.morse_r,'string','--...');
        set(handles.char_r,'string','7');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\7.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'---..'));
    if(ma==1)
        set(handles.morse_r,'string','---..');
        set(handles.char_r,'string','8');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\8.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'----.'));
    if(ma==1)
        set(handles.morse_r,'string','----.');
        set(handles.char_r,'string','9');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\9.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'.-.-.-'));
    if(ma==1)
        set(handles.morse_r,'string','.-.-.-');
        set(handles.char_r,'string','.');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\dot.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'--..--'));
    if(ma==1)
        set(handles.morse_r,'string','--..--');
        set(handles.char_r,'string',',');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\comma.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'..--..'));
    if(ma==1)
        set(handles.morse_r,'string','..--..');
        set(handles.char_r,'string','?');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\qm.jpg')
        pause(2);
        close
    end
    ma=(strcmp(str,'-.-.--'));
    if(ma==1)
        set(handles.morse_r,'string','-.-.--');
        set(handles.char_r,'string','!');
        figure(1);
        imshow('E:\\aidifico\\PROJECT\\letters\\em.jpg')
        pause(2);
        close
    end
      set(handles.morse_r,'string','-.-.--');
      set(handles.char_r,'string','!');
    
end
if(ma=='^')
    homescreen;
end


% --- Outputs from this function are returned to the command line.
function varargout = reciever_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

