struct type_4 {
    member: f32,
    member_1: f32,
}

struct VertexOutput {
    @builtin(position) member: vec4<f32>,
    @location(0) member_1: f32,
    @location(1) member_2: f32,
    @location(2) member_3: f32,
    @location(3) member_4: f32,
    @location(4) member_5: f32,
    @location(5) member_6: f32,
    @location(6) member_7: f32,
}

var<private> a0_1: f32;
var<private> a1_1: f32;
var<private> a2_1: f32;
var<private> a3_1: f32;
var<private> a4_1: f32;
var<private> a5_1: f32;
var<private> a6_1: f32;
var<private> a7_1: f32;
var<private> a8_1: f32;
var<private> gl_Position: vec4<f32> = vec4<f32>(0f, 0f, 0f, 1f);
var<private> vo0_: f32;
var<private> vi0_1: f32;
var<private> vo1_: f32;
var<private> vi1_1: f32;
var<private> vo2_: f32;
var<private> vi2_1: f32;
var<private> vo3_: f32;
var<private> vi3_1: f32;
var<private> vo4_: f32;
var<private> vi4_1: f32;
var<private> vo5_: f32;
var<private> vi5_1: f32;
var<private> vo6_: f32;
var<private> vi6_1: f32;
var<private> fragColor: vec4<f32>;
@group(0) @binding(0) 
var<uniform> ub: type_4;
@group(0) @binding(1) 
var tex: texture_2d<f32>;
@group(0) @binding(2) 
var smp: sampler;

fn ch_r(param: f32, param_1: f32, param_2: f32, param_3: f32, param_4: f32, param_5: f32, param_6: f32, param_7: f32, param_8: f32, param_9: f32, param_10: f32, param_11: f32, param_12: f32) -> f32 {
    return ((param_5 * param_9) + ((1f - param_5) * param_2));
}

fn ch_g(param_13: f32, param_14: f32, param_15: f32, param_16: f32, param_17: f32, param_18: f32, param_19: f32, param_20: f32, param_21: f32, param_22: f32, param_23: f32, param_24: f32, param_25: f32) -> f32 {
    return ((param_18 * param_23) + ((1f - param_18) * param_16));
}

fn ch_b(param_26: f32, param_27: f32, param_28: f32, param_29: f32, param_30: f32, param_31: f32, param_32: f32, param_33: f32, param_34: f32, param_35: f32, param_36: f32, param_37: f32, param_38: f32) -> f32 {
    return ((param_31 * param_37) + ((1f - param_31) * param_30));
}

fn ch_a(param_39: f32, param_40: f32, param_41: f32, param_42: f32, param_43: f32, param_44: f32, param_45: f32, param_46: f32, param_47: f32, param_48: f32, param_49: f32, param_50: f32, param_51: f32) -> f32 {
    return (param_51 * (param_44 + ((1f - param_44) * param_45)));
}

fn vp_x(param_52: f32, param_53: f32, param_54: f32, param_55: f32, param_56: f32, param_57: f32, param_58: f32, param_59: f32, param_60: f32, param_61: f32, param_62: f32) -> f32 {
    return (((param_52 / param_61) * 2f) - 1f);
}

fn vp_y(param_63: f32, param_64: f32, param_65: f32, param_66: f32, param_67: f32, param_68: f32, param_69: f32, param_70: f32, param_71: f32, param_72: f32, param_73: f32) -> f32 {
    return (1f - ((param_64 / param_73) * 2f));
}

fn vv_0_(param_74: f32, param_75: f32, param_76: f32, param_77: f32, param_78: f32, param_79: f32, param_80: f32, param_81: f32, param_82: f32, param_83: f32, param_84: f32) -> f32 {
    return param_76;
}

fn vv_1_(param_85: f32, param_86: f32, param_87: f32, param_88: f32, param_89: f32, param_90: f32, param_91: f32, param_92: f32, param_93: f32, param_94: f32, param_95: f32) -> f32 {
    return param_88;
}

fn vv_2_(param_96: f32, param_97: f32, param_98: f32, param_99: f32, param_100: f32, param_101: f32, param_102: f32, param_103: f32, param_104: f32, param_105: f32, param_106: f32) -> f32 {
    return param_100;
}

fn vv_3_(param_107: f32, param_108: f32, param_109: f32, param_110: f32, param_111: f32, param_112: f32, param_113: f32, param_114: f32, param_115: f32, param_116: f32, param_117: f32) -> f32 {
    return param_112;
}

