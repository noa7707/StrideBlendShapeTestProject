/**************************
***** Compiler Parameters *****
***************************
@P EffectName: ColorTransformGroupEffect
@P   - ColorTransformGroup.Transforms: Stride.Rendering.Images.ToneMap, Stride.Rendering.Images.LuminanceToChannelTransform
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 64]
@C    MatrixTransform_id73 => SpriteBase.MatrixTransform
cbuffer Globals [Size: 112]
@C    Texture0TexelSize_id15 => Texturing.Texture0TexelSize
@C    Texture1TexelSize_id17 => Texturing.Texture1TexelSize
@C    Texture2TexelSize_id19 => Texturing.Texture2TexelSize
@C    Texture3TexelSize_id21 => Texturing.Texture3TexelSize
@C    Texture4TexelSize_id23 => Texturing.Texture4TexelSize
@C    Texture5TexelSize_id25 => Texturing.Texture5TexelSize
@C    Texture6TexelSize_id27 => Texturing.Texture6TexelSize
@C    Texture7TexelSize_id29 => Texturing.Texture7TexelSize
@C    Texture8TexelSize_id31 => Texturing.Texture8TexelSize
@C    Texture9TexelSize_id33 => Texturing.Texture9TexelSize
@C    WhitePoint_id75 => ToneMapHejl2OperatorShader.WhitePoint.ToneMapOperator.Transforms[0]
@C    KeyValue_id80 => ToneMapShader.KeyValue.Transforms[0]
@C    LuminanceLocalFactor_id81 => ToneMapShader.LuminanceLocalFactor.Transforms[0]
@C    LuminanceAverageGlobal_id82 => ToneMapShader.LuminanceAverageGlobal.Transforms[0]
@C    Contrast_id83 => ToneMapShader.Contrast.Transforms[0]
@C    Brightness_id84 => ToneMapShader.Brightness.Transforms[0]
@C    Exposure_id85 => ToneMapShader.Exposure.Transforms[0]
***************************
******  Resources    ******
***************************
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    Sampler_id42 => Texturing.Sampler [Stage: Pixel, Slot: (0-0)]
@R    Texture0_id14 => Texturing.Texture0 [Stage: Pixel, Slot: (0-0)]
@R    Globals => Globals [Stage: Pixel, Slot: (0-0)]
***************************
*****     Sources     *****
***************************
@S    ColorTransformGroupShader => fb26384f5b6470ecead6ca44fcd040e7
@S    ImageEffectShader => 8064e30cc02e5eb4052f420259dbf05e
@S    SpriteBase => 5a7aa9dfd5b5c7613053f4f66c79ca0d
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    ColorTransformShader => 72c2b9c4ae27125468616d070d5b5284
@S    ToneMapShader => 193caf32ef48a8d6223b763df258cbac
@S    ToneMapOperatorShader => a3ee79064be0fe5996ae9e0269f3348a
@S    ToneMapHejl2OperatorShader => 0d19888a588917597eb3dc1a423cee7d
@S    LuminanceToChannelShader => c4f98351658734a81c669dbc582e65a1
@S    LuminanceUtils => 39cb56630d44d77f1ff5a3ebade5ba1c
***************************
*****     Stages      *****
***************************
@G    Vertex => 7b8af58dd24be2684728cc0b8599ce6f
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 MatrixTransform_id73;     // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_4_0
dcl_constantbuffer CB0[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xy
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
//
// Initial variable locations:
//   v0.x <- __input__.Position_id72.x; v0.y <- __input__.Position_id72.y; v0.z <- __input__.Position_id72.z; v0.w <- __input__.Position_id72.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o1.x <- <VSMain return value>.TexCoord_id62.x; o1.y <- <VSMain return value>.TexCoord_id62.y; 
//   o0.x <- <VSMain return value>.ShadingPosition_id0.x; o0.y <- <VSMain return value>.ShadingPosition_id0.y; o0.z <- <VSMain return value>.ShadingPosition_id0.z; o0.w <- <VSMain return value>.ShadingPosition_id0.w
//
#line 221 "C:\Users\Shadow\Desktop\MyGame\Bin\Windows\Debug\win-x64\log\shader_ColorTransformGroupEffect_331a796f2445031fab2c277c64547cc8.hlsl"
dp4 o0.x, v0.xyzw, cb0[0].xyzw
dp4 o0.y, v0.xyzw, cb0[1].xyzw
dp4 o0.z, v0.xyzw, cb0[2].xyzw
dp4 o0.w, v0.xyzw, cb0[3].xyzw

#line 225
mov o1.xy, v1.xyxx
ret 
// Approximately 6 instruction slots used
@G    Pixel => 373242403b74f107c82763285f880e41
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer Globals
// {
//
//   float2 Texture0TexelSize_id15;     // Offset:    0 Size:     8 [unused]
//   float2 Texture1TexelSize_id17;     // Offset:    8 Size:     8 [unused]
//   float2 Texture2TexelSize_id19;     // Offset:   16 Size:     8 [unused]
//   float2 Texture3TexelSize_id21;     // Offset:   24 Size:     8 [unused]
//   float2 Texture4TexelSize_id23;     // Offset:   32 Size:     8 [unused]
//   float2 Texture5TexelSize_id25;     // Offset:   40 Size:     8 [unused]
//   float2 Texture6TexelSize_id27;     // Offset:   48 Size:     8 [unused]
//   float2 Texture7TexelSize_id29;     // Offset:   56 Size:     8 [unused]
//   float2 Texture8TexelSize_id31;     // Offset:   64 Size:     8 [unused]
//   float2 Texture9TexelSize_id33;     // Offset:   72 Size:     8 [unused]
//   float WhitePoint_id75;             // Offset:   80 Size:     4
//      = 0x40a00000 
//   float KeyValue_id80;               // Offset:   84 Size:     4 [unused]
//      = 0x3e3851ec 
//   float LuminanceLocalFactor_id81;   // Offset:   88 Size:     4 [unused]
//      = 0x00000000 
//   float LuminanceAverageGlobal_id82; // Offset:   92 Size:     4
//   float Contrast_id83;               // Offset:   96 Size:     4
//      = 0x00000000 
//   float Brightness_id84;             // Offset:  100 Size:     4
//      = 0x00000000 
//   float Exposure_id85;               // Offset:  104 Size:     4 [unused]
//      = 0x3f800000 
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// Sampler_id42                      sampler      NA          NA             s0      1 
// Texture0_id14                     texture  float4          2d             t0      1 
// Globals                           cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
ps_4_0
dcl_constantbuffer CB0[7], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.ShadingPosition_id0.x; v0.y <- __input__.ShadingPosition_id0.y; v0.z <- __input__.ShadingPosition_id0.z; v0.w <- __input__.ShadingPosition_id0.w; 
//   v1.x <- __input__.TexCoord_id62.x; v1.y <- __input__.TexCoord_id62.y; 
//   o0.x <- <PSMain return value>.ColorTarget_id2.x; o0.y <- <PSMain return value>.ColorTarget_id2.y; o0.z <- <PSMain return value>.ColorTarget_id2.z; o0.w <- <PSMain return value>.ColorTarget_id2.w
//
#line 186 "C:\Users\Shadow\Desktop\MyGame\Bin\Windows\Debug\win-x64\log\shader_ColorTransformGroupEffect_331a796f2445031fab2c277c64547cc8.hlsl"
add r0.x, cb0[6].x, l(1.000000)

#line 192
sample r1.xyzw, v1.xyxx, t0.xyzw, s0  // r1.x <- <Shading_id2 return value>.x; r1.y <- <Shading_id2 return value>.y; r1.z <- <Shading_id2 return value>.z

#line 182
exp r0.y, cb0[5].w  // r0.y <- avgLuminance

#line 185
mad r1.xyz, r0.yyyy, cb0[6].yyyy, r1.xyzx
max r1.xyz, r1.xyzx, l(0.000100, 0.000100, 0.000100, 0.000000)  // r1.x <- color.x; r1.y <- color.y; r1.z <- color.z

#line 186
add r1.xyz, -r0.yyyy, r1.xyzx
mad r0.xzw, r0.xxxx, r1.xxyz, r0.yyyy

#line 183
max r0.xyzw, r0.xyzw, l(0.000100, 0.000100, 0.000100, 0.000100)  // r0.x <- color.x; r0.z <- color.y; r0.w <- color.z

#line 154
add r1.x, r0.y, l(1.000000)
log r1.x, r1.x
mad r1.x, r1.x, l(0.301030), l(2.000000)
div r1.x, l(2.000000), r1.x
add r1.x, -r1.x, l(1.030000)  // r1.x <- keyValue

#line 156
div r0.y, r1.x, r0.y  // r0.y <- linearExposure

#line 157
max r0.y, r0.y, l(0.000100)  // r0.y <- exposure

#line 168
mul r0.xyz, r0.yyyy, r0.xzwx  // r0.x <- color.x; r0.y <- color.y; r0.z <- color.z

#line 142
mad r1.xyz, r0.xyzx, l(1.425000, 1.425000, 1.425000, 0.000000), l(0.050000, 0.050000, 0.050000, 0.000000)  // r1.x <- va.x; r1.y <- va.y; r1.z <- va.z

#line 143
mad r1.xyz, r0.xyzx, r1.xyzx, l(0.004000, 0.004000, 0.004000, 0.000000)
mad r2.xyz, r0.xyzx, l(1.425000, 1.425000, 1.425000, 0.000000), l(0.600000, 0.600000, 0.600000, 0.000000)
mad r0.xyz, r0.xyzx, r2.xyzx, l(0.049100, 0.049100, 0.049100, 0.000000)
div r0.xyz, r1.xyzx, r0.xyzx

#line 140
mad r1.xy, cb0[5].xxxx, l(1.425000, 1.425000, 0.000000, 0.000000), l(0.050000, 0.600000, 0.000000, 0.000000)  // r1.x <- w
mad r1.xy, cb0[5].xxxx, r1.xyxx, l(0.004000, 0.049100, 0.000000, 0.000000)
div r0.w, r1.x, r1.y

#line 143
add r0.xyzw, r0.xyzw, l(-0.082100, -0.082100, -0.082100, -0.082100)  // r0.w <- w; r0.x <- vf.x; r0.y <- vf.y; r0.z <- vf.z

#line 144
div r0.xyz, r0.xyzx, r0.wwww  // r0.x <- <Compute_id9 return value>.x; r0.y <- <Compute_id9 return value>.y; r0.z <- <Compute_id9 return value>.z

#line 163
dp3 r0.w, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)

#line 214
mov o0.xyz, r0.xyzx

#line 163
max o0.w, r0.w, l(0.000100)

#line 214
ret 
// Approximately 30 instruction slots used
***************************
*************************/
const static bool TAutoKeyValue_id76 = true;
const static bool TAutoExposure_id77 = true;
const static bool TUseLocalLuminance_id78 = false;
struct PS_STREAMS 
{
    float2 TexCoord_id62;
    float4 ColorTarget_id2;
};
struct PS_OUTPUT 
{
    float4 ColorTarget_id2 : SV_Target0;
};
struct PS_INPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_STREAMS 
{
    float4 Position_id72;
    float2 TexCoord_id62;
    float4 ShadingPosition_id0;
};
struct VS_OUTPUT 
{
    float4 ShadingPosition_id0 : SV_Position;
    float2 TexCoord_id62 : TEXCOORD0;
};
struct VS_INPUT 
{
    float4 Position_id72 : POSITION;
    float2 TexCoord_id62 : TEXCOORD0;
};
cbuffer PerDraw 
{
    float4x4 MatrixTransform_id73;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id15;
    float2 Texture1TexelSize_id17;
    float2 Texture2TexelSize_id19;
    float2 Texture3TexelSize_id21;
    float2 Texture4TexelSize_id23;
    float2 Texture5TexelSize_id25;
    float2 Texture6TexelSize_id27;
    float2 Texture7TexelSize_id29;
    float2 Texture8TexelSize_id31;
    float2 Texture9TexelSize_id33;
    float WhitePoint_id75 = 5.0f;
    float KeyValue_id80 = 0.18f;
    float LuminanceLocalFactor_id81 = 0.0f;
    float LuminanceAverageGlobal_id82;
    float Contrast_id83 = 0.0f;
    float Brightness_id84 = 0.0f;
    float Exposure_id85 = 1.0f;
};
Texture2D Texture0_id14;
Texture2D Texture1_id16;
Texture2D Texture2_id18;
Texture2D Texture3_id20;
Texture2D Texture4_id22;
Texture2D Texture5_id24;
Texture2D Texture6_id26;
Texture2D Texture7_id28;
Texture2D Texture8_id30;
Texture2D Texture9_id32;
TextureCube TextureCube0_id34;
TextureCube TextureCube1_id35;
TextureCube TextureCube2_id36;
TextureCube TextureCube3_id37;
Texture3D Texture3D0_id38;
Texture3D Texture3D1_id39;
Texture3D Texture3D2_id40;
Texture3D Texture3D3_id41;
SamplerState Sampler_id42;
SamplerState PointSampler_id43 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id44 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id45 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id46 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id47 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id48 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id49 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id50 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id51 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id52;
SamplerState Sampler1_id53;
SamplerState Sampler2_id54;
SamplerState Sampler3_id55;
SamplerState Sampler4_id56;
SamplerState Sampler5_id57;
SamplerState Sampler6_id58;
SamplerState Sampler7_id59;
SamplerState Sampler8_id60;
SamplerState Sampler9_id61;
Texture2D LuminanceTexture_id79;
float4 Compute_id9(float4 color)
{
    float w = (1.425 * WhitePoint_id75) + 0.05f;
    w = ((WhitePoint_id75 * w + 0.004f) / ((WhitePoint_id75 * (w + 0.55f) + 0.0491f))) - 0.0821f;
    float4 vh = float4(color.rgb, WhitePoint_id75);
    float4 va = (1.425 * vh) + 0.05f;
    float4 vf = ((vh * va + 0.004f) / ((vh * (va + 0.55f) + 0.0491f))) - 0.0821f;
    return float4(vf.rgb / w, 1.0);
}
float CalculateExposure_id7(float avgLuminance)
{
    float exposure;

    {
        float keyValue;

        {
            keyValue = 1.03f - (2.0f / (2 + log10(avgLuminance + 1)));
        }
        float linearExposure = (keyValue / avgLuminance);
        exposure = max(linearExposure, 0.0001f);
    }
    return exposure;
}
static float Luma_id12(float3 color)
{
    return max(dot(color, float3(0.299, 0.587, 0.114)), 0.0001);
}
float3 ToneMap_id6(float3 color, float avgLuminance)
{
    float exposure = CalculateExposure_id7(avgLuminance);
    color *= exposure;
    color = Compute_id9(float4(color, 1)).rgb;
    return color;
}
float4 Compute_id5(float4 color)
{
    float4 outColor = color;
    outColor.a = Luma_id12(color.rgb);
    return outColor;
}
float4 Compute_id4(inout PS_STREAMS streams, float4 inputColor)
{
    float3 color = inputColor.rgb;
    float avgLuminance = LuminanceAverageGlobal_id82;
    avgLuminance = exp2(avgLuminance);
    avgLuminance = max(avgLuminance, 0.0001f);
    float globalAverageLum = exp2(LuminanceAverageGlobal_id82);
    color = max(color + globalAverageLum.xxx * Brightness_id84, 0.0001);
    color = max(lerp(globalAverageLum.xxx, color, Contrast_id83 + 1.0f), 0.0001);
    color = ToneMap_id6(color, avgLuminance);
    return float4(color, inputColor.a);
}
float4 Shading_id2(inout PS_STREAMS streams)
{
    return Texture0_id14.Sample(Sampler_id42, streams.TexCoord_id62);
}
float4 Shading_id3(inout PS_STREAMS streams)
{
    float4 color = Shading_id2(streams);

    {
        color = Compute_id4(streams, color);
    }

    {
        color = Compute_id5(color);
    }
    return color;
}
PS_OUTPUT PSMain(PS_INPUT __input__)
{
    PS_STREAMS streams = (PS_STREAMS)0;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ColorTarget_id2 = Shading_id3(streams);
    PS_OUTPUT __output__ = (PS_OUTPUT)0;
    __output__.ColorTarget_id2 = streams.ColorTarget_id2;
    return __output__;
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id72 = __input__.Position_id72;
    streams.TexCoord_id62 = __input__.TexCoord_id62;
    streams.ShadingPosition_id0 = mul(streams.Position_id72, MatrixTransform_id73);
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.TexCoord_id62 = streams.TexCoord_id62;
    return __output__;
}
