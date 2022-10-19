
-- VHDL netlist produced by program ldbanno, Version Diamond (64-bit) 3.12.0.240.2
-- ldbanno -n VHDL -o RGBLED_impl1_vho.vho -w -neg -gui RGBLED_impl1.ncd 
-- Netlist created on Wed Oct 19 21:03:20 2022
-- Netlist written on Wed Oct 19 21:03:26 2022
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
    led_c_2_pad: xo2iobuf0001
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
    led_c_1_pad: xo2iobuf0001
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
    led_c_0_pad: xo2iobuf0001
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

-- entity RGBLED
  library IEEE, vital2000, MACHXO2;
  use IEEE.STD_LOGIC_1164.all;
  use vital2000.vital_timing.all;
  use MACHXO2.COMPONENTS.ALL;

  entity RGBLED is
    port (sw: in Std_logic_vector (2 downto 0); 
          led: out Std_logic_vector (2 downto 0));



  end RGBLED;

  architecture Structure of RGBLED is
    signal led_c_2_c: Std_logic;
    signal led_c_1_c: Std_logic;
    signal led_c_0_c: Std_logic;
    signal VCCI: Std_logic;
    component led_2_B
      port (PADDO: in Std_logic; led2: out Std_logic);
    end component;
    component led_1_B
      port (PADDO: in Std_logic; led1: out Std_logic);
    end component;
    component led_0_B
      port (PADDO: in Std_logic; led0: out Std_logic);
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
    led_2_I: led_2_B
      port map (PADDO=>led_c_2_c, led2=>led(2));
    led_1_I: led_1_B
      port map (PADDO=>led_c_1_c, led1=>led(1));
    led_0_I: led_0_B
      port map (PADDO=>led_c_0_c, led0=>led(0));
    sw_2_I: sw_2_B
      port map (PADDI=>led_c_2_c, sw2=>sw(2));
    sw_1_I: sw_1_B
      port map (PADDI=>led_c_1_c, sw1=>sw(1));
    sw_0_I: sw_0_B
      port map (PADDI=>led_c_0_c, sw0=>sw(0));
    VHI_INST: VHI
      port map (Z=>VCCI);
    PUR_INST: PUR
      port map (PUR=>VCCI);
    GSR_INST: GSR
      port map (GSR=>VCCI);
  end Structure;



  library IEEE, vital2000, MACHXO2;
  configuration Structure_CON of RGBLED is
    for Structure
    end for;
  end Structure_CON;


