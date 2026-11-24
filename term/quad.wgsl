struct type_4 {
    member: f32,
    member_1: f32,
}

struct VertexOutput {
    @builtin(position) member: vec4<f32>,
    @location(0) member_1: f32,
    @location(1) member_2: f32,
    @location(2) member_3: f32,
}

var<private> a0_1: f32;
var<private> a1_1: f32;
var<private> a2_1: f32;
var<private> a3_1: f32;
var<private> a4_1: f32;
var<private> gl_Position: vec4<f32> = vec4<f32>(0f, 0f, 0f, 1f);
var<private> vo0_: f32;
var<private> vi0_1: f32;
var<private> vo1_: f32;
var<private> vi1_1: f32;
var<private> vo2_: f32;
var<private> vi2_1: f32;
var<private> fragColor: vec4<f32>;
@group(0) @binding(0) 
var<uniform> ub: type_4;

fn ch_r(param: f32, param_1: f32, param_2: f32, param_3: f32, param_4: f32) -> f32 {
    return param;
}

fn ch_g(param_5: f32, param_6: f32, param_7: f32, param_8: f32, param_9: f32) -> f32 {
    return param_6;
}

fn ch_b(param_10: f32, param_11: f32, param_12: f32, param_13: f32, param_14: f32) -> f32 {
    return param_12;
}

fn vp_x(param_15: f32, param_16: f32, param_17: f32, param_18: f32, param_19: f32, param_20: f32, param_21: f32) -> f32 {
    return (((param_15 / param_20) * 2f) - 1f);
}

fn vp_y(param_22: f32, param_23: f32, param_24: f32, param_25: f32, param_26: f32, param_27: f32, param_28: f32) -> f32 {
    return (1f - ((param_23 / param_28) * 2f));
}

fn vv_0_(param_29: f32, param_30: f32, param_31: f32, param_32: f32, param_33: f32, param_34: f32, param_35: f32) -> f32 {
    return param_31;
}

fn vv_1_(param_36: f32, param_37: f32, param_38: f32, param_39: f32, param_40: f32, param_41: f32, param_42: f32) -> f32 {
    return param_39;
}

fn vv_2_(param_43: f32, param_44: f32, param_45: f32, param_46: f32, param_47: f32, param_48: f32, param_49: f32) -> f32 {
    return param_47;
}

fn vs_main_1() {
    let _e19 = a0_1;
    let _e20 = a1_1;
    let _e21 = a2_1;
    let _e22 = a3_1;
    let _e23 = a4_1;
    let _e25 = ub.member;
    let _e27 = ub.member_1;
    let _e28 = vp_x(_e19, _e20, _e21, _e22, _e23, _e25, _e27);
    let _e29 = vp_y(_e19, _e20, _e21, _e22, _e23, _e25, _e27);
    gl_Position = vec4<f32>(_e28, _e29, 0f, 1f);
    let _e31 = vv_0_(_e19, _e20, _e21, _e22, _e23, _e25, _e27);
    vo0_ = _e31;
    let _e32 = vv_1_(_e19, _e20, _e21, _e22, _e23, _e25, _e27);
    vo1_ = _e32;
    let _e33 = vv_2_(_e19, _e20, _e21, _e22, _e23, _e25, _e27);
    vo2_ = _e33;
    return;
}

fn fs_main_1() {
    let _e19 = vi0_1;
    let _e20 = vi1_1;
    let _e21 = vi2_1;
    let _e23 = ub.member;
    let _e25 = ub.member_1;
    let _e26 = ch_r(_e19, _e20, _e21, _e23, _e25);
    let _e27 = ch_g(_e19, _e20, _e21, _e23, _e25);
    let _e28 = ch_b(_e19, _e20, _e21, _e23, _e25);
    fragColor = vec4<f32>(_e26, _e27, _e28, 1f);
    return;
}

@vertex 
fn vs_main(@location(0) a0_: f32, @location(1) a1_: f32, @location(2) a2_: f32, @location(3) a3_: f32, @location(4) a4_: f32) -> VertexOutput {
    a0_1 = a0_;
    a1_1 = a1_;
    a2_1 = a2_;
    a3_1 = a3_;
    a4_1 = a4_;
    vs_main_1();
    let _e14 = gl_Position;
    let _e15 = vo0_;
    let _e16 = vo1_;
    let _e17 = vo2_;
    return VertexOutput(_e14, _e15, _e16, _e17);
}

@fragment 
fn fs_main(@location(0) vi0_: f32, @location(1) vi1_: f32, @location(2) vi2_: f32) -> @location(0) vec4<f32> {
    vi0_1 = vi0_;
    vi1_1 = vi1_;
    vi2_1 = vi2_;
    fs_main_1();
    let _e7 = fragColor;
    return _e7;
}
