/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 5.4.0-6ubuntu1~16.04.4 -O2 -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "var8_multi.v:2" *)
module var8_multi(A, B, C, D, E, F, G, H, valid);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  (* src = "var8_multi.v:3" *)
  input A;
  (* src = "var8_multi.v:3" *)
  input B;
  (* src = "var8_multi.v:3" *)
  input C;
  (* src = "var8_multi.v:3" *)
  input D;
  (* src = "var8_multi.v:3" *)
  input E;
  (* src = "var8_multi.v:3" *)
  input F;
  (* src = "var8_multi.v:3" *)
  input G;
  (* src = "var8_multi.v:3" *)
  input H;
  (* src = "var8_multi.v:4" *)
  output valid;
  assign _000_ = ~(A & D);
  assign _011_ = ~(_000_ ^ B);
  assign _022_ = ~(_011_ & E);
  assign _033_ = A ^ B;
  assign _044_ = E & D;
  assign _053_ = _044_ & _033_;
  assign _054_ = ~D;
  assign _055_ = A & B;
  assign _056_ = _055_ | _054_;
  assign _057_ = ~((_056_ & _022_) | _053_);
  assign _058_ = ~F;
  assign _059_ = ~(A ^ D);
  assign _060_ = ~(_011_ ^ E);
  assign _061_ = ~((_060_ & _059_) | _058_);
  assign _062_ = _055_ & D;
  assign _063_ = _053_ | _062_;
  assign _064_ = ~((_061_ & _057_) | _063_);
  assign _065_ = _059_ ^ _058_;
  assign _066_ = E & G;
  assign _067_ = ~(_066_ & _065_);
  assign _068_ = ~_067_;
  assign _069_ = _059_ & F;
  assign _070_ = ~(_060_ ^ _069_);
  assign _071_ = _070_ & _068_;
  assign _072_ = _061_ ^ _057_;
  assign _073_ = _072_ ^ G;
  assign _074_ = _073_ ^ _071_;
  assign _075_ = _066_ | _065_;
  assign _076_ = _075_ & H;
  assign _077_ = ~(_076_ & _067_);
  assign _078_ = _077_ & _070_;
  assign _079_ = _070_ ^ _068_;
  assign _080_ = ~(_079_ & H);
  assign _081_ = ~H;
  assign _082_ = ~(_067_ & H);
  assign _083_ = ~(E | G);
  assign _084_ = _075_ ? _082_ : _083_;
  assign _085_ = _084_ | _081_;
  assign _086_ = ~((_085_ | _078_) & _080_);
  assign _087_ = _086_ ^ _074_;
  assign _088_ = ~((_083_ | _066_) & _081_);
  assign _089_ = _088_ & _084_;
  assign _090_ = _089_ | _079_;
  assign _091_ = _090_ | _087_;
  assign _092_ = _072_ & G;
  assign _093_ = _073_ & _071_;
  assign _094_ = _093_ | _092_;
  assign _095_ = ~(_094_ & _091_);
  assign _096_ = _095_ | _064_;
  assign _097_ = ~(_086_ & _074_);
  assign _098_ = _064_ | _097_;
  assign _099_ = ~G;
  assign _100_ = C & D;
  assign _101_ = ~_100_;
  assign _102_ = C | D;
  assign _103_ = _102_ & _101_;
  assign _104_ = C ^ E;
  assign _105_ = _104_ | H;
  assign _106_ = ~(_105_ | _103_);
  assign _107_ = _100_ ^ A;
  assign _108_ = _102_ & E;
  assign _109_ = ~(_108_ & _107_);
  assign _110_ = ~_109_;
  assign _111_ = _000_ & C;
  assign _112_ = _111_ ^ _033_;
  assign _113_ = _112_ & E;
  assign _114_ = _113_ | _110_;
  assign _115_ = ~C;
  assign _116_ = ~A;
  assign _117_ = _116_ & B;
  assign _118_ = _116_ | B;
  assign _119_ = ~((_118_ & _115_) | _117_);
  assign _120_ = ~(_119_ | D);
  assign _121_ = _055_ & C;
  assign _122_ = ~_121_;
  assign _123_ = _119_ & D;
  assign _124_ = ~((_123_ & _122_) | _120_);
  assign _125_ = _124_ ^ E;
  assign _126_ = ~(_125_ ^ _114_);
  assign _127_ = _109_ & E;
  assign _128_ = ~(_127_ ^ _112_);
  assign _129_ = ~(_108_ ^ _107_);
  assign _130_ = _129_ & F;
  assign _131_ = ~(_130_ & _128_);
  assign _132_ = _127_ ^ _112_;
  assign _133_ = ~(_129_ | F);
  assign _134_ = ~(_133_ & _132_);
  assign _135_ = _126_ ? _131_ : _134_;
  assign _136_ = _130_ | _128_;
  assign _137_ = E ? _054_ : _103_;
  assign _001_ = _137_ & _105_;
  assign _002_ = ~((_133_ | _132_) & _001_);
  assign _003_ = _002_ & _136_;
  assign _004_ = _126_ ? _131_ : _003_;
  assign _005_ = ~((_004_ | _099_) & (_135_ | _106_));
  assign _006_ = ~(_125_ & _114_);
  assign _007_ = _000_ | _115_;
  assign _008_ = ~(A | B);
  assign _009_ = ~(_055_ | C);
  assign _010_ = ~(_009_ | _008_);
  assign _012_ = _010_ | _123_;
  assign _013_ = ~((_012_ & _007_) | (_124_ & E));
  assign _014_ = ~((_013_ & _006_) | _110_);
  assign _015_ = _128_ & _129_;
  assign _016_ = ~((_015_ & _126_) | _058_);
  assign _017_ = _016_ | _014_;
  assign _018_ = _100_ & _033_;
  assign _019_ = _018_ | _055_;
  assign _020_ = ~_019_;
  assign _021_ = ~_018_;
  assign _023_ = _055_ ^ C;
  assign _024_ = _023_ & D;
  assign _025_ = _121_ | _033_;
  assign _026_ = ~((_025_ | _024_) & _021_);
  assign _027_ = _018_ | _008_;
  assign _028_ = _027_ & F;
  assign _029_ = _028_ & _026_;
  assign _030_ = _023_ ^ _054_;
  assign _031_ = _030_ & _099_;
  assign _032_ = ~(_031_ | _008_);
  assign _034_ = _030_ | _099_;
  assign _035_ = ~(_034_ & _081_);
  assign _036_ = _035_ | _032_;
  assign _037_ = ~_027_;
  assign _038_ = ~((_027_ & _081_) | _034_);
  assign _039_ = ~((_031_ & _008_) | _081_);
  assign _040_ = _039_ | _038_;
  assign _041_ = ~((_032_ & _037_) | _040_);
  assign _042_ = ~((_041_ | _026_) & (_027_ | _081_));
  assign _043_ = ~((_042_ & _058_) | (_036_ & _029_));
  assign _045_ = _109_ & _007_;
  assign _046_ = ~(H & F);
  assign _047_ = _046_ | _019_;
  assign _048_ = ~((_047_ | _027_) & _045_);
  assign _049_ = ~((_016_ & _014_) | _048_);
  assign _050_ = ~((_043_ | _020_) & _049_);
  assign _051_ = ~((_017_ & _005_) | _050_);
  assign _052_ = ~((_094_ | _091_) & _051_);
  assign valid = ~((_098_ & _096_) | _052_);
endmodule