fn vv_4_(param_118: f32, param_119: f32, param_120: f32, param_121: f32, param_122: f32, param_123: f32, param_124: f32, param_125: f32, param_126: f32, param_127: f32, param_128: f32) -> f32 {
    return param_124;
}

fn vv_5_(param_129: f32, param_130: f32, param_131: f32, param_132: f32, param_133: f32, param_134: f32, param_135: f32, param_136: f32, param_137: f32, param_138: f32, param_139: f32) -> f32 {
    return param_136;
}

fn vv_6_(param_140: f32, param_141: f32, param_142: f32, param_143: f32, param_144: f32, param_145: f32, param_146: f32, param_147: f32, param_148: f32, param_149: f32, param_150: f32) -> f32 {
    return param_148;
}

fn vs_main_1() {
    let _e33 = a0_1;
    let _e34 = a1_1;
    let _e35 = a2_1;
    let _e36 = a3_1;
    let _e37 = a4_1;
    let _e38 = a5_1;
    let _e39 = a6_1;
    let _e40 = a7_1;
    let _e41 = a8_1;
    let _e43 = ub.member;
    let _e45 = ub.member_1;
    let _e46 = vp_x(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    let _e47 = vp_y(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    gl_Position = vec4<f32>(_e46, _e47, 0f, 1f);
    let _e49 = vv_0_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo0_ = _e49;
    let _e50 = vv_1_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo1_ = _e50;
    let _e51 = vv_2_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo2_ = _e51;
    let _e52 = vv_3_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo3_ = _e52;
    let _e53 = vv_4_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo4_ = _e53;
    let _e54 = vv_5_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo5_ = _e54;
    let _e55 = vv_6_(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e40, _e41, _e43, _e45);
    vo6_ = _e55;
    return;
}

fn fs_main_1() {
    let _e33 = vi0_1;
    let _e34 = vi1_1;
    let _e35 = vi2_1;
    let _e36 = vi3_1;
    let _e37 = vi4_1;
    let _e38 = vi5_1;
    let _e39 = vi6_1;
    let _e41 = ub.member;
    let _e43 = ub.member_1;
    let _e45 = textureSampleLevel(tex, smp, vec2<f32>(_e33, _e34), 0f);
    let _e50 = ch_r(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e41, _e43, _e45.x, _e45.y, _e45.z, _e45.w);
    let _e51 = ch_g(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e41, _e43, _e45.x, _e45.y, _e45.z, _e45.w);
    let _e52 = ch_b(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e41, _e43, _e45.x, _e45.y, _e45.z, _e45.w);
    let _e53 = ch_a(_e33, _e34, _e35, _e36, _e37, _e38, _e39, _e41, _e43, _e45.x, _e45.y, _e45.z, _e45.w);
    fragColor = vec4<f32>(_e50, _e51, _e52, _e53);
    return;
}

@vertex 
fn vs_main(@location(0) a0_: f32, @location(1) a1_: f32, @location(2) a2_: f32, @location(3) a3_: f32, @location(4) a4_: f32, @location(5) a5_: f32, @location(6) a6_: f32, @location(7) a7_: f32, @location(8) a8_: f32) -> VertexOutput {
    a0_1 = a0_;
    a1_1 = a1_;
    a2_1 = a2_;
    a3_1 = a3_;
    a4_1 = a4_;
    a5_1 = a5_;
    a6_1 = a6_;
    a7_1 = a7_;
    a8_1 = a8_;
    vs_main_1();
    let _e26 = gl_Position;
    let _e27 = vo0_;
    let _e28 = vo1_;
    let _e29 = vo2_;
    let _e30 = vo3_;
    let _e31 = vo4_;
    let _e32 = vo5_;
    let _e33 = vo6_;
    return VertexOutput(_e26, _e27, _e28, _e29, _e30, _e31, _e32, _e33);
}

@fragment 
fn fs_main(@location(0) vi0_: f32, @location(1) vi1_: f32, @location(2) vi2_: f32, @location(3) vi3_: f32, @location(4) vi4_: f32, @location(5) vi5_: f32, @location(6) vi6_: f32) -> @location(0) vec4<f32> {
    vi0_1 = vi0_;
    vi1_1 = vi1_;
    vi2_1 = vi2_;
    vi3_1 = vi3_;
    vi4_1 = vi4_;
    vi5_1 = vi5_;
    vi6_1 = vi6_;
    fs_main_1();
    let _e15 = fragColor;
    return _e15;
}
