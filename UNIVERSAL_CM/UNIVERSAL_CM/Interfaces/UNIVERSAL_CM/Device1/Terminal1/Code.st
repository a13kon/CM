
(*				BEGIN GLOBAL VARIABLE IMPORT CODE				*)

VAR_GLOBAL
    QUICK_MENU_ITEMS_NO     : INT:=3;      // Set here the number of voices for "Quick Menu"
    DTRetMain               : INT;   // Support variable for Main Mask return 
    DTQM                    : INT;   // Support variable for quick menu icon blink
    IncrTmp                 : INT ;  // Support variable for password management
    PwdIn                   : UINT;  // Input password
    PwdRes                  : INT ;  // Password result
    EnLogOut                : BOOL;  // Enable for Logout mask
    EnPwdChgU               : BOOL;  // Enable for User password change
    EnPwdChgS               : BOOL;  // Enable for Service password change
    EnPwdChgM               : BOOL;  // Enable for Manufacturer password change
    PwdTyp                  : INT ;  // Password type in login menu(1: User; 2: Service; 3: Manufacturer)
    PwdTypMenu              : INT ;  // Copy of PwdType that shows in the menu the user access
    CntDwnPwdTypMenu        : INT ; // Countdown in second to show the user access in the menu (-1 to always on)
    IdxImgQM                : INT:=1;// Icon position management of Quick Menu
    IdxQM                   : INT:=1;// Index of quick menu
    ImpExpSel               : BOOL; // Import/Export selection
    EnImpExpTmp             : INT ; // Temporary enable of Import/Export parameters functions
    LangTime                : INT ; // Language mask time
    LogoTime                : INT ; // Logo mask time
    EnLangChg               : BOOL; // Language countdown enable
    Date1, Date2, Date3     : UINT; // Mask date management    
    EnStartup               : BOOL; // Enable application startup 
    enEndDef                : BOOL; // Enable EndDefault mask
    enConfigMask            : BOOL; // Enable Config mask
    enLogo                  : BOOL; // Enable Logo mask   
    BoardTempMsk            : REAL; // Internal board temperature 
    EnAlrmExpTmp            : INT;  // Temporary enable of Export alarms functions
    En_WipeRetain           : BOOL; // Enable wipe retain memory
    En_WipeNVRAM            : BOOL; // Enable wipe NVRAM memory
    En_WipeAll              : BOOL; // Enable wipe retain+NVRAM memory
    TimeZoneTmp             : UINT; // Temp variable for time zone mng
    TimeZoneTmpRu           : UINT; // Подмена TimeZoneTmp. Для списка городов РФ.
    SetTimeZoneTmp          : INT;  // Temp variable for time zone mng
    FirstCycleDone          : BOOL; // UoM initialization
    LastValidRecord                                 : DINT;  // Index of the last valid record
    LastActAlrm                                     : DINT;  // Index of the last active alarm
    infoLogOk, AlrmLogInfoErr                       : DINT;  // result of function GetAlarmLogInfo
	AlrmIdx, AlrmCode                               : DINT;  // Used on GetAlarmInfo
    AlrmLogsIdx, AlrmLogCode, AlrmLogsTot           : DINT;  // Used on GetAlarmLogInfo
    AlrmLogEventType                                : USINT; // Type of alarm event
    AlrmStoredVarReal1, AlrmStoredVarReal2          : REAL;  // Alarm variable stored  
    EnStoredVar1_REAL, EnStoredVar2_REAL            : BOOL;  // Stored alarm variable enable
    N_Alrms,N_Alrms_Prev                            : DINT;  // Current and previous alarm number
    KeyAlarmAutorepeatActive                        : BOOL;  // Single alarm reset management
    ClrAutoResCounters                              : BOOL;  // Enable for ClrAutoResCounters statement
    AlrmLogsIdxTemp,AlrmLogCodeTemp,AlrmLogTimeTemp : DINT;  // Temporary variables for alarm information
    AlrmLogEventTypeTemp                            : USINT; // Temporary variables for "AlrmLogInfoErr" statement
    AlrmLogDelete                                   : BOOL;  // Alarm log delete enable 
    EnCheckAlarm                                    : BOOL;  // Enable check alarm function 
    En_CheckAlrm_Reset                              : BOOL;  // Enable the alarm check after a Global alarm Reset
    ShowTemp                                        : BOOL;  // Show Board temperature if the function is implemented on the target (only c.pCO)
    isActiveAlarmLoop                               : BOOL;  // Флаг, находимся ли мы в списке активных аварий
    isNoAlarmMask                                   : BOOL;  // Флаг, находимся ли мы в маске Нет аварий
    isPasswordRequest                               : BOOL;  // Флаг, запрос пароля            
    IdxMskTmp1, BarPosTmp1, CurrItemNoTmp1          : INT; // Temporary variables for first Level menu(save the last position of the first Level menu)
    IdxImg1Tmp1, IdxImg2Tmp1, IdxImg3Tmp1           : INT; // Temporary variables for first Level menu(save the last position of the first Level menu)
    IdxMskTmp2, BarPosTmp2, CurrItemNoTmp2          : INT; // Temporary variables for second Level menu(save the last position of the second Level menu)
    IdxImg1Tmp2, IdxImg2Tmp2, IdxImg3Tmp2           : INT; // Temporary variables for second Level menu(save the last position of the second Level menu)
    CurPosition                                     : USINT; // текущая позиция курсора
    NextRow, NextColumn                             : USINT; // следующая позиция курсора
    CurShow                                         : ARRAY [1..30] OF BOOL; // булевы переменные для демонстрации позиции курсора
    ModePRG                                         : BOOL; // StatePRG = STATE_PRG_ON
    popup_StatePRG                                  : USINT; // сохраненное значение StatePRG
    NotModePRG                                      : BOOL; // инвертированый ModePRG
    DTPopUp                                         : USINT; // таймер для всплывающих сообщений
    En_PopUpTimer                                   : BOOL; // запуск обратного отсчета для всплывающих окон
    Show_DTPopUp                                    : BOOL; // разрешение на отображение обратного отсчета всплывающего окна
    PopUpKeyDelay                                   : USINT; // задержка определения нажатия клавиши для всплывающих окон
    ReturnToPrevMask                                : BOOL; // Флаг возвращения с всплывающей маски на предыдущую маску, а не Restore
    PIC_Fan                                         : INT;  // переменная состояний вентилятора на гл.экране
    GotoMaskModeSeqOnNextCycle                      : BOOL; // переходит в маску ModeSeq на следующий цикл
    Num_ResetComp                                   :  INT; // номер компрессора для сброса статистики 
    temp_Role                                       : USINT;// Временная переменная для определения роли устройства
    temp_Config_Reset                               : BOOL; // Временная переменная для сброса конфигурации
    temp_HeatType                                   : USINT;// Временная переменная для HeatType
    temp_En_Schedule                                : BOOL; // Временная переменная для En_Schedule
    Temp_MB_port                                    : USINT;// Временная переменная для MB_port(0-не задан, 1-Ethernet, 2-BMS card, 3-BMS)
    En_MB_Ethernet                                  : BOOL; // Флаг выбранного порта: ethernet 
    En_MB_BMS_Card                                  : BOOL; // Флаг выбранного порта: BMS_Card 
    En_MB_BMS2                                      : BOOL; // Флаг выбранного порта: BMS2 
    En_MB_BMS                                       : BOOL; // Выбран BMS_Card или BMS
    Temp_MB_Address                                 : USINT;// Временная переменная для MB_Address
    Temp_MB_Baudrate                                : UDINT;// Временная переменная для Baudrate
    Temp_MB_StopBits                                : USINT;// Временная переменная для Stopbits
    Temp_MB_Parity                                  : USINT;// Временная переменная для Parity
    Reboot_Reason                                   : USINT;// Причина перезагрузки (1-сброс конфигурации, 2-изменение типа электронагрева, 3-изменение роли устройства, 4-изменение настроек ModBus)
    old_FWMismatch                                  : BOOL; // Предыдущее значение FWMismatch 
    temp_Wait                                       : BOOL; // заглушка на 1 цикл
    checkZeroColumn                                 : BOOL; // проверка курсора на 0 столбец
    langWasChanged                                  : BOOL; // Флаг применения языка при загрузке
    goToConfig                                      : BOOL; // Флаг перехода к конфигурации     
    upArrow                                         : BOOL; // отображение стрелки ВВЕРХ  
    downArrow                                       : BOOL; // отображение стрелки ВНИЗ
    autoHideArrowsOff                               : BOOL; // отключение автосброса отображения стрелок
    PopUp_Message                                   : USINT;// номер сообщения для всплывающего окна    
    PopUp_Question                                  : USINT;// номер вопроса для всплывающего окна    
    SetIdxMskTmp, SetBarPosTmp, SetCurrItemNoTmp    : INT; // Temporary variables for Settings menu(save the last position of the settings menu)
    SetIdxImg1Tmp, SetIdxImg2Tmp, SetIdxImg3Tmp     : INT; // Temporary variables for Settings menu(save the last position of the settings menu)
    Show_DevRole                                    : BOOL; // Разрешение отображения роли устройства на Main
    goto_RestoreParam                               : BOOL; // флаг перехода на маску Restore_Param
    POPUP_TIME                                      : USINT:=5; // время для всплывающих окон   
    SHORT_POPUP_TIME                                : USINT:=1; // время для коротких всплывающих окон 
    STATE_PRG_OFF                                   : USINT:=0; // режим редактирования НЕ активен 
    STATE_PRG_READY                                 : USINT:=1; // режим редактирования возможен, но выключен
    STATE_PRG_ALWAYS_ON                             : USINT:=2; // режим редактирования активен и требуется GotoCursor 
    STATE_PRG_ON                                    : USINT:=3; // режим редактирования активен с возвратом на 1 через PRG
    hide_PassDigit1                                 : BOOL; // скрывает за звездочкой 1-й символ пароля
    hide_PassDigit2                                 : BOOL; // скрывает за звездочкой 2-й символ пароля
    hide_PassDigit3                                 : BOOL; // скрывает за звездочкой 3-й символ пароля    
    show_WorkPriority                               : BOOL;// возможность выбора приоритет (режим) работы
    temp_ModeSEQ                                    : USINT;
    MakeChoice                                      : BOOL;// визуализация выбора значения 
    temp_SummerMode                                 : BOOL;     
    PreConfigCheck                                  : BOOL;  
    CurColumn                                       : USINT; // Текущий столбец
    ConfigStartLevel                                : USINT; // Уровень с которого начинается конфигуратор
    RC_OnOff                                        : BOOL;  
    BMS_OnOff                                       : BOOL;
    Schedule_OnOff                                  : BOOL;
    STATE_OnOff                                     : BOOL;
