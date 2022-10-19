
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.12.0.240.2
-- ldbanno -n VHDL -o LED_impl1_mapvho.vho -w -neg -gui LED_impl1_map.ncd 
-- Netlist created on Wed Oct 19 20:50:57 2022
-- Netlist written on Wed Oct 19 20:50:59 2022
-- Design is for device LCMXO2-4000HC
-- Design is for package CSBGA132
-- Design is for performance grade 4

-- entity xo2iobuf
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf is
    port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf : ENTITY IS TRUE;

  end xo2iobuf;

  architecture Structure of xo2iobuf is
  begin
    INST5: OBZPD
      port map (I=>I, T=>T, O=>PAD);
  end Structure;

-- entity gnd
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity gnd is
    port (PWR0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF gnd : ENTITY IS TRUE;

  end gnd;

  architecture Structure of gnd is
  begin
    INST1: VLO
      port map (Z=>PWR0);
  end Structure;

-- entity led_7_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_7_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_7_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led7	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led7: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_7_B : ENTITY IS TRUE;

  end led_7_B;

  architecture Structure of led_7_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led7_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_7: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led7_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led7_out)
    VARIABLE led7_zd         	: std_logic := 'X';
    VARIABLE led7_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led7_zd 	:= led7_out;

    VitalPathDelay01 (
      OutSignal => led7, OutSignalName => "led7", OutTemp => led7_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led7,
                           PathCondition => TRUE)),
      GlitchData => led7_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_6_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_6_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_6_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led6	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led6: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_6_B : ENTITY IS TRUE;

  end led_6_B;

  architecture Structure of led_6_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led6_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_6: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led6_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led6_out)
    VARIABLE led6_zd         	: std_logic := 'X';
    VARIABLE led6_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led6_zd 	:= led6_out;

    VitalPathDelay01 (
      OutSignal => led6, OutSignalName => "led6", OutTemp => led6_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led6,
                           PathCondition => TRUE)),
      GlitchData => led6_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_5_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_5_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_5_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led5	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led5: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_5_B : ENTITY IS TRUE;

  end led_5_B;

  architecture Structure of led_5_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led5_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_5: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led5_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led5_out)
    VARIABLE led5_zd         	: std_logic := 'X';
    VARIABLE led5_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led5_zd 	:= led5_out;

    VitalPathDelay01 (
      OutSignal => led5, OutSignalName => "led5", OutTemp => led5_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led5,
                           PathCondition => TRUE)),
      GlitchData => led5_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_4_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_4_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_4_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led4	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led4: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_4_B : ENTITY IS TRUE;

  end led_4_B;

  architecture Structure of led_4_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led4_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_4: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led4_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led4_out)
    VARIABLE led4_zd         	: std_logic := 'X';
    VARIABLE led4_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led4_zd 	:= led4_out;

    VitalPathDelay01 (
      OutSignal => led4, OutSignalName => "led4", OutTemp => led4_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led4,
                           PathCondition => TRUE)),
      GlitchData => led4_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_3_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led3	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led3: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_3_B : ENTITY IS TRUE;

  end led_3_B;

  architecture Structure of led_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led3_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_3: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led3_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led3_out)
    VARIABLE led3_zd         	: std_logic := 'X';
    VARIABLE led3_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led3_zd 	:= led3_out;

    VitalPathDelay01 (
      OutSignal => led3, OutSignalName => "led3", OutTemp => led3_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led3,
                           PathCondition => TRUE)),
      GlitchData => led3_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_2_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led2	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led2: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_2_B : ENTITY IS TRUE;

  end led_2_B;

  architecture Structure of led_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led2_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_2: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led2_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led2_out)
    VARIABLE led2_zd         	: std_logic := 'X';
    VARIABLE led2_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led2_zd 	:= led2_out;

    VitalPathDelay01 (
      OutSignal => led2, OutSignalName => "led2", OutTemp => led2_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led2,
                           PathCondition => TRUE)),
      GlitchData => led2_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_1_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led1	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led1: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_1_B : ENTITY IS TRUE;

  end led_1_B;

  architecture Structure of led_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led1_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_1: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led1_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led1_out)
    VARIABLE led1_zd         	: std_logic := 'X';
    VARIABLE led1_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led1_zd 	:= led1_out;

    VitalPathDelay01 (
      OutSignal => led1, OutSignalName => "led1", OutTemp => led1_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led1,
                           PathCondition => TRUE)),
      GlitchData => led1_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity led_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity led_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "led_0_B";

      tipd_PADDO  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_PADDO_led0	 : VitalDelayType01 := (0 ns, 0 ns));

    port (PADDO: in Std_logic; led0: out Std_logic);

    ATTRIBUTE Vital_Level0 OF led_0_B : ENTITY IS TRUE;

  end led_0_B;

  architecture Structure of led_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDO_ipd 	: std_logic := 'X';
    signal led0_out 	: std_logic := 'X';

    signal GNDI: Std_logic;
    component xo2iobuf
      port (I: in Std_logic; T: in Std_logic; PAD: out Std_logic);
    end component;
    component gnd
      port (PWR0: out Std_logic);
    end component;
  begin
    led_pad_0: xo2iobuf
      port map (I=>PADDO_ipd, T=>GNDI, PAD=>led0_out);
    DRIVEGND: gnd
      port map (PWR0=>GNDI);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(PADDO_ipd, PADDO, tipd_PADDO);
    END BLOCK;

    VitalBehavior : PROCESS (PADDO_ipd, led0_out)
    VARIABLE led0_zd         	: std_logic := 'X';
    VARIABLE led0_GlitchData 	: VitalGlitchDataType;


    BEGIN

    IF (TimingChecksOn) THEN

    END IF;

    led0_zd 	:= led0_out;

    VitalPathDelay01 (
      OutSignal => led0, OutSignalName => "led0", OutTemp => led0_zd,
      Paths      => (0 => (InputChangeTime => PADDO_ipd'last_event,
                           PathDelay => tpd_PADDO_led0,
                           PathCondition => TRUE)),
      GlitchData => led0_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity xo2iobuf0001
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity xo2iobuf0001 is
    port (Z: out Std_logic; PAD: in Std_logic);

    ATTRIBUTE Vital_Level0 OF xo2iobuf0001 : ENTITY IS TRUE;

  end xo2iobuf0001;

  architecture Structure of xo2iobuf0001 is
  begin
    INST1: IBPD
      port map (I=>PAD, O=>Z);
  end Structure;

-- entity key_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_3_B";

      tipd_key3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key3 	: VitalDelayType := 0 ns;
      tpw_key3_posedge	: VitalDelayType := 0 ns;
      tpw_key3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_3_B : ENTITY IS TRUE;

  end key_3_B;

  architecture Structure of key_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key3_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led_c_3_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>key3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key3_ipd, key3, tipd_key3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key3_key3          	: x01 := '0';
    VARIABLE periodcheckinfo_key3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key3_ipd,
        TestSignalName => "key3",
        Period => tperiod_key3,
        PulseWidthHigh => tpw_key3_posedge,
        PulseWidthLow => tpw_key3_negedge,
        PeriodData => periodcheckinfo_key3,
        Violation => tviol_key3_key3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key3_ipd'last_event,
                           PathDelay => tpd_key3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity key_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_2_B";

      tipd_key2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key2 	: VitalDelayType := 0 ns;
      tpw_key2_posedge	: VitalDelayType := 0 ns;
      tpw_key2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_2_B : ENTITY IS TRUE;

  end key_2_B;

  architecture Structure of key_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key2_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led_c_2_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>key2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key2_ipd, key2, tipd_key2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key2_key2          	: x01 := '0';
    VARIABLE periodcheckinfo_key2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key2_ipd,
        TestSignalName => "key2",
        Period => tperiod_key2,
        PulseWidthHigh => tpw_key2_posedge,
        PulseWidthLow => tpw_key2_negedge,
        PeriodData => periodcheckinfo_key2,
        Violation => tviol_key2_key2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key2_ipd'last_event,
                           PathDelay => tpd_key2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity key_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_1_B";

      tipd_key1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key1 	: VitalDelayType := 0 ns;
      tpw_key1_posedge	: VitalDelayType := 0 ns;
      tpw_key1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_1_B : ENTITY IS TRUE;

  end key_1_B;

  architecture Structure of key_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key1_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led_c_1_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>key1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key1_ipd, key1, tipd_key1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key1_key1          	: x01 := '0';
    VARIABLE periodcheckinfo_key1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key1_ipd,
        TestSignalName => "key1",
        Period => tperiod_key1,
        PulseWidthHigh => tpw_key1_posedge,
        PulseWidthLow => tpw_key1_negedge,
        PeriodData => periodcheckinfo_key1,
        Violation => tviol_key1_key1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key1_ipd'last_event,
                           PathDelay => tpd_key1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity key_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity key_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "key_0_B";

      tipd_key0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_key0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_key0 	: VitalDelayType := 0 ns;
      tpw_key0_posedge	: VitalDelayType := 0 ns;
      tpw_key0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; key0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF key_0_B : ENTITY IS TRUE;

  end key_0_B;

  architecture Structure of key_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal key0_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    led_c_0_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>key0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(key0_ipd, key0, tipd_key0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, key0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_key0_key0          	: x01 := '0';
    VARIABLE periodcheckinfo_key0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => key0_ipd,
        TestSignalName => "key0",
        Period => tperiod_key0,
        PulseWidthHigh => tpw_key0_posedge,
        PulseWidthLow => tpw_key0_negedge,
        PeriodData => periodcheckinfo_key0,
        Violation => tviol_key0_key0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => key0_ipd'last_event,
                           PathDelay => tpd_key0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_3_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_3_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_3_B";

      tipd_sw3  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw3_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw3 	: VitalDelayType := 0 ns;
      tpw_sw3_posedge	: VitalDelayType := 0 ns;
      tpw_sw3_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw3: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_3_B : ENTITY IS TRUE;

  end sw_3_B;

  architecture Structure of sw_3_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw3_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    n2_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>sw3_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw3_ipd, sw3, tipd_sw3);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw3_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw3_sw3          	: x01 := '0';
    VARIABLE periodcheckinfo_sw3	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw3_ipd,
        TestSignalName => "sw3",
        Period => tperiod_sw3,
        PulseWidthHigh => tpw_sw3_posedge,
        PulseWidthLow => tpw_sw3_negedge,
        PeriodData => periodcheckinfo_sw3,
        Violation => tviol_sw3_sw3,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw3_ipd'last_event,
                           PathDelay => tpd_sw3_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_2_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_2_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_2_B";

      tipd_sw2  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw2_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw2 	: VitalDelayType := 0 ns;
      tpw_sw2_posedge	: VitalDelayType := 0 ns;
      tpw_sw2_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw2: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_2_B : ENTITY IS TRUE;

  end sw_2_B;

  architecture Structure of sw_2_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw2_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    n3_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>sw2_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw2_ipd, sw2, tipd_sw2);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw2_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw2_sw2          	: x01 := '0';
    VARIABLE periodcheckinfo_sw2	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw2_ipd,
        TestSignalName => "sw2",
        Period => tperiod_sw2,
        PulseWidthHigh => tpw_sw2_posedge,
        PulseWidthLow => tpw_sw2_negedge,
        PeriodData => periodcheckinfo_sw2,
        Violation => tviol_sw2_sw2,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw2_ipd'last_event,
                           PathDelay => tpd_sw2_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_1_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_1_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_1_B";

      tipd_sw1  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw1_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw1 	: VitalDelayType := 0 ns;
      tpw_sw1_posedge	: VitalDelayType := 0 ns;
      tpw_sw1_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw1: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_1_B : ENTITY IS TRUE;

  end sw_1_B;

  architecture Structure of sw_1_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw1_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    n4_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>sw1_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw1_ipd, sw1, tipd_sw1);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw1_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw1_sw1          	: x01 := '0';
    VARIABLE periodcheckinfo_sw1	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw1_ipd,
        TestSignalName => "sw1",
        Period => tperiod_sw1,
        PulseWidthHigh => tpw_sw1_posedge,
        PulseWidthLow => tpw_sw1_negedge,
        PeriodData => periodcheckinfo_sw1,
        Violation => tviol_sw1_sw1,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw1_ipd'last_event,
                           PathDelay => tpd_sw1_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity sw_0_B
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity sw_0_B is
    -- miscellaneous vital GENERICs
    GENERIC (
      TimingChecksOn	: boolean := TRUE;
      XOn           	: boolean := FALSE;
      MsgOn         	: boolean := TRUE;
      InstancePath  	: string := "sw_0_B";

      tipd_sw0  	: VitalDelayType01 := (0 ns, 0 ns);
      tpd_sw0_PADDI	 : VitalDelayType01 := (0 ns, 0 ns);
      tperiod_sw0 	: VitalDelayType := 0 ns;
      tpw_sw0_posedge	: VitalDelayType := 0 ns;
      tpw_sw0_negedge	: VitalDelayType := 0 ns);

    port (PADDI: out Std_logic; sw0: in Std_logic);

    ATTRIBUTE Vital_Level0 OF sw_0_B : ENTITY IS TRUE;

  end sw_0_B;

  architecture Structure of sw_0_B is
    ATTRIBUTE Vital_Level0 OF Structure : ARCHITECTURE IS TRUE;

    signal PADDI_out 	: std_logic := 'X';
    signal sw0_ipd 	: std_logic := 'X';

    component xo2iobuf0001
      port (Z: out Std_logic; PAD: in Std_logic);
    end component;
  begin
    n5_pad: xo2iobuf0001
      port map (Z=>PADDI_out, PAD=>sw0_ipd);

    --  INPUT PATH DELAYs
    WireDelay : BLOCK
    BEGIN
      VitalWireDelay(sw0_ipd, sw0, tipd_sw0);
    END BLOCK;

    VitalBehavior : PROCESS (PADDI_out, sw0_ipd)
    VARIABLE PADDI_zd         	: std_logic := 'X';
    VARIABLE PADDI_GlitchData 	: VitalGlitchDataType;

    VARIABLE tviol_sw0_sw0          	: x01 := '0';
    VARIABLE periodcheckinfo_sw0	: VitalPeriodDataType;

    BEGIN

    IF (TimingChecksOn) THEN
      VitalPeriodPulseCheck (
        TestSignal => sw0_ipd,
        TestSignalName => "sw0",
        Period => tperiod_sw0,
        PulseWidthHigh => tpw_sw0_posedge,
        PulseWidthLow => tpw_sw0_negedge,
        PeriodData => periodcheckinfo_sw0,
        Violation => tviol_sw0_sw0,
        MsgOn => MsgOn, XOn => XOn,
        HeaderMsg => InstancePath,
        CheckEnabled => TRUE,
        MsgSeverity => warning);

    END IF;

    PADDI_zd 	:= PADDI_out;

    VitalPathDelay01 (
      OutSignal => PADDI, OutSignalName => "PADDI", OutTemp => PADDI_zd,
      Paths      => (0 => (InputChangeTime => sw0_ipd'last_event,
                           PathDelay => tpd_sw0_PADDI,
                           PathCondition => TRUE)),
      GlitchData => PADDI_GlitchData,
      Mode       => vitaltransport, XOn => XOn, MsgOn => MsgOn);

    END PROCESS;

  end Structure;

