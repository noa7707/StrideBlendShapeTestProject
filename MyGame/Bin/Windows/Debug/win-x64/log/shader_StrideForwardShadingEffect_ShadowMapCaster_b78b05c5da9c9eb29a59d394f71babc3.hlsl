/**************************
***** Compiler Parameters *****
***************************
@P EffectName: StrideForwardShadingEffect.ShadowMapCaster
@P   - Material.HasBlendShape: True
@P Material.MAX_VERTICES: 24
@P Material.MAX_MORPH_TARGETS: 1
@P Material.PixelStageSurfaceShaders: mixin MaterialSurfaceArray [{layers = [mixin MaterialSurfaceDiffuse [{diffuseMap = ComputeColorConstantColorLink<Material.DiffuseValue>}], mixin MaterialSurfaceGlossinessMap<false> [{glossinessMap = ComputeColorConstantFloatLink<Material.GlossinessValue>}], mixin MaterialSurfaceMetalness [{metalnessMap = ComputeColorConstantFloatLink<Material.MetalnessValue>}], mixin MaterialSurfaceLightingAndShading [{surfaces = [MaterialSurfaceShadingDiffuseLambert<false>, mixin MaterialSurfaceShadingSpecularMicrofacet [{environmentFunction = MaterialSpecularMicrofacetEnvironmentGGXLUT}, {fresnelFunction = MaterialSpecularMicrofacetFresnelSchlick}, {geometricShadowingFunction = MaterialSpecularMicrofacetVisibilitySmithSchlickGGX}, {normalDistributionFunction = MaterialSpecularMicrofacetNormalDistributionGGX}]]}]]}]
@P Material.PixelStageStreamInitializer: mixin MaterialStream, MaterialPixelShadingStream
@P Lighting.DirectLightGroups: mixin LightDirectionalGroup<1>, ShadowMapReceiverDirectional<4,1,true,true,false,false>, ShadowMapFilterPcf<PerView.Lighting,5>, LightClusteredPointGroup, LightClusteredSpotGroup
@P Lighting.EnvironmentLights: LightSimpleAmbient, sdfx LightSkyboxEffect, EnvironmentLight
@P LightSkyboxShader.LightDiffuseColor.environmentLights[1]: SphericalHarmonicsEnvironmentColor<3>
@P LightSkyboxShader.LightSpecularColor.environmentLights[1]: RoughnessCubeMapEnvironmentColor
***************************
****  ConstantBuffers  ****
***************************
cbuffer PerDraw [Size: 1968]
@C    World_id31 => Transformation.World
@C    WorldInverse_id32 => Transformation.WorldInverse
@C    WorldInverseTranspose_id33 => Transformation.WorldInverseTranspose
@C    WorldView_id34 => Transformation.WorldView
@C    WorldViewInverse_id35 => Transformation.WorldViewInverse
@C    WorldViewProjection_id36 => Transformation.WorldViewProjection
@C    WorldScale_id37 => Transformation.WorldScale
@C    EyeMS_id38 => Transformation.EyeMS
@C    BSHAPEDATA_id39 => TransformationBlendShape.BSHAPEDATA
@C    BasisKeyWeight_id40 => TransformationBlendShape.BasisKeyWeight
cbuffer PerView [Size: 1664]
@C    View_id24 => Transformation.View
@C    ViewInverse_id25 => Transformation.ViewInverse
@C    Projection_id26 => Transformation.Projection
@C    ProjectionInverse_id27 => Transformation.ProjectionInverse
@C    ViewProjection_id28 => Transformation.ViewProjection
@C    ProjScreenRay_id29 => Transformation.ProjScreenRay
@C    Eye_id30 => Transformation.Eye
@C    NearClipPlane_id169 => Camera.NearClipPlane
@C    FarClipPlane_id170 => Camera.FarClipPlane
@C    ZProjection_id171 => Camera.ZProjection
@C    ViewSize_id172 => Camera.ViewSize
@C    AspectRatio_id173 => Camera.AspectRatio
@C    _padding_PerView_Default => _padding_PerView_Default
@C    LightCount_id87 => DirectLightGroupPerView.LightCount.directLightGroups[0]
@C    Lights_id89 => LightDirectionalGroup.Lights.directLightGroups[0]
@C    ShadowMapTextureSize_id91 => ShadowMap.TextureSize.directLightGroups[0]
@C    ShadowMapTextureTexelSize_id92 => ShadowMap.TextureTexelSize.directLightGroups[0]
@C    WorldToShadowCascadeUV_id154 => ShadowMapReceiverBase.WorldToShadowCascadeUV.directLightGroups[0]
@C    InverseWorldToShadowCascadeUV_id155 => ShadowMapReceiverBase.InverseWorldToShadowCascadeUV.directLightGroups[0]
@C    ViewMatrices_id156 => ShadowMapReceiverBase.ViewMatrices.directLightGroups[0]
@C    DepthRanges_id157 => ShadowMapReceiverBase.DepthRanges.directLightGroups[0]
@C    DepthBiases_id158 => ShadowMapReceiverBase.DepthBiases.directLightGroups[0]
@C    OffsetScales_id159 => ShadowMapReceiverBase.OffsetScales.directLightGroups[0]
@C    CascadeDepthSplits_id166 => ShadowMapReceiverDirectional.CascadeDepthSplits.directLightGroups[0]
@C    ClusterDepthScale_id178 => LightClustered.ClusterDepthScale
@C    ClusterDepthBias_id179 => LightClustered.ClusterDepthBias
@C    ClusterStride_id180 => LightClustered.ClusterStride
@C    AmbientLight_id183 => LightSimpleAmbient.AmbientLight.environmentLights[0]
@C    SphericalColors_id188 => SphericalHarmonicsEnvironmentColor.SphericalColors.lightDiffuseColor.environmentLights[1]
@C    MipCount_id189 => RoughnessCubeMapEnvironmentColor.MipCount.lightSpecularColor.environmentLights[1]
@C    SkyMatrix_id191 => LightSkyboxShader.SkyMatrix.environmentLights[1]
@C    Intensity_id192 => LightSkyboxShader.Intensity.environmentLights[1]
@C    _padding_PerView_Lighting => _padding_PerView_Lighting
***************************
******  Resources    ******
***************************
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    ShadowMapTexture_id90 => ShadowMap.ShadowMapTexture.directLightGroups[0] [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightClusters_id176 => LightClustered.LightClusters [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    LightIndices_id177 => LightClustered.LightIndices [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    PointLights_id181 => LightClusteredPointGroup.PointLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    SpotLights_id182 => LightClusteredSpotGroup.SpotLights [Stage: None, Slot: (-1--1)]
@R    CubeMap_id190 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    CubeMap_id190 => RoughnessCubeMapEnvironmentColor.CubeMap.lightSpecularColor.environmentLights[1] [Stage: None, Slot: (-1--1)]
@R    PerDraw => PerDraw [Stage: Vertex, Slot: (0-0)]
@R    PerView => PerView [Stage: Vertex, Slot: (1-1)]
***************************
*****     Sources     *****
***************************
@S    ShaderBase => 4ecbcd2528b64a79eebe81a863892d8c
@S    ShaderBaseStream => b705b699a7385d39c7de52a8d13f3978
@S    ShadingBase => b0f11f286acc22f5586417a8311cb632
@S    ComputeColor => c875a0e093379dd74cd9a5a73aca830f
@S    TransformationBase => 21981c533d88209fdcf07f258ddf01c2
@S    NormalStream => ea68512133899a045766d21afb59733a
@S    TransformationWAndVP => ea6628bcd79c8f0060c612aa9fc4819b
@S    PositionStream4 => 992b49e1b4dd13d8ef84a05830d70229
@S    PositionHStream4 => fc5e64dda1ac2bb4a31d58404dced340
@S    Transformation => 7c995c14d4da978d7dca233f15f1e7c0
@S    NormalFromMesh => 85b71ad3ed9065c0803bfd77d09fb685
@S    NormalBase => b2b31addde884722f942622026837c39
@S    NormalUpdate => 6fd3c9b8fa943d9951400645fe40502e
@S    TransformationBlendShape => 3870b226a41526b87b5213522f8fcb60
@S    MaterialSurfacePixelStageCompositor => ea7a1f076313986d24488e1073848b3d
@S    PositionStream => f677bb6cb046d4f5f594cc6d8a703259
@S    MaterialPixelShadingStream => ad7a8ed4b25fbb8ce36df356d447fda2
@S    MaterialPixelStream => 3e33eeb836e260b00905946a5267b87e
@S    MaterialStream => 6f0bb68dde7beef4b38d4867da2f4d0a
@S    IStreamInitializer => acbd5b5e1debd1516c61049f39f04fdc
@S    LightStream => db97b763bbf12e53eaf0875b9db31366
@S    DirectLightGroupArray => c8057c9126020ee1c62e23facba5036d
@S    DirectLightGroup => 501cdd2e28afd5e234c08907f26aa5df
@S    ShadowGroup => bd0b502fd18b37aedabdcefe14deef34
@S    ShadowStream => e75e57a19e12d81083677a851803d69a
@S    TextureProjectionGroup => 6f741ec2cbd4e9796145b35f8fc18c45
@S    EnvironmentLightArray => 2dfda49afe728922257f9b497bc6b904
@S    EnvironmentLight => 67198c913f8c86fad248a6726699dd4d
@S    IMaterialSurface => 4439d1801d274f7bab04ddbc33b85f40
@S    ShadowMapCasterNoPixelShader => aa6a2819c879eaf0eb664f08fb1f41b4
@S    LightDirectionalGroup => 4b30b0154f396d93fd98b65dbdd2fe7f
@S    DirectLightGroupPerView => dba9b0c7c0e05b5469cf8940cc91d69c
@S    LightDirectional => 0e45e8c12e5e36d4bb0df5d5b2739bb1
@S    ShadowMapReceiverDirectional => b81b909e86a10160b58697624ea36c97
@S    ShadowMapReceiverBase => ecd55bb03a327260ea2ea0fddfaff4b5
@S    ShadowMapGroup => 6cd78766a20ef1d6d95cbbe5eec432b6
@S    ShadowMapCommon => 53c84311eb33d99ade37ecb188ae5785
@S    ShadowMapFilterBase => e42061be9b71cb375d3566138e7d8b8d
@S    Texturing => 91ef3011c1071c2e5d41cd3ee0418b18
@S    Math => 5b479ddbf6eb15f6934fb90a76ce952a
@S    ShadowMapFilterPcf => 1d20b8b1db946ed23a9d876bb8750e3c
@S    LightClusteredPointGroup => 843aea2daf41f8d9d51dc3f2e6983510
@S    LightClustered => 33caec9577a483e38f00249390b3c928
@S    ScreenPositionBase => 2dae8708ab57eb7bfe3be30e463a947f
@S    Camera => f5d1a113ef7a27319900e8cc2e11ae0d
@S    LightPoint => 294f81466d0cada846a599c119c5fb47
@S    LightUtil => 21ef9aac4d8713802ffffd7b6a054610
@S    LightClusteredSpotGroup => 13a781ebabc5e5b807beef263ac92450
@S    LightSpot => 0c28763d5549e9d53c818622d5b67087
@S    SpotLightDataInternalShader => ebbf2821da7249148876264c5dcf660d
@S    LightSpotAttenuationDefault => e20860e5b3b88061c074f0438d523fa5
@S    LightSimpleAmbient => 1be2895cd80f1f25f0225844e19b3398
@S    LightSkyboxShader => 7bdb9a65f0d95cff0eeaad64ebe19d64
@S    IComputeEnvironmentColor => 6a62dbc486c6d4dda67154b3aefa7236
@S    SphericalHarmonicsEnvironmentColor => e4af0f396494d26684557116612d99be
@S    SphericalHarmonicsUtils => daf3f722d099facfd735f53c731dd735
@S    RoughnessCubeMapEnvironmentColor => a00e41cfd6760a1623b985fedae4700d
@S    MaterialSurfaceArray => 8cf3cc54fcd9949ce74f2e4caaa0d6d9
@S    MaterialSurfaceDiffuse => 959d3b90076611b0252419cb02190f99
@S    IMaterialSurfacePixel => b6013c701b8fca52da0c65754bb0a9ca
@S    ComputeColorConstantColorLink => 618d8a5815dc0efacfb27f012a443d05
@S    MaterialSurfaceGlossinessMap => 45f7d0ea2ac0e9c8c8e5c9d8f614e1ea
@S    ComputeColorConstantFloatLink => 51f7f5a6af528b9ab582350558ff1f70
@S    MaterialSurfaceMetalness => 4078836fd77689b5ca2e35f4eae23def
@S    MaterialSurfaceLightingAndShading => 632084a1d51a33d288c188803e2d5afc
@S    IMaterialSurfaceShading => 1c45b326cd8616074872dd56496a9b5a
@S    MaterialSurfaceShadingDiffuseLambert => 8e2e1baa4a7bcb427f3ca539f81dd15c
@S    MaterialSurfaceShadingSpecularMicrofacet => fc12dc9f1da47fe9fb484f9432195131
@S    BRDFMicrofacet => e6c8c59dd59d4fef181ae8322a095acf
@S    IMaterialSpecularMicrofacetFresnelFunction => b87b5e33e7e148467ff6df90b1f65e8d
@S    IMaterialSpecularMicrofacetVisibilityFunction => 35ae192f090d569ff410a98a8e5dc154
@S    IMaterialSpecularMicrofacetNormalDistributionFunction => 861fea38e5209e4678493895145cc2e6
@S    IMaterialSpecularMicrofacetEnvironmentFunction => 56a33499bed82d63575ceb48ba33baee
@S    MaterialSpecularMicrofacetEnvironmentGGXLUT => 2e52ec40bc84df02cbd7a9c438f7b99f
@S    MaterialSpecularMicrofacetFresnelSchlick => edbe75a9ad2d1152adf6c393d9f528cb
@S    MaterialSpecularMicrofacetVisibilitySmithSchlickGGX => db766e9fd55ea510f5ca816de1114a2c
@S    MaterialSpecularMicrofacetNormalDistributionGGX => a2e713df174ca0b459793779a40abe22
***************************
*****     Stages      *****
***************************
@G    Vertex => 08d7eda62d183b2420f202e29b13c8c5
//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PerDraw
// {
//
//   float4x4 World_id31;               // Offset:    0 Size:    64
//   float4x4 WorldInverse_id32;        // Offset:   64 Size:    64 [unused]
//   float4x4 WorldInverseTranspose_id33;// Offset:  128 Size:    64
//   float4x4 WorldView_id34;           // Offset:  192 Size:    64 [unused]
//   float4x4 WorldViewInverse_id35;    // Offset:  256 Size:    64 [unused]
//   float4x4 WorldViewProjection_id36; // Offset:  320 Size:    64 [unused]
//   float3 WorldScale_id37;            // Offset:  384 Size:    12 [unused]
//   float4 EyeMS_id38;                 // Offset:  400 Size:    16 [unused]
//   float4x4 BSHAPEDATA_id39[24];      // Offset:  416 Size:  1536
//   float BasisKeyWeight_id40;         // Offset: 1952 Size:     4
//
// }
//
// cbuffer PerView
// {
//
//   float4x4 View_id24;                // Offset:    0 Size:    64 [unused]
//   float4x4 ViewInverse_id25;         // Offset:   64 Size:    64 [unused]
//   float4x4 Projection_id26;          // Offset:  128 Size:    64 [unused]
//   float4x4 ProjectionInverse_id27;   // Offset:  192 Size:    64 [unused]
//   float4x4 ViewProjection_id28;      // Offset:  256 Size:    64
//   float2 ProjScreenRay_id29;         // Offset:  320 Size:     8 [unused]
//   float4 Eye_id30;                   // Offset:  336 Size:    16 [unused]
//   float NearClipPlane_id169;         // Offset:  352 Size:     4 [unused]
//      = 0x3f800000 
//   float FarClipPlane_id170;          // Offset:  356 Size:     4 [unused]
//      = 0x42c80000 
//   float2 ZProjection_id171;          // Offset:  360 Size:     8 [unused]
//   float2 ViewSize_id172;             // Offset:  368 Size:     8 [unused]
//   float AspectRatio_id173;           // Offset:  376 Size:     4 [unused]
//   float4 _padding_PerView_Default;   // Offset:  384 Size:    16 [unused]
//   int LightCount_id87;               // Offset:  400 Size:     4 [unused]
//   
//   struct
//   {
//       
//       float3 DirectionWS;            // Offset:  416
//       float3 Color;                  // Offset:  432
//
//   } Lights_id89;                     // Offset:  416 Size:    28 [unused]
//   float2 ShadowMapTextureSize_id91;  // Offset:  448 Size:     8 [unused]
//   float2 ShadowMapTextureTexelSize_id92;// Offset:  456 Size:     8 [unused]
//   float4x4 WorldToShadowCascadeUV_id154[4];// Offset:  464 Size:   256 [unused]
//   float4x4 InverseWorldToShadowCascadeUV_id155[4];// Offset:  720 Size:   256 [unused]
//   float4x4 ViewMatrices_id156[4];    // Offset:  976 Size:   256 [unused]
//   float2 DepthRanges_id157[4];       // Offset: 1232 Size:    56 [unused]
//   float DepthBiases_id158;           // Offset: 1296 Size:     4 [unused]
//   float OffsetScales_id159;          // Offset: 1312 Size:     4 [unused]
//   float CascadeDepthSplits_id166[4]; // Offset: 1328 Size:    52 [unused]
//   float ClusterDepthScale_id178;     // Offset: 1380 Size:     4 [unused]
//   float ClusterDepthBias_id179;      // Offset: 1384 Size:     4 [unused]
//   float2 ClusterStride_id180;        // Offset: 1392 Size:     8 [unused]
//   float3 AmbientLight_id183;         // Offset: 1408 Size:    12 [unused]
//   float3 SphericalColors_id188[9];   // Offset: 1424 Size:   140 [unused]
//   float MipCount_id189;              // Offset: 1564 Size:     4 [unused]
//   float4x4 SkyMatrix_id191;          // Offset: 1568 Size:    64 [unused]
//   float Intensity_id192;             // Offset: 1632 Size:     4 [unused]
//   float4 _padding_PerView_Lighting;  // Offset: 1648 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PerDraw                           cbuffer      NA          NA            cb0      1 
// PerView                           cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// SV_VertexID              0   x           1   VERTID    uint   x   
// NORMAL                   0   xyz         2     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION_WS              0   xyzw        0     NONE   float   xyzw
// SV_Position              0   xyzw        1      POS   float   xyzw
// POSITIONH                0   xyzw        2     NONE   float   xyzw
// DEPTH_VS                 0   x           3     NONE   float   x   
// MESHNORMALWS_ID16_SEM     0    yzw        3     NONE   float    yzw
// NORMALWS                 0   xyz         4     NONE   float   xyz 
// SCREENPOSITION_ID168_SEM     0   xyzw        5     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer CB0[123], dynamicIndexed
dcl_constantbuffer CB1[20], immediateIndexed
dcl_input v0.xyzw
dcl_input_sgv v1.x, vertex_id
dcl_input v2.xyz
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_output o2.xyzw
dcl_output o3.x
dcl_output o3.yzw
dcl_output o4.xyz
dcl_output o5.xyzw
dcl_temps 3
//
// Initial variable locations:
//   v0.x <- __input__.Position_id20.x; v0.y <- __input__.Position_id20.y; v0.z <- __input__.Position_id20.z; v0.w <- __input__.Position_id20.w; 
//   v1.x <- __input__.VertexID_id41; 
//   v2.x <- __input__.meshNormal_id15.x; v2.y <- __input__.meshNormal_id15.y; v2.z <- __input__.meshNormal_id15.z; 
//   o5.x <- <VSMain return value>.ScreenPosition_id168.x; o5.y <- <VSMain return value>.ScreenPosition_id168.y; o5.z <- <VSMain return value>.ScreenPosition_id168.z; o5.w <- <VSMain return value>.ScreenPosition_id168.w; 
//   o4.x <- <VSMain return value>.normalWS_id18.x; o4.y <- <VSMain return value>.normalWS_id18.y; o4.z <- <VSMain return value>.normalWS_id18.z; 
//   o3.x <- <VSMain return value>.DepthVS_id22; o3.y <- <VSMain return value>.meshNormalWS_id16.x; o3.z <- <VSMain return value>.meshNormalWS_id16.y; o3.w <- <VSMain return value>.meshNormalWS_id16.z; 
//   o2.x <- <VSMain return value>.PositionH_id23.x; o2.y <- <VSMain return value>.PositionH_id23.y; o2.z <- <VSMain return value>.PositionH_id23.z; o2.w <- <VSMain return value>.PositionH_id23.w; 
//   o1.x <- <VSMain return value>.ShadingPosition_id0.x; o1.y <- <VSMain return value>.ShadingPosition_id0.y; o1.z <- <VSMain return value>.ShadingPosition_id0.z; o1.w <- <VSMain return value>.ShadingPosition_id0.w; 
//   o0.x <- <VSMain return value>.PositionWS_id21.x; o0.y <- <VSMain return value>.PositionWS_id21.y; o0.z <- <VSMain return value>.PositionWS_id21.z; o0.w <- <VSMain return value>.PositionWS_id21.w
//
#line 246 "C:\Users\Shadow\Desktop\MyGame\Bin\Windows\Debug\win-x64\log\shader_StrideForwardShadingEffect_ShadowMapCaster_b78b05c5da9c9eb29a59d394f71babc3.hlsl"
dp4 r0.x, v0.xyzw, cb0[0].xyzw  // r0.x <- streams.PositionWS_id21.x
dp4 r0.y, v0.xyzw, cb0[1].xyzw  // r0.y <- streams.PositionWS_id21.y
dp4 r0.z, v0.xyzw, cb0[2].xyzw  // r0.z <- streams.PositionWS_id21.z
dp4 r0.w, v0.xyzw, cb0[3].xyzw  // r0.w <- streams.PositionWS_id21.w

#line 233
ishl r1.x, v1.x, l(2)

#line 234
mul r1.xyzw, r0.xyzw, cb0[r1.x + 29].yyyy  // r1.x <- blendPos.x; r1.y <- blendPos.y; r1.z <- blendPos.z; r1.w <- blendPos.w

#line 236
mov r2.xyzw, r1.xyzw  // r2.x <- blendPos.x; r2.y <- blendPos.y; r2.z <- blendPos.z; r2.w <- blendPos.w
mov r0.x, l(0)  // r0.x <- i
loop 
  ige r0.y, r0.x, l(1)
  breakc_nz r0.y

#line 238
  imad r0.y, r0.x, l(24), v1.x
  ishl r0.y, r0.y, l(2)

#line 239
  add r0.z, cb0[122].x, cb0[r0.y + 26].x
  mul r2.x, r0.z, cb0[r0.y + 29].x
  mul r2.y, cb0[r0.y + 27].x, cb0[r0.y + 29].x
  mul r2.z, cb0[r0.y + 28].x, cb0[r0.y + 29].x
  mul r2.w, r0.w, cb0[r0.y + 29].x

#line 240
  iadd r0.x, r0.x, l(1)
endloop 

#line 226
dp4 r0.x, r2.xyzw, cb1[16].xyzw  // r0.x <- <ComputeShadingPosition_id11 return value>.x
dp4 r0.y, r2.xyzw, cb1[17].xyzw  // r0.y <- <ComputeShadingPosition_id11 return value>.y
dp4 r0.z, r2.xyzw, cb1[18].xyzw  // r0.z <- <ComputeShadingPosition_id11 return value>.z
dp4 r0.w, r2.xyzw, cb1[19].xyzw  // r0.w <- <ComputeShadingPosition_id11 return value>.w

#line 279
dp3 r1.y, v2.xyzx, cb0[8].xyzx  // r1.y <- streams.meshNormalWS_id16.x
dp3 r1.z, v2.xyzx, cb0[9].xyzx  // r1.z <- streams.meshNormalWS_id16.y
dp3 r1.w, v2.xyzx, cb0[10].xyzx  // r1.w <- streams.meshNormalWS_id16.z

#line 308
mov o0.xyzw, r2.xyzw
mov o1.xyzw, r0.xyzw
mov o2.xyzw, r0.xyzw
mov o3.x, r0.w
mov o3.yzw, r1.yyzw
mov o5.xyzw, r0.xyzw
mov o4.xyz, r1.yzwy
ret 
// Approximately 35 instruction slots used
***************************
*************************/
const static int TMaxLightCount_id88 = 1;
const static int TCascadeCountBase_id152 = 4;
const static int TLightCountBase_id153 = 1;
const static int TCascadeCount_id160 = 4;
const static int TLightCount_id161 = 1;
const static int TOrder_id185 = 3;
const static int TOrder_id187 = 3;
struct VS_STREAMS 
{
    float4 Position_id20;
    uint VertexID_id41;
    float3 meshNormal_id15;
    float4 PositionWS_id21;
    float4 ShadingPosition_id0;
    float4 PositionH_id23;
    float DepthVS_id22;
    float3 meshNormalWS_id16;
    float3 normalWS_id18;
    float4 ScreenPosition_id168;
};
struct VS_OUTPUT 
{
    float4 PositionWS_id21 : POSITION_WS;
    float4 ShadingPosition_id0 : SV_Position;
    float4 PositionH_id23 : POSITIONH;
    float DepthVS_id22 : DEPTH_VS;
    float3 meshNormalWS_id16 : MESHNORMALWS_ID16_SEM;
    float3 normalWS_id18 : NORMALWS;
    float4 ScreenPosition_id168 : SCREENPOSITION_ID168_SEM;
};
struct VS_INPUT 
{
    float4 Position_id20 : POSITION;
    uint VertexID_id41 : SV_VertexID;
    float3 meshNormal_id15 : NORMAL;
};
struct DirectionalLightData 
{
    float3 DirectionWS;
    float3 Color;
};
struct PointLightData 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct PointLightDataInternal 
{
    float3 PositionWS;
    float InvSquareRadius;
    float3 Color;
};
struct SpotLightDataInternal 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
struct SpotLightData 
{
    float3 PositionWS;
    float3 DirectionWS;
    float3 AngleOffsetAndInvSquareRadius;
    float3 Color;
};
cbuffer PerDraw 
{
    float4x4 World_id31;
    float4x4 WorldInverse_id32;
    float4x4 WorldInverseTranspose_id33;
    float4x4 WorldView_id34;
    float4x4 WorldViewInverse_id35;
    float4x4 WorldViewProjection_id36;
    float3 WorldScale_id37;
    float4 EyeMS_id38;
    float4x4 BSHAPEDATA_id39[1 * 24];
    float BasisKeyWeight_id40;
};
cbuffer PerMaterial 
{
    float4 constantColor_id195;
    float constantFloat_id197;
    float constantFloat_id200;
};
cbuffer PerView 
{
    float4x4 View_id24;
    float4x4 ViewInverse_id25;
    float4x4 Projection_id26;
    float4x4 ProjectionInverse_id27;
    float4x4 ViewProjection_id28;
    float2 ProjScreenRay_id29;
    float4 Eye_id30;
    float NearClipPlane_id169 = 1.0f;
    float FarClipPlane_id170 = 100.0f;
    float2 ZProjection_id171;
    float2 ViewSize_id172;
    float AspectRatio_id173;
    float4 _padding_PerView_Default;
    int LightCount_id87;
    DirectionalLightData Lights_id89[TMaxLightCount_id88];
    float2 ShadowMapTextureSize_id91;
    float2 ShadowMapTextureTexelSize_id92;
    float4x4 WorldToShadowCascadeUV_id154[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 InverseWorldToShadowCascadeUV_id155[TCascadeCountBase_id152 * TLightCountBase_id153];
    float4x4 ViewMatrices_id156[TCascadeCountBase_id152 * TLightCountBase_id153];
    float2 DepthRanges_id157[TCascadeCountBase_id152 * TLightCountBase_id153];
    float DepthBiases_id158[TLightCountBase_id153];
    float OffsetScales_id159[TLightCountBase_id153];
    float CascadeDepthSplits_id166[TCascadeCount_id160 * TLightCount_id161];
    float ClusterDepthScale_id178;
    float ClusterDepthBias_id179;
    float2 ClusterStride_id180;
    float3 AmbientLight_id183;
    float3 SphericalColors_id188[TOrder_id187 * TOrder_id187];
    float MipCount_id189;
    float4x4 SkyMatrix_id191;
    float Intensity_id192;
    float4 _padding_PerView_Lighting;
};
cbuffer Globals 
{
    float2 Texture0TexelSize_id94;
    float2 Texture1TexelSize_id96;
    float2 Texture2TexelSize_id98;
    float2 Texture3TexelSize_id100;
    float2 Texture4TexelSize_id102;
    float2 Texture5TexelSize_id104;
    float2 Texture6TexelSize_id106;
    float2 Texture7TexelSize_id108;
    float2 Texture8TexelSize_id110;
    float2 Texture9TexelSize_id112;
};
Texture2D Texture0_id93;
Texture2D Texture1_id95;
Texture2D Texture2_id97;
Texture2D Texture3_id99;
Texture2D Texture4_id101;
Texture2D Texture5_id103;
Texture2D Texture6_id105;
Texture2D Texture7_id107;
Texture2D Texture8_id109;
Texture2D Texture9_id111;
TextureCube TextureCube0_id113;
TextureCube TextureCube1_id114;
TextureCube TextureCube2_id115;
TextureCube TextureCube3_id116;
Texture3D Texture3D0_id117;
Texture3D Texture3D1_id118;
Texture3D Texture3D2_id119;
Texture3D Texture3D3_id120;
SamplerState Sampler_id121;
SamplerState PointSampler_id122 
{
    Filter = MIN_MAG_MIP_POINT;
};
SamplerState LinearSampler_id123 
{
    Filter = MIN_MAG_MIP_LINEAR;
};
SamplerState LinearBorderSampler_id124 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Border;
    AddressV = Border;
};
SamplerComparisonState LinearClampCompareLessEqualSampler_id125 
{
    Filter = COMPARISON_MIN_MAG_LINEAR_MIP_POINT;
    AddressU = Clamp;
    AddressV = Clamp;
    ComparisonFunc = LessEqual;
};
SamplerState AnisotropicSampler_id126 
{
    Filter = ANISOTROPIC;
};
SamplerState AnisotropicRepeatSampler_id127 
{
    Filter = ANISOTROPIC;
    AddressU = Wrap;
    AddressV = Wrap;
    MaxAnisotropy = 16;
};
SamplerState PointRepeatSampler_id128 
{
    Filter = MIN_MAG_MIP_POINT;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState LinearRepeatSampler_id129 
{
    Filter = MIN_MAG_MIP_LINEAR;
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState RepeatSampler_id130 
{
    AddressU = Wrap;
    AddressV = Wrap;
};
SamplerState Sampler0_id131;
SamplerState Sampler1_id132;
SamplerState Sampler2_id133;
SamplerState Sampler3_id134;
SamplerState Sampler4_id135;
SamplerState Sampler5_id136;
SamplerState Sampler6_id137;
SamplerState Sampler7_id138;
SamplerState Sampler8_id139;
SamplerState Sampler9_id140;
Texture2D EnvironmentLightingDFG_LUT_id207;
Texture2D ShadowMapTexture_id90;
Texture3D<uint2> LightClusters_id176;
Buffer<uint> LightIndices_id177;
Buffer<float4> PointLights_id181;
Buffer<float4> SpotLights_id182;
TextureCube CubeMap_id190;
void PreTransformPosition_id4()
{
}
float4 ComputeShadingPosition_id11(float4 world)
{
    return mul(world, ViewProjection_id28);
}
void PostTransformPosition_id6()
{
}
float4 ApplyBlendshapes_id24(int vID, float4 pos)
{
    float4x4 mat = BSHAPEDATA_id39[vID];
    float4 blendPos = pos * mat[1][3];

    for (int i = 0; i < 1; i++)
    {
        float4 morphedShape = BSHAPEDATA_id39[i * 24 + vID][0];
        blendPos = +float4(morphedShape[0] + BasisKeyWeight_id40, morphedShape[1], morphedShape[2], pos[3]) * morphedShape[3];
    }
    return blendPos;
}
void PreTransformPosition_id10(inout VS_STREAMS streams)
{
    PreTransformPosition_id4();
    streams.PositionWS_id21 = mul(streams.Position_id20, World_id31);
}
void PostTransformPosition_id12(inout VS_STREAMS streams)
{
    PostTransformPosition_id6();
    streams.ShadingPosition_id0 = ComputeShadingPosition_id11(streams.PositionWS_id21);
    streams.PositionH_id23 = streams.ShadingPosition_id0;
    streams.DepthVS_id22 = streams.ShadingPosition_id0.w;
}
void TransformPosition_id5()
{
}
void PreTransformPosition_id25(inout VS_STREAMS streams)
{
    PreTransformPosition_id10(streams);
    streams.PositionWS_id21 = ApplyBlendshapes_id24(streams.VertexID_id41, streams.PositionWS_id21);
    float xnew = streams.PositionWS_id21.x;
    float ynew = streams.PositionWS_id21.y;
    float znew = streams.PositionWS_id21.z;
    float4 blendPos = float4(xnew, ynew, znew, streams.PositionWS_id21.w);
    streams.PositionWS_id21 = blendPos;
}
void BaseTransformVS_id8(inout VS_STREAMS streams)
{
    PreTransformPosition_id25(streams);
    TransformPosition_id5();
    PostTransformPosition_id12(streams);
}
void VSMain_id0()
{
}
void GenerateNormal_VS_id21(inout VS_STREAMS streams)
{
    streams.meshNormalWS_id16 = mul(streams.meshNormal_id15, (float3x3)WorldInverseTranspose_id33);
    streams.normalWS_id18 = streams.meshNormalWS_id16;
}
void VSMain_id9(inout VS_STREAMS streams)
{
    VSMain_id0();
    BaseTransformVS_id8(streams);
}
void VSMain_id19(inout VS_STREAMS streams)
{
    VSMain_id9(streams);
    GenerateNormal_VS_id21(streams);
}
VS_OUTPUT VSMain(VS_INPUT __input__)
{
    VS_STREAMS streams = (VS_STREAMS)0;
    streams.Position_id20 = __input__.Position_id20;
    streams.VertexID_id41 = __input__.VertexID_id41;
    streams.meshNormal_id15 = __input__.meshNormal_id15;
    VSMain_id19(streams);
    streams.ScreenPosition_id168 = streams.ShadingPosition_id0;
    VS_OUTPUT __output__ = (VS_OUTPUT)0;
    __output__.PositionWS_id21 = streams.PositionWS_id21;
    __output__.ShadingPosition_id0 = streams.ShadingPosition_id0;
    __output__.PositionH_id23 = streams.PositionH_id23;
    __output__.DepthVS_id22 = streams.DepthVS_id22;
    __output__.meshNormalWS_id16 = streams.meshNormalWS_id16;
    __output__.normalWS_id18 = streams.normalWS_id18;
    __output__.ScreenPosition_id168 = streams.ScreenPosition_id168;
    return __output__;
}