END_VAR

(*				END GLOBAL VARIABLE IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

// Terminal1 code

FUNCTION TIMED_LOOP
    ButtonsSupport();
    PopUpSupport();
    NextCycleAction();
    IF NOT(BootEnd) THEN 
        Boot();              // исполнять только при загрузке
    ELSE
        CheckAlarm(); 
        BlinkQuickMenu();       // мигает быстрое меню
        RetMainMsk();           // возврат на главный экран по истечении таймера
        CheckAlrm_Reset();      
    END_IF;
END_FUNCTION



FUNCTION Boot   
   
    // отображение маски EndDefault после стирания retain
    IF (RetainIsClear) THEN 
        IF NOT(enEndDef) THEN // выполняем 1 раз
            enEndDef:= TRUE;        
            SetLedStatus(7,2);
            Gotomask(EndDefault);
        END_IF;
    ELSIF (enLogo = FALSE) THEN                                            
        enLogo := TRUE;
        SetLedStatus(7,0);        
        Gotomask(LogoMask);
        LogoTime:= 5;            
    ELSIF (LogoTime > 0) THEN    
        LogoTime:= LogoTime - 1;
    ELSE
        BootEnd:= TRUE; 
        GotoMain();
    END_IF;
END_FUNCTION

FUNCTION GlobalEsc

    ReStoreMaskID(); //Восстанавливаем предыдущий MaskID
    CASE Display.MaskID OF 
        0,1: //Гл.экран
            GotoMain(); 
        3: //Осн.меню
            StatePRG:= STATE_PRG_READY;
            LoadMaskID(3, 0); //DF_MID_MMENU
            LoadMenuPos();
    END_CASE;
    resetConditions();
        
    ModePRG:=       FALSE; // !!!!
    NotModePRG:=    TRUE; // !!! 
END_FUNCTION

FUNCTION resetConditions
    IF (StatePRG = 4) THEN 
        StatePRG:= STATE_PRG_READY;
    ELSE
        StatePRG:= STATE_PRG_OFF;        
    END_IF;

    isActiveAlarmLoop:= FALSE;
    isNoAlarmMask:= FALSE;

    CurRow_modePRG:= 0;   

END_FUNCTION

FUNCTION GotoMain      
    Display.MaskID:= 1; 
    GotoLoop(MAIN);
END_FUNCTION

FUNCTION CleanPwd
        hide_PassDigit1:= FALSE;
        hide_PassDigit2:= FALSE;
        hide_PassDigit3:= FALSE;
END_FUNCTION

FUNCTION ButtonsSupport
    // управление подсветкой кнопки PRG
    IF (StatePRG = STATE_PRG_READY) THEN 
        SetLedStatus(7,2); // моргает
    ELSIF (StatePRG = STATE_PRG_ALWAYS_ON)OR(StatePRG = STATE_PRG_ON) THEN 
        SetLedStatus(7,1); // горит
    ELSE 
        SetLedStatus(7,0); // не горит
    END_IF;
    
    IF (StatePRG = STATE_PRG_ALWAYS_ON)OR(StatePRG = STATE_PRG_ON) THEN  (*!!! 090718 провверить не ломает ли где StatePRG = STATE_PRG_ALWAYS_ON логику!*)
        ModePRG:= TRUE;
    ELSE 
        ModePRG:= FALSE;
    END_IF;
    NotModePRG:= NOT(ModePRG);
END_FUNCTION

FUNCTION gotoAlarmLog        
                                
    AlrmLogsTot:= GetAlarmLogsCount();
    // Show last alarm log                            
    IF AlrmLogsTot > 0 THEN                                       
        AlrmLogsIdx:=1;
        infoLogOk:=GetAlarmLogInfo(AlrmLogsIdx, AlrmLogCode,  AlrmLogEventType, Alarms.AlrmLogTime);// CheckStoredVar_Alrm была здесь перед AlrmLogEventType. ОТКУДА ВЗЯЛАСЬ????
        CheckStoredVar_Log(); 
    ELSE
        AlrmLogsIdx:=0;
        infoLogOk:=-1;
    END_IF;

    IF infoLogOk = 0 THEN                                         
        LastValidRecord:= AlrmLogsIdx;
        GotoLoop(ALRMLOGS);
    ELSE
        GotoMask(Alrms_NoLog);                                   
    END_IF;

END_FUNCTION

FUNCTION CheckStoredVar_Log                                                   // This function let you sample the sampled variables on Alarm table
    
    // --- Logged alarms ---// 
    IF GetAlarmLogStoredVar(AlrmLogsIdx, 1, AlrmStoredVarReal1) <> 0 THEN 
        EnStoredVar1_REAL := FALSE;                                           // If is present, enable the fields
    ELSE
        EnStoredVar1_REAL := TRUE;                                            // else, don't enable the fields
    END_IF;
    
    IF GetAlarmLogStoredVar(AlrmLogsIdx, 2, AlrmStoredVarReal2) <> 0 THEN
        EnStoredVar2_REAL := FALSE;     
    ELSE
        EnStoredVar2_REAL := TRUE; 
    END_IF;
    
END_FUNCTION



FUNCTION ShowLangMskTime
    // Language countdown of 30 seconds 
    IF (__SYSVA_KEY_PRESSED = 1) THEN
        LangTime:=              30;
        __SYSVA_KEY_PRESSED:=   0;
    END_IF;   
    IF (LangTime > 0) THEN
         LangTime := LangTime - 1;    
    ELSE
        EnLangChg := FALSE;
    END_IF;
END_FUNCTION

FUNCTION CheckAlarm                     // Check active alarms
    
    N_Alrms := GetAlarmsCount();        // Number of active alarms

    //isAlarm := N_Alrms <> 0;      

    IF (N_Alrms > N_Alrms_Prev) THEN      // Activate the buzzer and alarm led if any alarm is present
        //IF GeneralMng.RESERVED3 THEN       
        //__SYSVA_MANUAL_BUZZER_ON:= TRUE;
        //__SYSVA_MANUAL_BUZZER_OFF:= FALSE;
        //END_IF;
        SetLedStatus(12,2);
        EnCheckAlarm := TRUE;  
        // Обновление списка активных аварий если находимся в маске "Нет аварий" или в списке активных аварий
        IF (isNoAlarmMask) OR (isActiveAlarmLoop)THEN
            CheckActiveAlarm();
        END_IF;                          
    ELSIF (N_Alrms = 0) AND (N_Alrms < N_Alrms_Prev) THEN // Turn off the buzzer and alarm led if there aren't active alarms
        __SYSVA_MANUAL_BUZZER_OFF:= TRUE;    
        __SYSVA_MANUAL_BUZZER_ON:= FALSE;    
        SetLedStatus(12,0);  
         // Обновление списка активных аварий если находимся в списке активных аварий
        IF (isActiveAlarmLoop) THEN            
            CheckActiveAlarm();       
        END_IF;  
    ELSIF N_Alrms < N_Alrms_Prev THEN  // когда количество аварий уменьшилось (но не равно 0) - обновляем список
        IF (isActiveAlarmLoop) THEN  
            CheckActiveAlarm();       
        END_IF;
    END_IF;
  
    N_Alrms_Prev := N_Alrms;             // Save the previous number of alarm to the actual
END_FUNCTION

FUNCTION CheckActiveAlarm  
              
    VAR
        infoOk:DINT;
    END_VAR
    
    //MaskPos:= MASK_POS_MAIN;
    SetLedStatus(7,0);
    EnCheckAlarm := FALSE;

    N_Alrms := GetAlarmsCount();            // Get active alarms number

    __SYSVA_MANUAL_BUZZER_OFF:= TRUE;       // Every time i enter alarm mask, turn off the buzzer
    __SYSVA_MANUAL_BUZZER_ON:= FALSE;


    IF N_Alrms > 0 THEN                     // If there's a new alarm and alarm key is pressed,                                 
        SetLedStatus(12, 1);                // then fix the alarm led
        AlrmIdx := 1;
        infoOk:= GetAlarmInfo(AlrmIdx, AlrmCode , Alarms.AlrmTime); // Call GetAlarmInfo to show first alarm active
        CheckStoredVar_Alrm();
        isActiveAlarmLoop:= TRUE;
        isNoAlarmMask:=     FALSE;
        GotoLoop(ACTIVEALARMS);
    ELSE
        AlrmIdx := 0;
        SetLedStatus(12, 0);                
        IF __SYSVA_KEY_COUNTER <= 1 THEN
            isNoAlarmMask:=     TRUE;
            isActiveAlarmLoop:= FALSE;
            GotoMask(Alrms_NoAlrms);        // If there are no active alarms, goto no_alarms loop
        ELSIF __SYSVA_KEY_COUNTER >= 3 THEN // Try to reset alarms also if no alarms(due to remote devices)
            ResetAlarms();
            //Alarms.AlrmResByPGD1:=TRUE;
            AlrmIdx:= 0;
        END_IF;
    END_IF;
END_FUNCTION

FUNCTION CheckStoredVar_Alrm                                                  // This function let you sample the sampled variables on Alarm table
    
    // --- Active alarms ---// 
    IF GetAlarmStoredVar(AlrmIdx, 1, AlrmStoredVarReal1) <> 0 THEN            // Control if there's any variable to be sampled
        EnStoredVar1_REAL := FALSE;                                           // If is present, enable the fields
    ELSE
        EnStoredVar1_REAL := TRUE;                                            // else, don't enable the fields
    END_IF;

    IF GetAlarmStoredVar(AlrmIdx, 2, AlrmStoredVarReal2) <> 0 THEN
        EnStoredVar2_REAL := FALSE;     
    ELSE
        EnStoredVar2_REAL := TRUE; 
    END_IF;
    
END_FUNCTION

FUNCTION BlinkQuickMenu    
    // Blinking of quick menu icons
    IF DTQM = 1 AND IdxImgQM <(QUICK_MENU_ITEMS_NO + 1 )  THEN        
        DTQM := 0;                            
        IdxImgQM := IdxImgQM + QUICK_MENU_ITEMS_NO;
    ELSIF DTQM = 1 AND IdxImgQM > QUICK_MENU_ITEMS_NO THEN
        DTQM := 0;
        IdxImgQM := IdxImgQM - QUICK_MENU_ITEMS_NO;
    END_IF;
    DTQM := DTQM + 1;
END_FUNCTION


FUNCTION QuickMenuUP              
    IdxQM := IdxQM + 1;
    IF IdxQM > QUICK_MENU_ITEMS_NO THEN
        IdxImgQM := 1;
        IdxQM := 1;
    ELSE
        IdxImgQM := IdxImgQM + 1;    
    END_IF;      
END_FUNCTION

FUNCTION QuickMenuDOWN           
    IdxQM := IdxQM - 1;
    IF IdxQM < 1 THEN
        IdxImgQM := QUICK_MENU_ITEMS_NO;
        IdxQM := QUICK_MENU_ITEMS_NO;
    ELSE
        IdxImgQM := IdxImgQM - 1;    
    END_IF; 
END_FUNCTION

FUNCTION QuickMenuENT           
    //MaskPos:= MASK_POS_MAIN;

    CASE IdxQM OF

        1: // ВКЛ/ВЫКЛ       
            GotoLoop(ONOFF);     

        2:  // ХМ
            GotoLoop(FRIDGE); 

        3:  // Инфо 
            GotoLoop(INFO); 

    END_CASE; 
END_FUNCTION


FUNCTION UsrAccessMenu
    IF CntDwnPwdTypMenu > 0 THEN
        CntDwnPwdTypMenu := CntDwnPwdTypMenu - 1;
    ELSIF CntDwnPwdTypMenu = 0 THEN
        PwdTypMenu := 0;
    END_IF;
END_FUNCTION



FUNCTION RetMainMsk

    // Automatic return to Main Mask after 5 minutes of inactivity and automatic Logout
    IF __SYSVA_KEY_PRESSED = 1 THEN    
        DTRetMain := 0;               
       __SYSVA_KEY_PRESSED := 0;
    ELSIF DTRetMain = 300 THEN                  
        PwdIn := 0;
        EnLogOut := FALSE;

        StatePRG:= STATE_PRG_OFF;// гасим кнопку PRG

        resetConditions(); // 200219 добавлено что бы завершало все состояния при выходе

        GotoMain();
    END_IF;

    IF NOT(StartupJmp) THEN 
        DTRetMain := DTRetMain + 1;     // Delay for main mask return
    END_IF;
END_FUNCTION 

FUNCTION CheckAlrm_Reset
    // Check the active alarms after a Global/Single alarm reset
    IF En_CheckAlrm_Reset THEN
        IF N_Alrms = 0 THEN
            GotoMask(Alrms_NoAlrms);      
        ELSE          
            CheckActiveAlarm();
        END_IF;
        En_CheckAlrm_Reset := FALSE;
    END_IF;
END_FUNCTION


FUNCTION DoNothing
END_FUNCTION

FUNCTION ScrollAlarmLog_UP 
     
    IF AlrmLogsIdx = 1 THEN                                         // If I'm displaying the first log alarm, then beep              
        Beep();
    ELSE
        AlrmLogsIdx:= AlrmLogsIdx-1;                                // else, decrease the alarm log index
        AlrmLogsIdxTemp:= AlrmLogsIdxTemp - 1;                      
        AlrmLogInfoErr:=GetAlarmLogInfo(AlrmLogsIdx, AlrmLogCode,   // Get information about alarm logs
                                    AlrmLogEventType, Alarms.AlrmLogTime);
        CheckStoredVar_Log();                                           // Show me sampled values if there are
    END_IF;
                                                     
END_FUNCTION

FUNCTION ScrollAlarmLog_DOWN  
  
    AlrmLogsIdxTemp := AlrmLogsIdx;
    AlrmLogsIdxTemp:= AlrmLogsIdxTemp + 1;
    AlrmLogInfoErr:=GetAlarmLogInfo(AlrmLogsIdxTemp, AlrmLogCodeTemp,       // Get information about alarm logs
                                    AlrmLogEventTypeTemp, AlrmLogTimeTemp);
    IF AlrmLogInfoErr = 1 THEN                                              // If I'm displaying the last log alarm, then beep
        Beep();
    ELSE
        IF AlrmLogsIdx < 64 THEN
            AlrmLogsIdx:= AlrmLogsIdx + 1;                                   // else, increase the alarm log index 
            AlrmLogInfoErr:=GetAlarmLogInfo(AlrmLogsIdx, AlrmLogCode,        // Get information about alarm logs
                                        AlrmLogEventType, Alarms.AlrmLogTime);
            CheckStoredVar_Log();                                                // Show me sampled values if there are
        ELSE
            AlrmLogsIdx := 64;
            Beep();
        END_IF;    
    END_IF;
   
END_FUNCTION

FUNCTION LedBlink 
    SetLedStatus(12,2);
END_FUNCTION

FUNCTION ResetGlobalAlarm
    IF __SYSVA_KEY_COUNTER >= 3 THEN        // If I hold down the alarm button for more 
        //IF (PwdTyp >= 2) THEN
            ResetAlarms();                  // than 3 seconds then resets all alarms
            Alarms.AlrmResByPGD1 := TRUE;           
            AlrmIdx:= 1;
            En_CheckAlrm_Reset := TRUE;     // Enable the CheckAlrm_Reset function
            KeybOnOff:= FALSE;              //270919 Сброс выключателя при сбросе аварий, 
                                            //что бы установка не запускалась сразу после сброса
        //ELSE
            //NextCycleAction:= 9;            
            //ShowPopUpQuestion(13);          // Запрос более высокого уровня доступа                      
        //END_IF;
    END_IF;
END_FUNCTION

FUNCTION ScrollAlarm_UP                                // Navigation trought active alarm mask
                                        
    N_Alrms := GetAlarmsCount();                       // Get active alarms count
    IF N_Alrms > 0 THEN                                // If there are active alarms,
        IF AlrmIdx > 1 AND AlrmIdx <= N_Alrms THEN     // and i'm not in the last alarm, then show me the previous alarm
            AlrmIdx:= AlrmIdx-1;
        ELSIF AlrmIdx = 1 THEN                         // If i'm in the last alarm, show next mask(Alarm_Reset)
            AlrmIdx:= 0;
            GotoPreviousMask();
        ELSIF AlrmIdx = 0 AND N_Alrms <> 0 THEN        // If i'm in the "Alarm_Reset" mask, go to Alarm_Active mask
            AlrmIdx := N_Alrms;
            GotoPreviousMask(); 
        END_IF;
        GetAlarmInfo(AlrmIdx, AlrmCode, Alarms.AlrmTime);     // Get alarm info by index
        CheckStoredVar_Alrm(); 
    ELSIF N_Alrms = 0 THEN                             // If there are no alarms, show No_alarms mask
        GotoMask(Alrms_NoAlrms);
    END_IF;

END_FUNCTION

FUNCTION ScrollAlarm_DOWN                              // Navigation trought active alarm mask

    N_Alrms := GetAlarmsCount();                       // Get active alarms count
    IF AlrmIdx = 0 AND N_Alrms <> 0 THEN               // If i'm in the "Alarm_Reset" mask, go to Alarm_Active mask
        GotoNextMask();
    END_IF; 
                                            
    IF N_Alrms >= 0 AND N_Alrms <> 0 THEN              // If there are active alarms,
        IF AlrmIdx >= 0 AND AlrmIdx < N_Alrms THEN     // and i'm not in the last alarm, then show me the next alarm
            AlrmIdx:= AlrmIdx+1;
        ELSIF AlrmIdx >= N_Alrms THEN                  // If i'm in the last alarm, show next mask(Alarm_Reset)
            AlrmIdx:= 0;
            GotoNextMask();
        END_IF;
        GetAlarmInfo(AlrmIdx, AlrmCode, Alarms.AlrmTime);     // Get alarm info by index
        CheckStoredVar_Alrm(); 
    ELSIF N_Alrms = 0 THEN                             // If there are no alarms, show No_alarms mask 
        GotoMask(Alrms_NoAlrms);
    END_IF;

END_FUNCTION

FUNCTION Alrms_Log_ENTER
	AlrmLogCode:=AlrmLogCode+1;
END_FUNCTION

(*				END IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

FUNCTION Increment  // увеличение байтовой переменной с индикацией стрелки	
    Increment_BYTE();
    upArrow:=   TRUE;
END_FUNCTION

FUNCTION Decrement // уменьшение байтовой переменной с индикацией стрелки
    Decrement_BYTE(); 
    downArrow:= TRUE;
END_FUNCTION

FUNCTION LangMsk_Esc
    IF (EnLangChg) THEN
        EnLangChg:= FALSE;
    ELSE
        GlobalEsc();
    END_IF;
END_FUNCTION


FUNCTION OnOffSwitch_DOWN   //Unit onoff
    KeybOnOff := FALSE;
END_FUNCTION

FUNCTION OnOffSwitch_UP   //Unit onoff
    KeybOnOff := TRUE; 
END_FUNCTION

(*				END IMPORT CODE					*)

FUNCTION Set_PRG
;

END_FUNCTION
(*				BEGIN GLOBAL VARIABLE IMPORT CODE				*)

VAR_GLOBAL
    PIC_RoleSlave                               : BOOL; // когда роль - ведомый. Отображение состояний в группе/индивидуальный
    temp_En_DLE                                 : ARRAY [1..5] OF BOOL;
    temp_SEQ_Order                              : ARRAY [1..6] OF DINT;
    temp_Use_ExhaustFilter                      : BOOL;
    temp_Use_Sensor_CO2                         : BOOL;
    temp_Use_Sensor_Thru                        : BOOL;
    temp_Use_SupplyFilter                       : BOOL;
    temp_Use_GateHeater                         : BOOL;
    temp_Use_VortexDiff                         : BOOL;
    temp_DLE_HeatType                           : USINT;
    show_Use_ExhaustFilter                      : BOOL:= TRUE;
    show_Use_Sensor_CO2                         : BOOL:= TRUE;
    show_Use_Sensor_Thru                        : BOOL:= FALSE;
END_VAR

(*				END GLOBAL VARIABLE IMPORT CODE					*)

FUNCTION Main_PRG    
    CurRow:=            1;
    CurList_Position:=  1;
    CurMenuPoint:=      0;
    CurLevel:=          1;
    GotoMaskID(3); //Menu_Main  
END_FUNCTION


//----------------------- Main Menu -----------------------------
FUNCTION MainMenu_DOWN   // Переход вниз
  
    IF (CurRow < num_Rows) THEN
        Display.UoM[CurRow]:= Display.UoM[CurRow] - 1;
        CurRow:= CurRow + 1;
        Display.UoM[CurRow]:= Display.UoM[CurRow] + 1;
    ELSE            
        Position:= Position + TO_DINT(__SYSVA_KEY_COUNTER)/20 + 1;
            
        IF (Position > cnt_Items - num_Rows + 1) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            Position:= 1;
            CurRow:= 1;
            //Beep();
        END_IF;
        update_MainMenu_List:= TRUE;
    END_IF;
    
    CurList_Position:= Position + CurRow - 1;
END_FUNCTION

FUNCTION MainMenu_UP   // Переход вверх
  
    IF (CurRow > 1) THEN
        Display.UoM[CurRow]:= Display.UoM[CurRow] - 1;
        CurRow:= CurRow - 1;
        Display.UoM[CurRow]:= Display.UoM[CurRow] + 1;
    ELSE            
        Position:= Position - TO_DINT(__SYSVA_KEY_COUNTER)/20 - 1;
            
        IF (Position < 1) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            Position:= cnt_Items - num_Rows + 1;
            CurRow:= num_Rows;
            //Beep();
        END_IF;
        update_MainMenu_List:= TRUE;
    END_IF;
    
    CurList_Position:= Position + CurRow - 1;
END_FUNCTION

FUNCTION MainMenu_ENTER   // 

    IF (Display.value_Type[CurRow] = 0) // каталог
    THEN   
        IF (CurLevel < 10) THEN 
            SaveMenuPos();
            //CurLevel:= CurLevel + 1; 
            CurMenuPoint:= Display.Descr[CurRow];       
            getMainMenu:= TRUE;
        END_IF;
        CurRow:= 1;
        Position:= 1;        
    ELSIF (Display.value_Type[CurRow] = 1) // переход на  другую маску
    THEN        
        //CurMenuPoint:= Display.Descr[CurRow];       
        //getMainMenu:= TRUE;
        SaveMenuPos();
        //CurLevel:= CurLevel + 1; 
        GotoMaskID(TO_USINT(Display.value_MinINT[CurRow]), TO_USINT(Display.value_MaxINT[CurRow]));
        Display.UoM[1]:= 0;
        Display.UoM[2]:= 0;
        Display.UoM[3]:= 0;
        Display.Descr[1]:= 0;
        Display.Descr[2]:= 0;
        Display.Descr[3]:= 0;
        CurRow:= 0;        
    ELSIF (Display.value_Type[CurRow] = 2) // всплывающие окна
    THEN
        SaveMenuPos();
        GotoMaskID(TO_USINT(Display.value_MinINT[CurRow]), TO_USINT(Display.value_MaxINT[CurRow]));    
    END_IF;
    CurList_Position:= 1;
END_FUNCTION    

FUNCTION MainMenu_ESC   // 
    IF (CurLevel > 1) THEN
        //save_Position[CurLevel]:= 0;
        //save_CurRow[CurLevel]:= 0;
        //save_MenuPoint[CurLevel]:= 0;
   //
        //CurLevel:= CurLevel - 1; 
       //
        //Position:= save_Position[CurLevel];
        //CurRow:= save_CurRow[CurLevel];
        //CurMenuPoint:=  save_MenuPoint[CurLevel];    
        //save_MenuPoint[CurLevel]:= 0; 
        //CurList_Position:= Position + CurRow - 1;
        LoadMenuPos();
        getMainMenu:= TRUE;
    ELSE
        GlobalEsc();
    END_IF;     
END_FUNCTION       

//---------------------------------------------------------------  
FUNCTION GotoMaskID
//Загрузка маски или петли по MaskID с сохранением пути
    VAR_INPUT
        iMaskID : USINT;
    END_VAR
    
    StoreMaskID();
    LoadMaskID(iMaskID, 0);
END_FUNCTION  

FUNCTION GotoMaskID
//Загрузка маски или петли по MaskID с сохранением пути
    VAR_INPUT
        iMaskID : USINT;
        iParam : USINT; // передаваемый параметр
    END_VAR
    
    StoreMaskID();
    LoadMaskID(iMaskID, iParam);
END_FUNCTION    


FUNCTION LoadMaskID
//Загрузка маски или петли по MaskID
    VAR_INPUT
        iMaskID : USINT;
        iParam : USINT; // передаваемый параметр
    END_VAR

    Display.MaskID:= iMaskID;
    
    CASE iMaskID OF
        1: // Гл.экран	DF_MID_MAIN
            GotoLoop(MAIN);

        3: // Осн.меню	DF_MID_MMENU
            getMainMenu:= TRUE;  
            StatePRG:= STATE_PRG_OFF;  
            GotoLoop(MAIN_MENU);

        4: // Управление	DF_MID_ONOFF
            StatePRG:= STATE_PRG_ALWAYS_ON;// режим редактирования
            GotoLoop(ONOFF);     

        8: // Журнал аварий	DF_MID_ALOG
            gotoAlarmLog();                 

        11: //Дискретные входы	DF_MID_IO_DI
            CurRow:= 0;
            CurRow_modePRG:= 0;
            getIOList:= TRUE;
            IF (UnitOn) THEN
                StatePRG:= STATE_PRG_OFF;
            ELSE
                StatePRG:= STATE_PRG_READY;
            END_IF;
            GotoMask(IO_DI);

        12: //Аналоговые входы	DF_MID_IO_AI
            CurRow:= 0;
            CurRow_modePRG:= 0;
            getIOList:= TRUE;
            IF (UnitOn) THEN
                StatePRG:= STATE_PRG_OFF;
            ELSE
                StatePRG:= STATE_PRG_READY;
            END_IF;
            GotoMask(IO_AI);            

        13: //Дискретные выходы	DF_MID_IO_DO
            CurRow:= 0;
            CurRow_modePRG:= 0;
            getIOList:= TRUE;
            IF (UnitOn) THEN
                StatePRG:= STATE_PRG_OFF;
            ELSE
                StatePRG:= STATE_PRG_READY;
            END_IF;
            GotoMask(IO_DO);
            
        14: //Аналоговые выходы	DF_MID_IO_AO
            CurRow:= 0;
            CurRow_modePRG:= 0;
            getIOList:= TRUE;
            IF (UnitOn) THEN
                StatePRG:= STATE_PRG_OFF;
            ELSE
                StatePRG:= STATE_PRG_READY;
            END_IF;
            GotoMask(IO_AO);
            

        20: // Маска параметров	DF_MID_PAR
            //CurParam:=          iParam; 
            //getParamMenu:=      TRUE;
            //cnt_Items:=         0;
            //StatePRG:=          STATE_PRG_READY;
            //GotoMask(REF_Parameters);
            StatePRG:=  STATE_PRG_READY;
            GotoLoop(FRIDGE_PARAMS);

        21: //ХМ: Статистика	DF_MID_CM_STA   
            Display.Index:=     1;   
            StatePRG:=          STATE_PRG_READY;
            GotoLoop(STATS);   

        22: // Дата и время	DF_MID_DTIME
            //StatePRG:=          STATE_PRG_READY;
            //GotoLoop(DATETIME);
            ;
        
        23: //Язык	DF_MID_LANG
            //StatePRG:=          STATE_PRG_ALWAYS_ON;
            //Gotomask(Language);
            ; 

        25: //Коррекция датчиков	DF_MID_SCORR  
            MaskMng.getCorrList:= TRUE;
            StatePRG:= STATE_PRG_READY;
            GotoMask(CORR_AI);

        27: //Обновление	DF_MID_UPGR
            IF (UnitOff) THEN
                IF (iParam = 1) THEN //USB
                    IF (isUSB) THEN
                        Upgrade.UpgradeDrive:= 1; //SYS_DISK_USB
                        Upgrade.Check_Upgrade:= TRUE;
                        StatePRG:= STATE_PRG_ALWAYS_ON;
                        NextCycleAction:= 4; // GotoLoop (UPGRADE);
                    ELSE
                        //Вставьте USB-накопитель
                        ShowPopUpMessage(24, SHORT_POPUP_TIME, TRUE); 
                    END_IF;
                ELSE
                    Upgrade.UpgradeDrive:= 0; //SYS_DISK_INTERNAL
                    Upgrade.Check_Upgrade:= TRUE;
                    StatePRG:= STATE_PRG_ALWAYS_ON;
                    NextCycleAction:= 4; // GotoLoop (UPGRADE);                    
                END_IF;
            ELSE
                ShowPopUpMessage(1, POPUP_TIME, TRUE);//  Выключите установку для изменения настроек!
            END_IF;    

        30: //Маска сообщения   DF_MID_MSG
            ;

        31: //Маска вопроса	DF_MID_QSTN                
            ReturnToPrevMask:= TRUE;
            StatePRG:= STATE_PRG_OFF;
            DTPopUp:= 0; //без таймера всплывающего окна
            PopUp_Question:= iParam;
            Gotomask(PopUp_Question_Mask);

        34: //Настройки BMS   DF_MID_BMS
            Temp_MB_Baudrate:= BMS.Baudrate;
            Temp_MB_Parity:= BMS.Parity;
            Temp_MB_StopBits:= BMS.StopBits;
            En_MB_BMS:= TRUE;
            StatePRG:= STATE_PRG_READY;
            GotoLoop(BMS_SETTINGS);
            

         40: //Холодильная машина DF_MID_COLM
            StatePRG:= STATE_PRG_OFF;
            GotoLoop(FRIDGE);

         42: //Информация DF_MID_INFO
            GotoLoop(INFO);

    END_CASE;    
END_FUNCTION


FUNCTION StoreMaskID
//Сохраняем позицию маски
    MaskIDStore[MaskIDLevel]:= Display.MaskID;
    IF (MaskIDLevel < 9) THEN
        MaskIDLevel:= MaskIDLevel + 1;
    END_IF;
END_FUNCTION
FUNCTION ReStoreMaskID
//Загружаем позицию маски    
    IF (MaskIDLevel > 0) THEN
        MaskIDLevel:= MaskIDLevel - 1;
    END_IF;
    Display.MaskID:= MaskIDStore[MaskIDLevel];
    MaskIDStore[MaskIDLevel]:= 0;    
END_FUNCTION

FUNCTION SaveMenuPos
//Сохраняем состояние меню
    save_MenuPoint[CurLevel]:= CurMenuPoint;
    save_Position[CurLevel]:= Position;
    save_CurRow[CurLevel]:= CurRow; 

    CurMenuPoint:= Display.Descr[CurRow]; 
    
    IF (CurLevel < 10) THEN
        CurLevel:= CurLevel + 1;
    ELSE 
         CurLevel:= 10;
    END_IF; 
END_FUNCTION

FUNCTION LoadMenuPos
//Загружаем состояние меню     
    IF (CurLevel > 0) THEN
        CurLevel:= CurLevel - 1;
    ELSE 
         CurLevel:= 0;
    END_IF;

    CurMenuPoint:= save_MenuPoint[CurLevel];
    Position:= save_Position[CurLevel];
    CurRow:= save_CurRow[CurLevel];     
    CurList_Position:= Position + CurRow - 1;

    save_MenuPoint[CurLevel]:= 0;
    save_Position[CurLevel]:= 0;
    save_CurRow[CurLevel]:= 0;    
END_FUNCTION
(*				BEGIN IMPORT CODE				*)

FUNCTION Stats_1_PRG
    IF (Display.Index = 1) THEN
        ShowPopUpQuestion(8);// Сбросить статистику компрессора 1?
    ELSIF (Display.Index = 2) THEN
        ShowPopUpQuestion(9);// Сбросить статистику компрессора 2?
    ELSIF (Display.Index = 3) THEN
        ShowPopUpQuestion(10);// Сбросить статистику компрессора 3?
    END_IF; 
END_FUNCTION

FUNCTION Stats_1_UP
    IF (Display.Index > 1) THEN 
        Display.Index:= Display.Index - 1;
    ELSE
        Display.Index:= EQ_Cooler.CompNum;
    END_IF;
END_FUNCTION

FUNCTION Stats_1_DOWN
    IF (Display.Index < EQ_Cooler.CompNum) THEN 
        Display.Index:= Display.Index + 1;
    ELSE
        Display.Index:= 1;
    END_IF;
END_FUNCTION

(*				END IMPORT CODE					*)


// УПРАВЛЕНИЕ ВСПЛЫВАЮЩИМИ МАСКАМИ --------------------------------------------------------------------// 

FUNCTION PopUpSupport
    // управление всплывающими окнами      
    IF (En_PopUpTimer) THEN
        IF (DTPopUp <= 0) THEN
            PopUp_ESC();            
        ELSE
            DTPopUp := DTPopUp - 1;     // таймер для всплывающих сообщений. Стремится к 0
            PopUpKeyDelay:= PopUpKeyDelay + 1; // таймер задержки обнаружения нажатия клавиши для сброса таймера
            IF (__SYSVA_KEY_PRESSED = 1) THEN
                IF(PopUpKeyDelay > 1) THEN
                    En_PopUpTimer:=         FALSE;
                ELSE
                    __SYSVA_KEY_PRESSED:=   0;
                END_IF;
            END_IF;
            IF (DTPopUp = 0) THEN
                Show_DTPopUp:=  FALSE;
            END_IF;
        END_IF;
    ELSE
        PopUpKeyDelay:= 0;
        DTPopUp:=       0;
        Show_DTPopUp:=  FALSE;
    END_IF;
END_FUNCTION

FUNCTION ShowPopUpMessage
    VAR_INPUT
        iMessage : USINT; 
    END_VAR
    popup_StatePRG:=    StatePRG;
    StatePRG:= STATE_PRG_OFF;
    StoreMask();
    DTPopUp:=           0;// без таймера всплывающего окна
    PopUp_Message:=     iMessage;
    Show_DTPopUp:=      FALSE;
    En_PopUpTimer:=     FALSE;
    Gotomask(PopUp_Message_Mask);
END_FUNCTION

FUNCTION ShowPopUpMessage // @Override с заданием времени отображения
    VAR_INPUT
        iMessage : USINT;    
        iTime    : USINT;   
    END_VAR
    popup_StatePRG:=    StatePRG;
    StatePRG:= STATE_PRG_OFF;
    StoreMask();
    DTPopUp:=           iTime;// запускаем таймер всплывающего окна
    PopUp_Message:=     iMessage;
    Show_DTPopUp:=      TRUE;
    En_PopUpTimer:=     TRUE;
    Gotomask(PopUp_Message_Mask);
END_FUNCTION

FUNCTION ShowPopUpMessage // @Override с заданием времени отображения и возврата на предыдущую маску
    VAR_INPUT
        iMessage : USINT;    
        iTime    : USINT;   
        iEsc  : BOOL;
    END_VAR
    popup_StatePRG:=    StatePRG;
    StatePRG:= STATE_PRG_OFF;
    IF (iEsc) THEN
        ReturnToPrevMask:= TRUE;
    ELSE
        StoreMask();
        SaveMenuPos(); //081019 пробуем для возврата после сообщения в то же состояние
    END_IF;
    DTPopUp:=           iTime;// запускаем таймер всплывающего окна
    PopUp_Message:=     iMessage;
    Show_DTPopUp:=      TRUE;
    En_PopUpTimer:=     TRUE;
    Gotomask(PopUp_Message_Mask);

END_FUNCTION

FUNCTION ShowPopUpQuestion
    VAR_INPUT
        iQuestion : USINT;
    END_VAR
    popup_StatePRG:=    StatePRG;
    StatePRG:= STATE_PRG_OFF;
    StoreMask();
    //DTPopUp:=           0;  
    En_PopUpTimer:=     FALSE; // без таймера всплывающего окна
    PopUp_Question:=    iQuestion;
    Gotomask(PopUp_Question_Mask);

END_FUNCTION


FUNCTION PopUpQuestion_Confirm
    StatePRG:=    popup_StatePRG;
    CASE PopUp_Question OF

        8:  // Сброс статистики компрессора 1
            ResetHoursComp[1]:= TRUE; 
            PopUp_ESC();

        9:  // Сброс статистики компрессора 2
            ResetHoursComp[2]:= TRUE; 
            PopUp_ESC();

        10: // Сброс статистики компрессора 3
            ResetHoursComp[3]:= TRUE;
            PopUp_ESC();

        20: //изменение настроек сети            
            Gotomask(Reboot);
            BMS.Baudrate:=  Temp_MB_Baudrate;
            BMS.StopBits:=  Temp_MB_StopBits;
            BMS.Parity:=    Temp_MB_Parity;
            En_Reboot:=     TRUE;

    END_CASE;
END_FUNCTION

FUNCTION PopUpQuestion_Reject
        PopUp_ESC();   
END_FUNCTION


FUNCTION PopUp_ESC
    StatePRG:=      popup_StatePRG;    
    En_PopUpTimer:= FALSE;

    IF (ReturnToPrevMask) THEN // возвращение на предыдущую маску
        ReturnToPrevMask:= FALSE;
        GlobalEsc();
    ELSE    // возвращение на ту маску, с которой пришли
        CASE popup_StatePRG OF
            3:  ModePRG:=           TRUE;
                NotModePRG:=        FALSE;
        END_CASE;
        RestoreMask();
        LoadMenuPos();
    END_IF;    
END_FUNCTION
(*				BEGIN IMPORT CODE				*)

FUNCTION DOWN_button

    IF (StatePRG = STATE_PRG_OFF)OR(StatePRG = STATE_PRG_READY) THEN 
        Move_DOWN();  
    END_IF;

END_FUNCTION

FUNCTION UP_button

    IF (StatePRG = STATE_PRG_OFF)OR(StatePRG = STATE_PRG_READY) THEN 
            Move_UP();  
    END_IF;

END_FUNCTION

FUNCTION PRG_button

    IF (StatePRG = STATE_PRG_READY) THEN 
        IF(FLR_Disc_CTRL.Active) THEN
            ShowPopUpMessage(8, POPUP_TIME);//  Нет связи со шкафом управления!// если ведомый - заглушка
        ELSE
            StoreMask();
            StatePRG:= STATE_PRG_ON;     
            NextCycleAction:=   1;
        END_IF;
    ELSIF (StatePRG = STATE_PRG_ON) THEN 
        Compare();        
        StatePRG:= STATE_PRG_READY;       
        NextCycleAction:=   1;
    END_IF;

END_FUNCTION


FUNCTION ENTER_button
    IF (StatePRG = STATE_PRG_ON) THEN
        Compare(); 
        GotoNextField();
    END_IF;
END_FUNCTION

(*				END IMPORT CODE					*)



FUNCTION NextCycleAction   // Выполнение действий с задержкой на 1 цикл    
    IF (NextCycleAction <> 0) THEN        
        CASE NextCycleAction OF
            1: // Восстановление сохраненной маски
                RestoreMask();

            4: // переход к петле UPGRADE в следующем цикле
                GotoLoop (UPGRADE);

            12: //Обновление текущей позиции
                UpdateCurPos();

            30: //Вх/вых не сконфигурированы
                ShowPopUpMessage(20, SHORT_POPUP_TIME, TRUE);
        END_CASE;
        NextCycleAction:= 0;
    END_IF;
END_FUNCTION

(*				BEGIN IMPORT CODE				*)

FUNCTION Net_Settings_PRG
	 IF (StatePRG = STATE_PRG_READY) THEN 
        StoreMask();
        StatePRG:= STATE_PRG_ON;    
        NextCycleAction:= 1;        
    ELSIF (StatePRG = STATE_PRG_ON) THEN 
        Compare(); 
        IF (Temp_MB_Baudrate <> BMS.Baudrate) OR
            (Temp_MB_Parity <> BMS.Parity) OR
            (Temp_MB_StopBits <> BMS.StopBits) 
            THEN           
            ShowPopUpQuestion(20);// изменение настроек сети
        ELSE
            StatePRG:= STATE_PRG_READY;   
            NextCycleAction:=   1;        
        END_IF;    
    END_IF;
END_FUNCTION

FUNCTION Net_Settings_ESC
	IF (StatePRG = STATE_PRG_READY) THEN 
        GlobalEsc();
    ELSIF (StatePRG = STATE_PRG_ON) THEN 
        Compare(); 
        IF (Temp_MB_Baudrate <> BMS.Baudrate) OR
            (Temp_MB_Parity <> BMS.Parity) OR
            (Temp_MB_StopBits <> BMS.StopBits) 
            THEN           
            ShowPopUpQuestion(20);// изменение настроек сети
        ELSE
            GlobalEsc();        
        END_IF;               
    END_IF;
END_FUNCTION

(*				END IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

FUNCTION IO_DOWN 
    IF (StatePRG = STATE_PRG_ON) THEN
        IF (CurRow = 3) THEN // Надпись Режим
            IF (Display.value_BOOL[1] = 1) THEN //руч.
                CurRow:= 4;
            ELSE
                IF (Display.MaskID = 11) THEN // Дискретные входы
                    CurRow:= 5;
                ELSE
                    Beep();
                END_IF;
            END_IF;
        ELSIF (CurRow = 4) THEN // Надпись Статус
            CurRow:= 3;
        ELSIF (CurRow = 5) THEN // Надпись инверсия
            CurRow:= 3;
        ELSIF (CurRow_modePRG = 3) THEN // Изменение режима
            IF (Display.value_BOOL[1] = 0) THEN
                 Display.value_BOOL[1]:= 1;
            ELSIF( Display.value_BOOL[1] = 1) THEN
                Display.value_BOOL[1]:= 0;
            END_IF; 
            //MaskMng.ValueWasChanged:= TRUE;
        ELSIF (CurRow_modePRG = 4) THEN // Изменение значения
            CASE Display.MaskID OF
                11, 13:(*Digital*)
                    Display.value_BOOL[2]:= 2; //OFF
                    MaskMng.ValueWasChanged:= TRUE;
                12:(*Analog inputs*)
                    IF (Display.En_RealValue[1]) THEN
                        Display.value_REAL[1]:= Display.value_REAL[1] - TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
                        IF (Display.value_REAL[1] < Display.value_MinREAL[1]) THEN
                            Display.value_REAL[1]:= Display.value_MaxREAL[1];  
                            __SYSVA_KEY_COUNTER:= 0;       
                            Beep();       
                        END_IF;
                    ELSIF (Display.En_IntValue[1]) THEN
                        Display.value_INT[1]:= Display.value_INT[1] - TO_INT(__SYSVA_KEY_COUNTER)/10 - 1;
                        IF (Display.value_INT[1] < Display.value_MinINT[1]) THEN
                            Display.value_INT[1]:= Display.value_MaxINT[1];  
                            __SYSVA_KEY_COUNTER:= 0;       
                            Beep();       
                        END_IF;
                    END_IF;                
                    //MaskMng.ValueWasChanged:= TRUE;

                14: 
                    Display.value_REAL[1]:= Display.value_REAL[1] - TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
                    IF (Display.value_REAL[1] < 0.0) THEN
                        Display.value_REAL[1]:= 0.0;         
                        Beep();       
                    END_IF;
            END_CASE;
        ELSIF (CurRow_modePRG = 5) THEN // Изменение инверсии
            IF (Display.value_BOOL[3] = 0) THEN
                Display.value_BOOL[3]:= 1;
            ELSE
                Display.value_BOOL[3]:= 0;
            END_IF;
        END_IF;
    ELSE
        mask_List_pos:=  mask_List_pos + TO_DINT(__SYSVA_KEY_COUNTER)/20 + 1;
        IF (mask_List_pos > cnt_Items) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            mask_List_pos:= 1;
            Beep();
        END_IF;
        //Display.Descr[1]:= TO_USINT(cfgIO.Link_toCodes[TO_DINT(mask_List[mask_List_pos])]) - TO_USINT(MaskMng.sig_start) + 1;
        //Display.Descr[2]:= mask_List[mask_List_pos];
        
    END_IF;
END_FUNCTION

FUNCTION IO_UP   
    IF (StatePRG = STATE_PRG_ON) THEN
        IF (CurRow = 3) THEN // Надпись Режим
            IF (Display.value_BOOL[1] = 1) THEN //руч.
                CurRow:= 4;
            ELSE
                IF (Display.MaskID = 11) THEN // Дискретные входы
                    CurRow:= 5;
                ELSE
                    Beep();
                END_IF;                
            END_IF;
        ELSIF (CurRow = 4) THEN // Надпись Статус            
            CurRow:= 3;
        ELSIF (CurRow = 5) THEN // Надпись инверсия
            CurRow:= 3;
        ELSIF (CurRow_modePRG = 3) THEN // Изменение режима
            IF (Display.value_BOOL[1] = 0) THEN
                 Display.value_BOOL[1]:= 1;
            ELSIF( Display.value_BOOL[1] = 1) THEN
                Display.value_BOOL[1]:= 0;
            END_IF;            
            //MaskMng.ValueWasChanged:= TRUE;
        ELSIF (CurRow_modePRG = 4) THEN // Изменение значения
            CASE Display.MaskID OF
                11, 13:(*Digital*)
                    Display.value_BOOL[2]:= 1; //ON
                    MaskMng.ValueWasChanged:= TRUE;
                12:(*Analog inputs*)
                    IF (Display.En_RealValue[1]) THEN
                        Display.value_REAL[1]:= Display.value_REAL[1] + TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
                        IF (Display.value_REAL[1] > Display.value_MaxREAL[1]) THEN
                            Display.value_REAL[1]:= Display.value_MinREAL[1];  
                            __SYSVA_KEY_COUNTER:= 0;       
                            Beep();       
                        END_IF;
                    ELSIF (Display.En_IntValue[1]) THEN
                        Display.value_INT[1]:= Display.value_INT[1] + TO_INT(__SYSVA_KEY_COUNTER)/10 + 1;
                        IF (Display.value_INT[1] > Display.value_MaxINT[1]) THEN
                            Display.value_INT[1]:= Display.value_MinINT[1];  
                            __SYSVA_KEY_COUNTER:= 0;       
                            Beep();       
                        END_IF;
                    END_IF;               
                    
                14: (*Analog outputs*)
                    Display.value_REAL[1]:= Display.value_REAL[1] + TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
                    IF (Display.value_REAL[1] > 10.0) THEN
                        Display.value_REAL[1]:= 10.0;         
                        Beep();       
                    END_IF;
            END_CASE;
        ELSIF (CurRow_modePRG = 5) THEN // Изменение инверсии
            IF (Display.value_BOOL[3] = 1) THEN
                Display.value_BOOL[3]:= 0;
            ELSE
                Display.value_BOOL[3]:= 1;
            END_IF;
        END_IF;
    ELSE
        mask_List_pos:=  mask_List_pos - TO_DINT(__SYSVA_KEY_COUNTER)/20 - 1;
        IF (mask_List_pos < 1) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            mask_List_pos:= cnt_Items;
            Beep();
        END_IF;
        //Display.Descr[1]:= TO_USINT(cfgIO.Link_toCodes[TO_DINT(mask_List[mask_List_pos])]) - TO_USINT(MaskMng.sig_start) + 1;
        //Display.Descr[2]:= mask_List[mask_List_pos];
    END_IF;       
END_FUNCTION

FUNCTION IO_ENTER
     IF (StatePRG = STATE_PRG_ON) THEN  // ручное управление
        IF (CurRow <> 0) THEN           // Пункты 
            CurRow_modePRG:= CurRow;  
            CurRow:= 0; 
        ELSE  // Режим    // Статус   // Инверсия      
            CurRow:= CurRow_modePRG;  
            CurRow_modePRG:= 0;
            MaskMng.ValueWasChanged:= TRUE;   
        END_IF;
    END_IF;    
END_FUNCTION

FUNCTION IO_PRG
    IF (StatePRG = STATE_PRG_READY) THEN        // вход в режим редактирования
        StatePRG:=  STATE_PRG_ON; 
        CurRow:= 3;
        CurRow_modePRG:= 0;
    ELSIF (StatePRG = STATE_PRG_ON) THEN        // выход из режима редактирования
        StatePRG:=  STATE_PRG_READY; 
        CurRow:= 0;
        CurRow_modePRG:= 0;
        MaskMng.ValueWasChanged:= TRUE;
    ELSIF (StatePRG = STATE_PRG_OFF) THEN        //ручной режим недоступен
        ShowPopUpMessage(17, SHORT_POPUP_TIME);
    END_IF;
END_FUNCTION

(*				END IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

FUNCTION CORR_UP
    
    IF (StatePRG = STATE_PRG_ON) THEN      
        (*Analog inputs correction*)
        IF (Display.En_RealValue[1]) THEN
            //Display.value_REAL[1]:= Display.value_REAL[1] + TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
            Display.value_REAL[1]:= Display.value_REAL[1] + Display.value_REAL[8];
            IF (Display.value_REAL[1] > Display.value_MaxREAL[1]) THEN
                Display.value_REAL[1]:= Display.value_MinREAL[1];  
                __SYSVA_KEY_COUNTER:= 0;       
                Beep();       
            END_IF;
        ELSIF (Display.En_IntValue[1]) THEN
            //Display.value_INT[1]:= Display.value_INT[1] + TO_INT(__SYSVA_KEY_COUNTER)/10 + 1;
            Display.value_INT[1]:= Display.value_INT[1] + Display.value_INT[8];
            IF (Display.value_INT[1] > Display.value_MaxINT[1]) THEN
                Display.value_INT[1]:= Display.value_MinINT[1];  
                __SYSVA_KEY_COUNTER:= 0;       
                Beep();       
            END_IF;
        END_IF;    
    ELSE
        mask_List_pos:=  mask_List_pos - TO_DINT(__SYSVA_KEY_COUNTER)/20 - 1;
        IF (mask_List_pos < 1) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            mask_List_pos:= cnt_Items;
            Beep();
        END_IF;
        //Display.Descr[1]:= TO_USINT(cfgIO.Link_toCodes[TO_DINT(mask_List[mask_List_pos])]) - TO_USINT(MaskMng.sig_start) + 1;
        //Display.Descr[2]:= mask_List[mask_List_pos];
    END_IF;
    
END_FUNCTION

FUNCTION CORR_ENTER
    IF (StatePRG = STATE_PRG_ON) THEN  // ручное управление                   
        MaskMng.ValueWasChanged:= TRUE;    
    END_IF;    
END_FUNCTION

FUNCTION CORR_PRG
    IF (StatePRG = STATE_PRG_READY) THEN        // вход в режим редактирования
        StatePRG:=  STATE_PRG_ON; 
        CurRow:= 0;
        CurRow_modePRG:= 3;
    ELSIF (StatePRG = STATE_PRG_ON) THEN        // выход из режима редактирования
        StatePRG:=  STATE_PRG_READY; 
        CurRow:= 0;
        CurRow_modePRG:= 0;
        MaskMng.ValueWasChanged:= TRUE;
    ELSIF (StatePRG = STATE_PRG_OFF) THEN        //ручной режим недоступен
        ShowPopUpMessage(17, SHORT_POPUP_TIME);
    END_IF;
END_FUNCTION

FUNCTION CORR_DOWN  
    
    IF (StatePRG = STATE_PRG_ON) THEN      
        (*Analog inputs correction*)
        IF (Display.En_RealValue[1]) THEN
            //Display.value_REAL[1]:= Display.value_REAL[1] - TO_REAL(__SYSVA_KEY_COUNTER)/10.0;
            Display.value_REAL[1]:= Display.value_REAL[1] - Display.value_REAL[8];
            IF (Display.value_REAL[1] < Display.value_MinREAL[1]) THEN
                Display.value_REAL[1]:= Display.value_MaxREAL[1];  
                __SYSVA_KEY_COUNTER:= 0;       
                Beep();       
            END_IF;
        ELSIF (Display.En_IntValue[1]) THEN
            //Display.value_INT[1]:= Display.value_INT[1] - TO_INT(__SYSVA_KEY_COUNTER)/10 - 1;
            Display.value_INT[1]:= Display.value_INT[1] - Display.value_INT[8];
            IF (Display.value_INT[1] < Display.value_MinINT[1]) THEN
                Display.value_INT[1]:= Display.value_MaxINT[1];  
                __SYSVA_KEY_COUNTER:= 0;       
                Beep();       
            END_IF;
        END_IF;      
    ELSE
        mask_List_pos:=  mask_List_pos + TO_DINT(__SYSVA_KEY_COUNTER)/20 + 1;
        IF (mask_List_pos > cnt_Items) THEN     
            __SYSVA_KEY_COUNTER:= 0;
            mask_List_pos:= 1;
            Beep();
        END_IF;
        //Display.Descr[1]:= TO_USINT(cfgIO.Link_toCodes[TO_DINT(mask_List[mask_List_pos])]) - TO_USINT(MaskMng.sig_start) + 1;
        //Display.Descr[2]:= mask_List[mask_List_pos];
    END_IF;  
    
END_FUNCTION

(*				END IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

FUNCTION Hide_Baudrate_Class_UP
    CASE __TMP_UDINT OF
        1200:
            __TMP_UDINT:= 2400;
        2400:
            __TMP_UDINT:= 4800;
        4800:
            __TMP_UDINT:= 9600;
        9600:
            __TMP_UDINT:= 19200;
        19200:
            __TMP_UDINT:= 38400;
        38400:
            __TMP_UDINT:= 57600;
        57600:
            __TMP_UDINT:= 76800;
        76800:
            __TMP_UDINT:= 115200;
        115200:
            __TMP_UDINT:= 375000;
        375000:
            Beep();
            __TMP_UDINT:= 1200;
    END_CASE;
END_FUNCTION

FUNCTION Hide_Baudrate_Class_DOWN
    CASE __TMP_UDINT OF
        1200:
            Beep();
            __TMP_UDINT:= 375000;
        2400:
            __TMP_UDINT:= 1200;
        4800:
            __TMP_UDINT:= 2400;
        9600:
            __TMP_UDINT:= 4800;
        19200:
            __TMP_UDINT:= 9600;
        38400:
            __TMP_UDINT:= 19200;
        57600:
            __TMP_UDINT:= 38400;
        76800:
            __TMP_UDINT:= 57600;
        115200:
            __TMP_UDINT:= 76800;
        375000:
            __TMP_UDINT:= 115200;
    END_CASE;
END_FUNCTION

(*				END IMPORT CODE					*)

(*				BEGIN IMPORT CODE				*)

FUNCTION UpdateCurPos
// Отображение расширенного описания текущей позиции
    IF (ModePRG) THEN
        Display.Hint:= Display.Descr[CurRow_modePRG];
        CurList_Position:= Position + CurRow_modePRG - 1;
    ELSE
        Display.Hint:= Display.Descr[CurRow];
        CurList_Position:= Position + CurRow - 1;
    END_IF;
END_FUNCTION

FUNCTION Upgrade_1_PRG
    IF (Upgrade.En_FirmWare) THEN
        Upgrade.En_Upgrade:= TRUE;
        GotoMask(Upgrade_Progress);
    ELSE
        Upgrade_1_ENTER();
    END_IF;
END_FUNCTION

FUNCTION Upgrade_1_ENTER
	// Upgrade.En_Read:= TRUE;
    Upgrade.Check_Upgrade:= TRUE;
END_FUNCTION

FUNCTION Upgrade_OS_ESC
	Upgrade.REQ_OS_upgrade:= FALSE;
    GotoLoop(UPGRADE);
END_FUNCTION

FUNCTION Upgrade_OS_PRG
	Upgrade.ANSW_OS_upgrade:= TRUE;
    GotoMask(Upgrade_Progress);
END_FUNCTION

(*				END IMPORT CODE					*)