-- entity LED
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity LED is
    port (key: in Std_logic_vector (3 downto 0); 
          sw: in Std_logic_vector (3 downto 0); 
          led: out Std_logic_vector (7 downto 0));



  end LED;

  architecture Structure of LED is
    signal led_c_3_c: Std_logic;
    signal led_c_2_c: Std_logic;
    signal led_c_1_c: Std_logic;
    signal led_c_0_c: Std_logic;
    signal n2_c: Std_logic;
    signal n3_c: Std_logic;
    signal n4_c: Std_logic;
    signal n5_c: Std_logic;
    signal VCCI: Std_logic;
    component led_7_B
      port (PADDO: in Std_logic; led7: out Std_logic);
    end component;
    component led_6_B
      port (PADDO: in Std_logic; led6: out Std_logic);
    end component;
    component led_5_B
      port (PADDO: in Std_logic; led5: out Std_logic);
    end component;
    component led_4_B
      port (PADDO: in Std_logic; led4: out Std_logic);
    end component;
    component led_3_B
      port (PADDO: in Std_logic; led3: out Std_logic);
    end component;
    component led_2_B
      port (PADDO: in Std_logic; led2: out Std_logic);
    end component;
    component led_1_B
      port (PADDO: in Std_logic; led1: out Std_logic);
    end component;
    component led_0_B
      port (PADDO: in Std_logic; led0: out Std_logic);
    end component;
    component key_3_B
      port (PADDI: out Std_logic; key3: in Std_logic);
    end component;
    component key_2_B
      port (PADDI: out Std_logic; key2: in Std_logic);
    end component;
    component key_1_B
      port (PADDI: out Std_logic; key1: in Std_logic);
    end component;
    component key_0_B
      port (PADDI: out Std_logic; key0: in Std_logic);
    end component;
    component sw_3_B
      port (PADDI: out Std_logic; sw3: in Std_logic);
    end component;
    component sw_2_B
      port (PADDI: out Std_logic; sw2: in Std_logic);
    end component;
    component sw_1_B
      port (PADDI: out Std_logic; sw1: in Std_logic);
    end component;
    component sw_0_B
      port (PADDI: out Std_logic; sw0: in Std_logic);
    end component;
  begin
    led_7_I: led_7_B
      port map (PADDO=>led_c_3_c, led7=>led(7));
    led_6_I: led_6_B
      port map (PADDO=>led_c_2_c, led6=>led(6));
    led_5_I: led_5_B
      port map (PADDO=>led_c_1_c, led5=>led(5));
    led_4_I: led_4_B
      port map (PADDO=>led_c_0_c, led4=>led(4));
    led_3_I: led_3_B
      port map (PADDO=>n2_c, led3=>led(3));
    led_2_I: led_2_B
      port map (PADDO=>n3_c, led2=>led(2));
    led_1_I: led_1_B
      port map (PADDO=>n4_c, led1=>led(1));
    led_0_I: led_0_B
      port map (PADDO=>n5_c, led0=>led(0));
    key_3_I: key_3_B
      port map (PADDI=>led_c_3_c, key3=>key(3));
    key_2_I: key_2_B
      port map (PADDI=>led_c_2_c, key2=>key(2));
    key_1_I: key_1_B
      port map (PADDI=>led_c_1_c, key1=>key(1));
    key_0_I: key_0_B
      port map (PADDI=>led_c_0_c, key0=>key(0));
    sw_3_I: sw_3_B
      port map (PADDI=>n2_c, sw3=>sw(3));
    sw_2_I: sw_2_B
      port map (PADDI=>n3_c, sw2=>sw(2));
    sw_1_I: sw_1_B
      port map (PADDI=>n4_c, sw1=>sw(1));
    sw_0_I: sw_0_B
      port map (PADDI=>n5_c, sw0=>sw(0));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of LED is
    for Structure
    end for;
  end Structure_CON;


