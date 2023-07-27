// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Eye"
{
	Properties
	{
		[Header(Diffuse)]_MainTex("Diffuse Map (_eye)", 2D) = "white" {}
		[HDR]_AdditionalDiffuseColor("AdditionalDiffuseColor", Color) = (1,1,1,1)
		[Toggle]_EyeShadow("EyeShadow", Float) = 1
		[Toggle]_HighLightShadow("HighLightShadow", Float) = 0
		[HDR]_Shadow("Shadow", Color) = (0.7,0.7,0.7,0)
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 0
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 0
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 0
		[Header(HighLight00)][Toggle]_hi00Toggle("hi00 Toggle", Float) = 1
		[NoScaleOffset]_hi00("HighLight0 (_hi00)", 2D) = "black" {}
		_hi00Offset("hi00 Offset", Vector) = (0,0,0,0)
		_hi00Step("hi00Step", Range( 0 , 1)) = 0
		_hi00StepFeather("hi00StepFeather", Range( 0 , 1)) = 1
		_hi00Strength("hi00 Strength", Range( 0 , 2)) = 1
		_hi00LRotation("hi00L Rotation", Float) = 0
		_hi00RRotation("hi00R Rotation", Float) = 0
		[Toggle]_hi00AutoWaggle("hi00 AutoWaggle", Float) = 0
		_hi00WaggleRange("hi00 WaggleRange", Float) = 1
		_hi00Frequency("hi00Frequency", Float) = 30
		_hi00NoiseFrequency("hi00NoiseFrequency", Float) = 35
		_hi00NoiseFactor("hi00NoiseFactor", Float) = 0.3
		[Header(HighLight01)][Toggle]_hi01Toggle("hi01 Toggle", Float) = 1
		[NoScaleOffset]_hi01("HighLight01 (_hi01)", 2D) = "black" {}
		_hi01Offset("hi01 Offset", Vector) = (0,0,0,0)
		_hi01Step("hi01Step", Range( 0 , 1)) = 0
		_hi01StepFeather("hi01StepFeather", Range( 0 , 1)) = 1
		_hi01Strength("hi01 Strength", Range( 0 , 2)) = 1
		_hi01LRotation("hi01L Rotation", Float) = 0
		_hi01RRotation("hi01R Rotation", Float) = 0
		[Toggle]_hi01AutoWaggle("hi01 AutoWaggle", Float) = 0
		_hi01WaggleRange("hi01 WaggleRange", Float) = 1
		_hi01Frequency("hi01Frequency", Float) = 25
		_hi01NoiseFrequency("hi01NoiseFrequency", Float) = 30
		_hi01NoiseFactor("hi01NoiseFactor", Float) = 0.3
		[Header(HighLight02)][Toggle]_hi02Toggle("hi02 Toggle", Float) = 0
		[NoScaleOffset]_hi02("HighLight02 (_hi02)", 2D) = "black" {}
		_hi02Offset("hi02 Offset", Vector) = (0,0,0,0)
		_hi02Step("hi02Step", Range( 0 , 1)) = 0
		_hi02StepFeather("hi02StepFeather", Range( 0 , 1)) = 1
		_hi02Strength("hi02 Strength", Range( 0 , 2)) = 1
		_hi02Rotation("hi02 Rotation", Float) = 0
		[Toggle]_hi02AutoWaggle("hi02 AutoWaggle", Float) = 0
		_hi02WaggleRange("hi02 WaggleRange", Float) = 1
		_hi02Frequency("hi02Frequency", Float) = 25
		_hi02NoiseFrequency("hi02NoiseFrequency", Float) = 30
		_hi02NoiseFactor("hi02NoiseFactor", Float) = 0.3
		[Header(Emissive and Other)]_EmiTex("Emissive (_emi) [optional]", 2D) = "white" {}
		[HDR]_EmissiveColor("EmissiveColor", Color) = (1,1,1,1)
		_EmmisiveStrength("EmmisiveStrength", Range( 0 , 10)) = 0
		[HDR]_CharaColor("CharaColor", Color) = (1,1,1,1)
		_Saturation("Saturation", Range( 0 , 1)) = 1
		[HDR]_UnsaturationColor("UnsaturationColor", Color) = (0.2117647,0.7137255,0.07058824,0)
		[Header(Light)]_MinDirectLight("MinDirectLight", Range( 0 , 1)) = 0
		_MaxDirectLight("MaxDirectLight", Range( 0 , 2)) = 1
		[Toggle]_UnifyIndirectDiffuseLight("Unify IndirectDiffuseLight", Float) = 1
		_MinIndirectLight("MinIndirectLight", Range( 0 , 1)) = 0.1
		_MaxIndirectLight("MaxIndirectLight", Range( 0 , 2)) = 1
		_LightColorGrayScale("LightColor GrayScale", Range( 0 , 1)) = 0
		_EyeLightFactor("EyeLightFactor", Range( 0 , 1)) = 0.5
		_HighlightLightFactor("HighlightLightFactor", Range( 0 , 1)) = 0
		_GlobalLightFactor("GlobalLightFactor", Range( 0 , 1)) = 0
		[Header(Vertex Function)]_VertexOffsetL("Vertex OffsetL", Vector) = (0,0,0,0)
		[Toggle]_FakeEyeTrackingL("FakeEyeTrackingL", Float) = 0
		_MoveRangeLxxyy("+/-MoveRangeL.xxyy", Vector) = (0.003,0.004,0.004,0.004)
		_WorkingAngleLxxyy("+/-WorkingAngleL.xxyy", Vector) = (30,45,30,30)
		_VertexOffsetR("Vertex OffsetR", Vector) = (0,0,0,0)
		[Toggle]_FakeEyeTrackingR("FakeEyeTrackingR", Float) = 0
		_MoveRangeRxxyy("+/-MoveRangeR.xxyy", Vector) = (0.004,0.003,0.004,0.004)
		_WorkingAngleRxxyy("+/-WorkingAngleR.xxyy", Vector) = (45,30,30,30)
		[Header(Custom Transform Direction)][Toggle]_UseCustomTransform("Use Custom Transform", Float) = 0
		[Toggle]_IsBlenderCoordinateSystem("IsBlenderCoordinateSystem", Float) = 0
		_XAxisVectorL("+X Axis Vector L", Vector) = (0,0,0,0)
		_YAxisVectorL("+Y Axis Vector L", Vector) = (0,0,0,0)
		_XAxisVectorR("+X Axis Vector R", Vector) = (0,0,0,0)
		_YAxisVectorR("-Y Axis Vector R", Vector) = (0,0,0,0)
		[Header(Tracking Basis(In ObjectSpace))]_FaceCenterPos("FaceCenterPos", Vector) = (0,0.15,0,0)
		_FaceForward("FaceForward", Vector) = (0,0,1,0)
		_FaceUp("FaceUp", Vector) = (0,1,0,0)
		[Header(Stencil Buffer)]_StencilReference("Stencil Reference", Range( 0 , 255)) = 0
		_StencilReadMask("Stencil ReadMask", Range( 0 , 255)) = 255
		_StencilWriteMask("Stencil WriteMask", Range( 0 , 255)) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilComparison("Stencil Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilPassFront("Stencil PassFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilFailFront("Stencil FailFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilZFailFront("Stencil ZFailFront", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 2
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" "Queue"="Geometry" }
	LOD 100

		Cull Off
		CGINCLUDE
		#pragma target 3.0 
		ENDCG

       	
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			#pragma multi_compile_fwdbase

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00Offset;
			uniform float _hi00AutoWaggle;
			uniform float _hi00Frequency;
			uniform float _hi00NoiseFrequency;
			uniform float _hi00NoiseFactor;
			uniform float _hi00WaggleRange;
			uniform float _hi00LRotation;
			uniform float _hi00RRotation;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01Offset;
			uniform float _hi01AutoWaggle;
			uniform float _hi01Frequency;
			uniform float _hi01NoiseFrequency;
			uniform float _hi01NoiseFactor;
			uniform float _hi01WaggleRange;
			uniform float _hi01LRotation;
			uniform float _hi01RRotation;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float2 _hi02Offset;
			uniform float _hi02AutoWaggle;
			uniform float _hi02Frequency;
			uniform float _hi02NoiseFrequency;
			uniform float _hi02NoiseFactor;
			uniform float _hi02WaggleRange;
			uniform float _hi02Rotation;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1741 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1743 = objToWorldDir1741;
				float3 objToWorldDir1740 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1742 = objToWorldDir1740;
				float3 normalizeResult1732 = normalize( cross( Forward1743 , Up1742 ) );
				float3 Left1737 = normalizeResult1732;
				float3 objToWorld1733 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1729 = normalize( ( _WorldSpaceCameraPos - objToWorld1733 ) );
				float3 Center2Cam1734 = normalizeResult1729;
				float dotResult1761 = dot( (Left1737).xz , (Center2Cam1734).xz );
				float Xsign1763 = sign( dotResult1761 );
				float3 FCenterPos1735 = objToWorld1733;
				float3 temp_output_1745_0 = ( _WorldSpaceCameraPos - FCenterPos1735 );
				float3 normalizeResult1746 = normalize( temp_output_1745_0 );
				float dotResult1749 = dot( normalizeResult1746 , Up1742 );
				float3 normalizeResult1754 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1749 * length( temp_output_1745_0 ) * Up1742 ) + FCenterPos1735 ) ) );
				float3 Cylinder1755 = normalizeResult1754;
				float dotResult1764 = dot( Forward1743 , Cylinder1755 );
				float Xvalue1768 = acos( dotResult1764 );
				float dotResult1769 = dot( Up1742 , Center2Cam1734 );
				float Ysign1778 = sign( dotResult1769 );
				float dotResult1773 = dot( Center2Cam1734 , Cylinder1755 );
				float Yvalue1777 = acos( dotResult1773 );
				float3 appendResult1836 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1781 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1787 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1781 : _XAxisVectorL ) );
				float3 appendResult1785 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1786 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1785 : _YAxisVectorL ) );
				float3 normalizeResult1790 = ASESafeNormalize( cross( normalizeResult1787 , normalizeResult1786 ) );
				float3x3 CustomMatrixL1802 = float3x3(normalizeResult1787, normalizeResult1786, normalizeResult1790);
				float3 appendResult1898 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1792 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1797 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1792 : _XAxisVectorR ) );
				float3 break1806 = -_YAxisVectorR;
				float3 appendResult1795 = (float3(-break1806.x , break1806.z , -break1806.y));
				float3 normalizeResult1796 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1795 : -_YAxisVectorR ) );
				float3 normalizeResult1800 = ASESafeNormalize( cross( normalizeResult1797 , normalizeResult1796 ) );
				float3x3 CustomMatrixR1801 = float3x3(normalizeResult1797, normalizeResult1796, normalizeResult1800);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_worldPos, ase_worldNormal);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_worldNormal, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float2 temp_cast_0 = (0.5).xx;
				float2 appendResult1003 = (float2(_hi00Offset.x , _hi00Offset.y));
				float2 temp_output_1002_0 = ( ( v.texcoord1.xy - temp_cast_0 ) + appendResult1003 );
				float hi00ctrl1599 = _hi00AutoWaggle;
				float hi00Auto1604 = ( ( sin( ( asin( _SinTime.w ) * _hi00Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi00NoiseFrequency ) ) * _hi00NoiseFactor ) ) * _hi00WaggleRange );
				float temp_output_1230_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00LRotation ) : _hi00LRotation ) * UNITY_PI ) / 45.0 );
				float hi00LSin1008 = sin( temp_output_1230_0 );
				float2 temp_output_1006_0 = ( temp_output_1002_0 * hi00LSin1008 );
				float2 temp_cast_1 = (0.5).xx;
				float hi00LCos1009 = cos( temp_output_1230_0 );
				float2 temp_cast_2 = (0.5).xx;
				float2 temp_cast_3 = (0.5).xx;
				float2 appendResult1021 = (float2(( (temp_output_1006_0).y + ( (temp_output_1002_0).x * hi00LCos1009 ) ) , ( ( hi00LCos1009 * (temp_output_1002_0).y ) - (temp_output_1006_0).x )));
				float2 hi00L1085 = ( float2( 0,0 ) + appendResult1021 + 0.5 );
				float2 temp_cast_4 = (0.5).xx;
				float2 appendResult1056 = (float2(_hi00Offset.z , _hi00Offset.w));
				float2 temp_output_1057_0 = ( ( v.texcoord1.xy - temp_cast_4 ) + appendResult1056 );
				float temp_output_1231_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00RRotation ) : _hi00RRotation ) * UNITY_PI ) / 45.0 );
				float hi00RSin1054 = sin( temp_output_1231_0 );
				float2 temp_output_1058_0 = ( temp_output_1057_0 * hi00RSin1054 );
				float2 temp_cast_5 = (0.5).xx;
				float hi00RCos1053 = cos( temp_output_1231_0 );
				float2 temp_cast_6 = (0.5).xx;
				float2 temp_cast_7 = (0.5).xx;
				float2 appendResult1070 = (float2(( (temp_output_1058_0).y + ( (temp_output_1057_0).x * hi00RCos1053 ) ) , ( ( hi00RCos1053 * (temp_output_1057_0).y ) - (temp_output_1058_0).x )));
				float2 hi00R1086 = ( float2( 0,0 ) + appendResult1070 + 0.5 );
				float2 vertexToFrag1948 = ( v.ase_texcoord.y >= 0.5 ? hi00L1085 : hi00R1086 );
				o.ase_texcoord1.zw = vertexToFrag1948;
				float2 temp_cast_8 = (0.5).xx;
				float2 appendResult1091 = (float2(_hi01Offset.x , _hi01Offset.y));
				float2 temp_output_1092_0 = ( ( v.texcoord1.xy - temp_cast_8 ) + appendResult1091 );
				float hi01ctrl1640 = _hi01AutoWaggle;
				float hi01Auto1638 = ( ( sin( ( asin( _SinTime.w ) * _hi01Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi01NoiseFrequency ) ) * _hi01NoiseFactor ) ) * _hi01WaggleRange );
				float temp_output_1147_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01LRotation ) : _hi01LRotation ) * UNITY_PI ) / 45.0 );
				float hi01LSin1157 = sin( temp_output_1147_0 );
				float2 temp_output_1093_0 = ( temp_output_1092_0 * hi01LSin1157 );
				float2 temp_cast_9 = (0.5).xx;
				float hi01LCos1158 = cos( temp_output_1147_0 );
				float2 temp_cast_10 = (0.5).xx;
				float2 temp_cast_11 = (0.5).xx;
				float2 appendResult1105 = (float2(( (temp_output_1093_0).y + ( (temp_output_1092_0).x * hi01LCos1158 ) ) , ( ( hi01LCos1158 * (temp_output_1092_0).y ) - (temp_output_1093_0).x )));
				float2 hi01L1144 = ( float2( 0,0 ) + appendResult1105 + 0.5 );
				float2 temp_cast_12 = (0.5).xx;
				float2 appendResult1115 = (float2(_hi01Offset.z , _hi01Offset.w));
				float2 temp_output_1116_0 = ( ( v.texcoord1.xy - temp_cast_12 ) + appendResult1115 );
				float temp_output_1152_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01RRotation ) : _hi01RRotation ) * UNITY_PI ) / 45.0 );
				float hi01RSin1159 = sin( temp_output_1152_0 );
				float2 temp_output_1117_0 = ( temp_output_1116_0 * hi01RSin1159 );
				float2 temp_cast_13 = (0.5).xx;
				float hi01RCos1160 = cos( temp_output_1152_0 );
				float2 temp_cast_14 = (0.5).xx;
				float2 temp_cast_15 = (0.5).xx;
				float2 appendResult1129 = (float2(( (temp_output_1117_0).y + ( (temp_output_1116_0).x * hi01RCos1160 ) ) , ( ( hi01RCos1160 * (temp_output_1116_0).y ) - (temp_output_1117_0).x )));
				float2 hi01R1143 = ( float2( 0,0 ) + appendResult1129 + 0.5 );
				float2 vertexToFrag1949 = ( v.ase_texcoord.y >= 0.5 ? hi01L1144 : hi01R1143 );
				o.ase_texcoord7.xy = vertexToFrag1949;
				float2 temp_cast_16 = (0.5).xx;
				float2 appendResult1170 = (float2(_hi02Offset.x , _hi02Offset.y));
				float2 temp_output_1171_0 = ( ( v.texcoord2.xy - temp_cast_16 ) + appendResult1170 );
				float hi02ctrl1668 = _hi02AutoWaggle;
				float hi02Auto1667 = ( ( sin( ( asin( _SinTime.w ) * _hi02Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi02NoiseFrequency ) ) * _hi02NoiseFactor ) ) * _hi02WaggleRange );
				float temp_output_1195_0 = ( ( ( hi02ctrl1668 == 1.0 ? ( hi02Auto1667 + _hi02Rotation ) : _hi02Rotation ) * UNITY_PI ) / 45.0 );
				float hi02Sin1209 = sin( temp_output_1195_0 );
				float2 temp_output_1172_0 = ( temp_output_1171_0 * hi02Sin1209 );
				float2 temp_cast_17 = (0.5).xx;
				float hi02Cos1210 = cos( temp_output_1195_0 );
				float2 temp_cast_18 = (0.5).xx;
				float2 temp_cast_19 = (0.5).xx;
				float2 appendResult1183 = (float2(( (temp_output_1172_0).y + ( (temp_output_1171_0).x * hi02Cos1210 ) ) , ( ( hi02Cos1210 * (temp_output_1171_0).y ) - (temp_output_1172_0).x )));
				float2 vertexToFrag1950 = ( float2( 0,0 ) + appendResult1183 + 0.5 );
				o.ase_texcoord7.zw = vertexToFrag1950;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )), CustomMatrixL1802 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )) ) : ( 0.0 == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )), CustomMatrixR1801 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )) ) );
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, uv_MainTex ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1962 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1955 = ( localIsThereALight1962 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1955 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1960 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1939 = ase_worldPos;
				float localPureLightAttenuation1939 = PureLightAttenuation( worldPos1939 );
				float3 temp_output_1942_0 = ( clampResult1960 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1939 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1941 = temp_output_1942_0;
				#else
				float3 staticSwitch1941 = clampResult1960;
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1941 ):( temp_output_1942_0 )) , float3( 0,0,0 ) , temp_cast_1 );
				UnityGIInput data304;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data304 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm304
				data304.lightmapUV = i.ase_lmap;
				#endif //dylm304
				#if UNITY_SHOULD_SAMPLE_SH //fsh304
				data304.ambient = i.ase_sh;
				#endif //fsh304
				UnityGI gi304 = UnityGI_Base(data304, 1, ase_worldNormal);
				float3 localMaxShadeSH9876 = MaxShadeSH9();
				float3 temp_cast_2 = (_MinIndirectLight).xxx;
				float3 temp_cast_3 = (_MaxIndirectLight).xxx;
				float3 clampResult1705 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_2 , temp_cast_3 );
				float3 temp_output_1706_0 = max( clampResult1704 , clampResult1705 );
				float grayscale1945 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1945).xxx;
				float3 lerpResult1944 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1944;
				float EyeLightFactor1708 = _EyeLightFactor;
				float4 lerpResult1712 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1708);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 vertexToFrag1948 = i.ase_texcoord1.zw;
				float2 hi00UV1089 = vertexToFrag1948;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 vertexToFrag1949 = i.ase_texcoord7.xy;
				float2 hi01UV1165 = vertexToFrag1949;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 vertexToFrag1950 = i.ase_texcoord7.zw;
				float2 hi02UV1216 = vertexToFrag1950;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, hi00UV1089 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, hi01UV1165 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, hi02UV1216 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1709 = _HighlightLightFactor;
				float4 lerpResult1713 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1709);
				float4 blend_diff916 = ( lerpResult1712 + lerpResult1713 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_11 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_11 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend One One, Zero One
			BlendOp Max, Max
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			Stencil
			{
				Ref [_StencilReference]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilComparison]
				Pass [_StencilPassFront]
				Fail [_StencilFailFront]
				ZFail [_StencilZFailFront]
			}
			CGPROGRAM
			#pragma multi_compile_fwdbase

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00Offset;
			uniform float _hi00AutoWaggle;
			uniform float _hi00Frequency;
			uniform float _hi00NoiseFrequency;
			uniform float _hi00NoiseFactor;
			uniform float _hi00WaggleRange;
			uniform float _hi00LRotation;
			uniform float _hi00RRotation;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01Offset;
			uniform float _hi01AutoWaggle;
			uniform float _hi01Frequency;
			uniform float _hi01NoiseFrequency;
			uniform float _hi01NoiseFactor;
			uniform float _hi01WaggleRange;
			uniform float _hi01LRotation;
			uniform float _hi01RRotation;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float2 _hi02Offset;
			uniform float _hi02AutoWaggle;
			uniform float _hi02Frequency;
			uniform float _hi02NoiseFrequency;
			uniform float _hi02NoiseFactor;
			uniform float _hi02WaggleRange;
			uniform float _hi02Rotation;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1741 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1743 = objToWorldDir1741;
				float3 objToWorldDir1740 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1742 = objToWorldDir1740;
				float3 normalizeResult1732 = normalize( cross( Forward1743 , Up1742 ) );
				float3 Left1737 = normalizeResult1732;
				float3 objToWorld1733 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1729 = normalize( ( _WorldSpaceCameraPos - objToWorld1733 ) );
				float3 Center2Cam1734 = normalizeResult1729;
				float dotResult1761 = dot( (Left1737).xz , (Center2Cam1734).xz );
				float Xsign1763 = sign( dotResult1761 );
				float3 FCenterPos1735 = objToWorld1733;
				float3 temp_output_1745_0 = ( _WorldSpaceCameraPos - FCenterPos1735 );
				float3 normalizeResult1746 = normalize( temp_output_1745_0 );
				float dotResult1749 = dot( normalizeResult1746 , Up1742 );
				float3 normalizeResult1754 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1749 * length( temp_output_1745_0 ) * Up1742 ) + FCenterPos1735 ) ) );
				float3 Cylinder1755 = normalizeResult1754;
				float dotResult1764 = dot( Forward1743 , Cylinder1755 );
				float Xvalue1768 = acos( dotResult1764 );
				float dotResult1769 = dot( Up1742 , Center2Cam1734 );
				float Ysign1778 = sign( dotResult1769 );
				float dotResult1773 = dot( Center2Cam1734 , Cylinder1755 );
				float Yvalue1777 = acos( dotResult1773 );
				float3 appendResult1836 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1781 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1787 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1781 : _XAxisVectorL ) );
				float3 appendResult1785 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1786 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1785 : _YAxisVectorL ) );
				float3 normalizeResult1790 = ASESafeNormalize( cross( normalizeResult1787 , normalizeResult1786 ) );
				float3x3 CustomMatrixL1802 = float3x3(normalizeResult1787, normalizeResult1786, normalizeResult1790);
				float3 appendResult1898 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1792 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1797 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1792 : _XAxisVectorR ) );
				float3 break1806 = -_YAxisVectorR;
				float3 appendResult1795 = (float3(-break1806.x , break1806.z , -break1806.y));
				float3 normalizeResult1796 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1795 : -_YAxisVectorR ) );
				float3 normalizeResult1800 = ASESafeNormalize( cross( normalizeResult1797 , normalizeResult1796 ) );
				float3x3 CustomMatrixR1801 = float3x3(normalizeResult1797, normalizeResult1796, normalizeResult1800);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_worldPos, ase_worldNormal);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_worldNormal, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float2 temp_cast_0 = (0.5).xx;
				float2 appendResult1003 = (float2(_hi00Offset.x , _hi00Offset.y));
				float2 temp_output_1002_0 = ( ( v.texcoord1.xy - temp_cast_0 ) + appendResult1003 );
				float hi00ctrl1599 = _hi00AutoWaggle;
				float hi00Auto1604 = ( ( sin( ( asin( _SinTime.w ) * _hi00Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi00NoiseFrequency ) ) * _hi00NoiseFactor ) ) * _hi00WaggleRange );
				float temp_output_1230_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00LRotation ) : _hi00LRotation ) * UNITY_PI ) / 45.0 );
				float hi00LSin1008 = sin( temp_output_1230_0 );
				float2 temp_output_1006_0 = ( temp_output_1002_0 * hi00LSin1008 );
				float2 temp_cast_1 = (0.5).xx;
				float hi00LCos1009 = cos( temp_output_1230_0 );
				float2 temp_cast_2 = (0.5).xx;
				float2 temp_cast_3 = (0.5).xx;
				float2 appendResult1021 = (float2(( (temp_output_1006_0).y + ( (temp_output_1002_0).x * hi00LCos1009 ) ) , ( ( hi00LCos1009 * (temp_output_1002_0).y ) - (temp_output_1006_0).x )));
				float2 hi00L1085 = ( float2( 0,0 ) + appendResult1021 + 0.5 );
				float2 temp_cast_4 = (0.5).xx;
				float2 appendResult1056 = (float2(_hi00Offset.z , _hi00Offset.w));
				float2 temp_output_1057_0 = ( ( v.texcoord1.xy - temp_cast_4 ) + appendResult1056 );
				float temp_output_1231_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00RRotation ) : _hi00RRotation ) * UNITY_PI ) / 45.0 );
				float hi00RSin1054 = sin( temp_output_1231_0 );
				float2 temp_output_1058_0 = ( temp_output_1057_0 * hi00RSin1054 );
				float2 temp_cast_5 = (0.5).xx;
				float hi00RCos1053 = cos( temp_output_1231_0 );
				float2 temp_cast_6 = (0.5).xx;
				float2 temp_cast_7 = (0.5).xx;
				float2 appendResult1070 = (float2(( (temp_output_1058_0).y + ( (temp_output_1057_0).x * hi00RCos1053 ) ) , ( ( hi00RCos1053 * (temp_output_1057_0).y ) - (temp_output_1058_0).x )));
				float2 hi00R1086 = ( float2( 0,0 ) + appendResult1070 + 0.5 );
				float2 vertexToFrag1948 = ( v.ase_texcoord.y >= 0.5 ? hi00L1085 : hi00R1086 );
				o.ase_texcoord1.zw = vertexToFrag1948;
				float2 temp_cast_8 = (0.5).xx;
				float2 appendResult1091 = (float2(_hi01Offset.x , _hi01Offset.y));
				float2 temp_output_1092_0 = ( ( v.texcoord1.xy - temp_cast_8 ) + appendResult1091 );
				float hi01ctrl1640 = _hi01AutoWaggle;
				float hi01Auto1638 = ( ( sin( ( asin( _SinTime.w ) * _hi01Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi01NoiseFrequency ) ) * _hi01NoiseFactor ) ) * _hi01WaggleRange );
				float temp_output_1147_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01LRotation ) : _hi01LRotation ) * UNITY_PI ) / 45.0 );
				float hi01LSin1157 = sin( temp_output_1147_0 );
				float2 temp_output_1093_0 = ( temp_output_1092_0 * hi01LSin1157 );
				float2 temp_cast_9 = (0.5).xx;
				float hi01LCos1158 = cos( temp_output_1147_0 );
				float2 temp_cast_10 = (0.5).xx;
				float2 temp_cast_11 = (0.5).xx;
				float2 appendResult1105 = (float2(( (temp_output_1093_0).y + ( (temp_output_1092_0).x * hi01LCos1158 ) ) , ( ( hi01LCos1158 * (temp_output_1092_0).y ) - (temp_output_1093_0).x )));
				float2 hi01L1144 = ( float2( 0,0 ) + appendResult1105 + 0.5 );
				float2 temp_cast_12 = (0.5).xx;
				float2 appendResult1115 = (float2(_hi01Offset.z , _hi01Offset.w));
				float2 temp_output_1116_0 = ( ( v.texcoord1.xy - temp_cast_12 ) + appendResult1115 );
				float temp_output_1152_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01RRotation ) : _hi01RRotation ) * UNITY_PI ) / 45.0 );
				float hi01RSin1159 = sin( temp_output_1152_0 );
				float2 temp_output_1117_0 = ( temp_output_1116_0 * hi01RSin1159 );
				float2 temp_cast_13 = (0.5).xx;
				float hi01RCos1160 = cos( temp_output_1152_0 );
				float2 temp_cast_14 = (0.5).xx;
				float2 temp_cast_15 = (0.5).xx;
				float2 appendResult1129 = (float2(( (temp_output_1117_0).y + ( (temp_output_1116_0).x * hi01RCos1160 ) ) , ( ( hi01RCos1160 * (temp_output_1116_0).y ) - (temp_output_1117_0).x )));
				float2 hi01R1143 = ( float2( 0,0 ) + appendResult1129 + 0.5 );
				float2 vertexToFrag1949 = ( v.ase_texcoord.y >= 0.5 ? hi01L1144 : hi01R1143 );
				o.ase_texcoord7.xy = vertexToFrag1949;
				float2 temp_cast_16 = (0.5).xx;
				float2 appendResult1170 = (float2(_hi02Offset.x , _hi02Offset.y));
				float2 temp_output_1171_0 = ( ( v.texcoord2.xy - temp_cast_16 ) + appendResult1170 );
				float hi02ctrl1668 = _hi02AutoWaggle;
				float hi02Auto1667 = ( ( sin( ( asin( _SinTime.w ) * _hi02Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi02NoiseFrequency ) ) * _hi02NoiseFactor ) ) * _hi02WaggleRange );
				float temp_output_1195_0 = ( ( ( hi02ctrl1668 == 1.0 ? ( hi02Auto1667 + _hi02Rotation ) : _hi02Rotation ) * UNITY_PI ) / 45.0 );
				float hi02Sin1209 = sin( temp_output_1195_0 );
				float2 temp_output_1172_0 = ( temp_output_1171_0 * hi02Sin1209 );
				float2 temp_cast_17 = (0.5).xx;
				float hi02Cos1210 = cos( temp_output_1195_0 );
				float2 temp_cast_18 = (0.5).xx;
				float2 temp_cast_19 = (0.5).xx;
				float2 appendResult1183 = (float2(( (temp_output_1172_0).y + ( (temp_output_1171_0).x * hi02Cos1210 ) ) , ( ( hi02Cos1210 * (temp_output_1171_0).y ) - (temp_output_1172_0).x )));
				float2 vertexToFrag1950 = ( float2( 0,0 ) + appendResult1183 + 0.5 );
				o.ase_texcoord7.zw = vertexToFrag1950;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )), CustomMatrixL1802 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )) ) : ( 0.0 == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )), CustomMatrixR1801 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )) ) );
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, uv_MainTex ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1962 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1955 = ( localIsThereALight1962 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1955 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1960 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1939 = ase_worldPos;
				float localPureLightAttenuation1939 = PureLightAttenuation( worldPos1939 );
				float3 temp_output_1942_0 = ( clampResult1960 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1939 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1941 = temp_output_1942_0;
				#else
				float3 staticSwitch1941 = clampResult1960;
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1941 ):( temp_output_1942_0 )) , float3( 0,0,0 ) , temp_cast_1 );
				UnityGIInput data304;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data304 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm304
				data304.lightmapUV = i.ase_lmap;
				#endif //dylm304
				#if UNITY_SHOULD_SAMPLE_SH //fsh304
				data304.ambient = i.ase_sh;
				#endif //fsh304
				UnityGI gi304 = UnityGI_Base(data304, 1, ase_worldNormal);
				float3 localMaxShadeSH9876 = MaxShadeSH9();
				float3 temp_cast_2 = (_MinIndirectLight).xxx;
				float3 temp_cast_3 = (_MaxIndirectLight).xxx;
				float3 clampResult1705 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_2 , temp_cast_3 );
				float3 temp_output_1706_0 = max( clampResult1704 , clampResult1705 );
				float grayscale1945 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1945).xxx;
				float3 lerpResult1944 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1944;
				float EyeLightFactor1708 = _EyeLightFactor;
				float4 lerpResult1712 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1708);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 vertexToFrag1948 = i.ase_texcoord1.zw;
				float2 hi00UV1089 = vertexToFrag1948;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 vertexToFrag1949 = i.ase_texcoord7.xy;
				float2 hi01UV1165 = vertexToFrag1949;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 vertexToFrag1950 = i.ase_texcoord7.zw;
				float2 hi02UV1216 = vertexToFrag1950;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, hi00UV1089 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, hi01UV1165 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, hi02UV1216 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1709 = _HighlightLightFactor;
				float4 lerpResult1713 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1709);
				float4 blend_diff916 = ( lerpResult1712 + lerpResult1713 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_11 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_11 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			#pragma multi_compile_fwdbase

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS 1

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilFailFront;
			uniform float _StencilPassFront;
			uniform float _StencilComparison;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseCustomTransform;
			uniform float _FakeEyeTrackingL;
			uniform float3 _VertexOffsetL;
			uniform float3 _FaceForward;
			uniform float3 _FaceUp;
			uniform float3 _FaceCenterPos;
			uniform float4 _WorkingAngleLxxyy;
			uniform float4 _MoveRangeLxxyy;
			uniform float _IsBlenderCoordinateSystem;
			uniform float3 _XAxisVectorL;
			uniform float3 _YAxisVectorL;
			uniform float _FakeEyeTrackingR;
			uniform float3 _VertexOffsetR;
			uniform float4 _WorkingAngleRxxyy;
			uniform float4 _MoveRangeRxxyy;
			uniform float3 _XAxisVectorR;
			uniform float3 _YAxisVectorR;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _EyeShadow;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _EyeLightFactor;
			uniform float _HighLightShadow;
			uniform float _hi00Strength;
			uniform float _hi01Strength;
			uniform float _hi02Strength;
			uniform float _hi00Toggle;
			uniform sampler2D _hi00;
			uniform float4 _hi00Offset;
			uniform float _hi00AutoWaggle;
			uniform float _hi00Frequency;
			uniform float _hi00NoiseFrequency;
			uniform float _hi00NoiseFactor;
			uniform float _hi00WaggleRange;
			uniform float _hi00LRotation;
			uniform float _hi00RRotation;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01Offset;
			uniform float _hi01AutoWaggle;
			uniform float _hi01Frequency;
			uniform float _hi01NoiseFrequency;
			uniform float _hi01NoiseFactor;
			uniform float _hi01WaggleRange;
			uniform float _hi01LRotation;
			uniform float _hi01RRotation;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float2 _hi02Offset;
			uniform float _hi02AutoWaggle;
			uniform float _hi02Frequency;
			uniform float _hi02NoiseFrequency;
			uniform float _hi02NoiseFactor;
			uniform float _hi02WaggleRange;
			uniform float _hi02Rotation;
			uniform float _hi02Step;
			uniform float _hi02StepFeather;
			uniform float _HighlightLightFactor;
			uniform float _GlobalLightFactor;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform float _Saturation;
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			float IsThereALight(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float PureLightAttenuation( float3 worldPos )
			{
				#ifdef POINT
				        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz; \
				        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				#ifdef SPOT
				#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))
				#else
				#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord
				#endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#ifdef DIRECTIONAL
				        return 1;
				#endif
				#ifdef POINT_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w;
				#endif
				#ifdef DIRECTIONAL_COOKIE
				#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy
				#   else
				#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord
				#   endif
				        DECLARE_LIGHT_COORD(input, worldPos); \
				        return tex2D(_LightTexture0, lightCoord).w;
				#endif
			}
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1741 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1743 = objToWorldDir1741;
				float3 objToWorldDir1740 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1742 = objToWorldDir1740;
				float3 normalizeResult1732 = normalize( cross( Forward1743 , Up1742 ) );
				float3 Left1737 = normalizeResult1732;
				float3 objToWorld1733 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1729 = normalize( ( _WorldSpaceCameraPos - objToWorld1733 ) );
				float3 Center2Cam1734 = normalizeResult1729;
				float dotResult1761 = dot( (Left1737).xz , (Center2Cam1734).xz );
				float Xsign1763 = sign( dotResult1761 );
				float3 FCenterPos1735 = objToWorld1733;
				float3 temp_output_1745_0 = ( _WorldSpaceCameraPos - FCenterPos1735 );
				float3 normalizeResult1746 = normalize( temp_output_1745_0 );
				float dotResult1749 = dot( normalizeResult1746 , Up1742 );
				float3 normalizeResult1754 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1749 * length( temp_output_1745_0 ) * Up1742 ) + FCenterPos1735 ) ) );
				float3 Cylinder1755 = normalizeResult1754;
				float dotResult1764 = dot( Forward1743 , Cylinder1755 );
				float Xvalue1768 = acos( dotResult1764 );
				float dotResult1769 = dot( Up1742 , Center2Cam1734 );
				float Ysign1778 = sign( dotResult1769 );
				float dotResult1773 = dot( Center2Cam1734 , Cylinder1755 );
				float Yvalue1777 = acos( dotResult1773 );
				float3 appendResult1836 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1781 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1787 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1781 : _XAxisVectorL ) );
				float3 appendResult1785 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1786 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1785 : _YAxisVectorL ) );
				float3 normalizeResult1790 = ASESafeNormalize( cross( normalizeResult1787 , normalizeResult1786 ) );
				float3x3 CustomMatrixL1802 = float3x3(normalizeResult1787, normalizeResult1786, normalizeResult1790);
				float3 appendResult1898 = (float3(( Xsign1763 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1768 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1778 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1777 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1792 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1797 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1792 : _XAxisVectorR ) );
				float3 break1806 = -_YAxisVectorR;
				float3 appendResult1795 = (float3(-break1806.x , break1806.z , -break1806.y));
				float3 normalizeResult1796 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1795 : -_YAxisVectorR ) );
				float3 normalizeResult1800 = ASESafeNormalize( cross( normalizeResult1797 , normalizeResult1796 ) );
				float3x3 CustomMatrixR1801 = float3x3(normalizeResult1797, normalizeResult1796, normalizeResult1800);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_worldPos, ase_worldNormal);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_worldNormal, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float2 temp_cast_0 = (0.5).xx;
				float2 appendResult1003 = (float2(_hi00Offset.x , _hi00Offset.y));
				float2 temp_output_1002_0 = ( ( v.texcoord1.xy - temp_cast_0 ) + appendResult1003 );
				float hi00ctrl1599 = _hi00AutoWaggle;
				float hi00Auto1604 = ( ( sin( ( asin( _SinTime.w ) * _hi00Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi00NoiseFrequency ) ) * _hi00NoiseFactor ) ) * _hi00WaggleRange );
				float temp_output_1230_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00LRotation ) : _hi00LRotation ) * UNITY_PI ) / 45.0 );
				float hi00LSin1008 = sin( temp_output_1230_0 );
				float2 temp_output_1006_0 = ( temp_output_1002_0 * hi00LSin1008 );
				float2 temp_cast_1 = (0.5).xx;
				float hi00LCos1009 = cos( temp_output_1230_0 );
				float2 temp_cast_2 = (0.5).xx;
				float2 temp_cast_3 = (0.5).xx;
				float2 appendResult1021 = (float2(( (temp_output_1006_0).y + ( (temp_output_1002_0).x * hi00LCos1009 ) ) , ( ( hi00LCos1009 * (temp_output_1002_0).y ) - (temp_output_1006_0).x )));
				float2 hi00L1085 = ( float2( 0,0 ) + appendResult1021 + 0.5 );
				float2 temp_cast_4 = (0.5).xx;
				float2 appendResult1056 = (float2(_hi00Offset.z , _hi00Offset.w));
				float2 temp_output_1057_0 = ( ( v.texcoord1.xy - temp_cast_4 ) + appendResult1056 );
				float temp_output_1231_0 = ( ( ( hi00ctrl1599 == 1.0 ? ( hi00Auto1604 + _hi00RRotation ) : _hi00RRotation ) * UNITY_PI ) / 45.0 );
				float hi00RSin1054 = sin( temp_output_1231_0 );
				float2 temp_output_1058_0 = ( temp_output_1057_0 * hi00RSin1054 );
				float2 temp_cast_5 = (0.5).xx;
				float hi00RCos1053 = cos( temp_output_1231_0 );
				float2 temp_cast_6 = (0.5).xx;
				float2 temp_cast_7 = (0.5).xx;
				float2 appendResult1070 = (float2(( (temp_output_1058_0).y + ( (temp_output_1057_0).x * hi00RCos1053 ) ) , ( ( hi00RCos1053 * (temp_output_1057_0).y ) - (temp_output_1058_0).x )));
				float2 hi00R1086 = ( float2( 0,0 ) + appendResult1070 + 0.5 );
				float2 vertexToFrag1948 = ( v.ase_texcoord.y >= 0.5 ? hi00L1085 : hi00R1086 );
				o.ase_texcoord1.zw = vertexToFrag1948;
				float2 temp_cast_8 = (0.5).xx;
				float2 appendResult1091 = (float2(_hi01Offset.x , _hi01Offset.y));
				float2 temp_output_1092_0 = ( ( v.texcoord1.xy - temp_cast_8 ) + appendResult1091 );
				float hi01ctrl1640 = _hi01AutoWaggle;
				float hi01Auto1638 = ( ( sin( ( asin( _SinTime.w ) * _hi01Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi01NoiseFrequency ) ) * _hi01NoiseFactor ) ) * _hi01WaggleRange );
				float temp_output_1147_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01LRotation ) : _hi01LRotation ) * UNITY_PI ) / 45.0 );
				float hi01LSin1157 = sin( temp_output_1147_0 );
				float2 temp_output_1093_0 = ( temp_output_1092_0 * hi01LSin1157 );
				float2 temp_cast_9 = (0.5).xx;
				float hi01LCos1158 = cos( temp_output_1147_0 );
				float2 temp_cast_10 = (0.5).xx;
				float2 temp_cast_11 = (0.5).xx;
				float2 appendResult1105 = (float2(( (temp_output_1093_0).y + ( (temp_output_1092_0).x * hi01LCos1158 ) ) , ( ( hi01LCos1158 * (temp_output_1092_0).y ) - (temp_output_1093_0).x )));
				float2 hi01L1144 = ( float2( 0,0 ) + appendResult1105 + 0.5 );
				float2 temp_cast_12 = (0.5).xx;
				float2 appendResult1115 = (float2(_hi01Offset.z , _hi01Offset.w));
				float2 temp_output_1116_0 = ( ( v.texcoord1.xy - temp_cast_12 ) + appendResult1115 );
				float temp_output_1152_0 = ( ( ( hi01ctrl1640 == 1.0 ? ( hi01Auto1638 + _hi01RRotation ) : _hi01RRotation ) * UNITY_PI ) / 45.0 );
				float hi01RSin1159 = sin( temp_output_1152_0 );
				float2 temp_output_1117_0 = ( temp_output_1116_0 * hi01RSin1159 );
				float2 temp_cast_13 = (0.5).xx;
				float hi01RCos1160 = cos( temp_output_1152_0 );
				float2 temp_cast_14 = (0.5).xx;
				float2 temp_cast_15 = (0.5).xx;
				float2 appendResult1129 = (float2(( (temp_output_1117_0).y + ( (temp_output_1116_0).x * hi01RCos1160 ) ) , ( ( hi01RCos1160 * (temp_output_1116_0).y ) - (temp_output_1117_0).x )));
				float2 hi01R1143 = ( float2( 0,0 ) + appendResult1129 + 0.5 );
				float2 vertexToFrag1949 = ( v.ase_texcoord.y >= 0.5 ? hi01L1144 : hi01R1143 );
				o.ase_texcoord7.xy = vertexToFrag1949;
				float2 temp_cast_16 = (0.5).xx;
				float2 appendResult1170 = (float2(_hi02Offset.x , _hi02Offset.y));
				float2 temp_output_1171_0 = ( ( v.texcoord2.xy - temp_cast_16 ) + appendResult1170 );
				float hi02ctrl1668 = _hi02AutoWaggle;
				float hi02Auto1667 = ( ( sin( ( asin( _SinTime.w ) * _hi02Frequency ) ) + ( sin( ( asin( _CosTime.w ) * _hi02NoiseFrequency ) ) * _hi02NoiseFactor ) ) * _hi02WaggleRange );
				float temp_output_1195_0 = ( ( ( hi02ctrl1668 == 1.0 ? ( hi02Auto1667 + _hi02Rotation ) : _hi02Rotation ) * UNITY_PI ) / 45.0 );
				float hi02Sin1209 = sin( temp_output_1195_0 );
				float2 temp_output_1172_0 = ( temp_output_1171_0 * hi02Sin1209 );
				float2 temp_cast_17 = (0.5).xx;
				float hi02Cos1210 = cos( temp_output_1195_0 );
				float2 temp_cast_18 = (0.5).xx;
				float2 temp_cast_19 = (0.5).xx;
				float2 appendResult1183 = (float2(( (temp_output_1172_0).y + ( (temp_output_1171_0).x * hi02Cos1210 ) ) , ( ( hi02Cos1210 * (temp_output_1171_0).y ) - (temp_output_1172_0).x )));
				float2 vertexToFrag1950 = ( float2( 0,0 ) + appendResult1183 + 0.5 );
				o.ase_texcoord7.zw = vertexToFrag1950;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )), CustomMatrixL1802 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1836 ) ):( _VertexOffsetL )) ) : ( 0.0 == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )), CustomMatrixR1801 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1898 ) ):( _VertexOffsetR )) ) );
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 uv_MainTex = i.ase_texcoord1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 temp_output_1425_0 = ( tex2D( _MainTex, uv_MainTex ) * _AdditionalDiffuseColor );
				float4 Shadow1322 = _Shadow;
				float localIsThereALight797 = IsThereALight();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( worldSpaceLightDir , ase_worldNormal );
				float HalfLambertTerm781 = ( localIsThereALight797 == 1.0 ? (dotResult779*0.5 + 0.5) : 1.0 );
				float localIsThereALight1962 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1955 = ( localIsThereALight1962 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1955 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1960 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1939 = ase_worldPos;
				float localPureLightAttenuation1939 = PureLightAttenuation( worldPos1939 );
				float3 temp_output_1942_0 = ( clampResult1960 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1939 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1941 = temp_output_1942_0;
				#else
				float3 staticSwitch1941 = clampResult1960;
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1941 ):( temp_output_1942_0 )) , float3( 0,0,0 ) , temp_cast_1 );
				UnityGIInput data304;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data304 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm304
				data304.lightmapUV = i.ase_lmap;
				#endif //dylm304
				#if UNITY_SHOULD_SAMPLE_SH //fsh304
				data304.ambient = i.ase_sh;
				#endif //fsh304
				UnityGI gi304 = UnityGI_Base(data304, 1, ase_worldNormal);
				float3 localMaxShadeSH9876 = MaxShadeSH9();
				float3 temp_cast_2 = (_MinIndirectLight).xxx;
				float3 temp_cast_3 = (_MaxIndirectLight).xxx;
				float3 clampResult1705 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_2 , temp_cast_3 );
				float3 temp_output_1706_0 = max( clampResult1704 , clampResult1705 );
				float grayscale1945 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1945).xxx;
				float3 lerpResult1944 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1944;
				float EyeLightFactor1708 = _EyeLightFactor;
				float4 lerpResult1712 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1708);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 vertexToFrag1948 = i.ase_texcoord1.zw;
				float2 hi00UV1089 = vertexToFrag1948;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 vertexToFrag1949 = i.ase_texcoord7.xy;
				float2 hi01UV1165 = vertexToFrag1949;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 vertexToFrag1950 = i.ase_texcoord7.zw;
				float2 hi02UV1216 = vertexToFrag1950;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, hi00UV1089 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, hi01UV1165 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, hi02UV1216 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1709 = _HighlightLightFactor;
				float4 lerpResult1713 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1709);
				float4 blend_diff916 = ( lerpResult1712 + lerpResult1713 );
				float GlobalLightFactor1719 = _GlobalLightFactor;
				float4 lerpResult1723 = lerp( ( _CharaColor * blend_diff916 ) , ( _CharaColor * blend_diff916 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1719);
				float2 uv_EmiTex = i.ase_texcoord1.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float4 Refined_diff612 = ( lerpResult1723 + ( Emissive600 * _EmissiveColor * _EmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_11 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_11 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19105
Node;AmplifyShaderEditor.CommentaryNode;1956;-5387.377,627.3367;Inherit;False;2116.237;1227.786;;44;1706;773;825;1940;1704;1936;1937;1938;1939;1942;826;304;875;303;876;301;1705;1941;1944;1945;1946;208;780;779;776;778;1929;800;797;781;1951;1952;1953;1954;1955;1710;1709;1708;1707;1720;1719;1960;1961;1962;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1928;-4191.22,4622.324;Inherit;False;1688.098;1002.819;;35;1787;1788;1802;1809;1780;1781;1782;1923;1924;1805;1783;1785;1784;1786;1789;1790;1925;1804;1791;1792;1793;1797;1798;1801;1926;1927;1794;1795;1803;1807;1808;1806;1796;1799;1800;Custom Transform;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1696;-3235.56,1599.333;Inherit;False;2589.269;1182.234;;41;1307;1304;1378;1376;1377;1379;1382;1234;1285;1286;1370;1389;1342;1683;1679;1678;1681;1682;913;1222;65;1343;1686;1687;1688;1689;1690;1344;1691;1692;1693;1253;1254;1252;66;1223;914;1694;1695;1713;1714;HighLight Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1674;-260.1498,-2455.781;Inherit;False;1181.141;1682.644;;53;1616;1617;1620;1614;1595;1592;1593;1619;1618;1621;1622;1603;1596;1599;1598;1624;1625;1626;1627;1630;1631;1632;1633;1634;1637;1639;1629;1628;1635;1636;1641;1638;1640;1651;1652;1653;1654;1655;1656;1657;1658;1659;1660;1661;1662;1663;1664;1665;1666;1667;1668;1594;1604;Waggle Control;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1673;-323.0242,-571.8103;Inherit;False;1586.006;901.0853;;36;1170;1171;1172;1173;1174;1175;1176;1177;1178;1179;1180;1181;1182;1183;1184;1185;1186;1187;1192;1215;1207;1214;1216;1196;1197;1209;1210;1194;1195;1193;1669;1670;1672;1208;1671;1950;hi02UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1650;-3237.429,-901.5805;Inherit;False;2805.227;1516.024;;76;1115;1116;1117;1118;1119;1120;1121;1122;1123;1124;1125;1126;1127;1128;1129;1130;1131;1132;1136;1140;1168;1091;1092;1093;1094;1095;1096;1097;1098;1099;1100;1102;1103;1104;1105;1106;1107;1108;1109;1114;1101;1150;1153;1154;1161;1162;1163;1164;1159;1160;1165;1166;1151;1152;1240;1167;1144;1143;1646;1647;1648;1649;1156;1148;1149;1157;1158;1146;1145;1147;1155;1642;1643;1644;1645;1949;hi01UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1623;-3253.798,-2509.689;Inherit;False;2809.845;1476.708;;76;1003;1002;1006;1007;1016;1012;1010;1015;1020;1017;1011;1013;1019;1018;1021;1025;1026;1022;1027;1029;1056;1057;1058;1059;1060;1061;1062;1063;1064;1065;1066;1067;1068;1069;1070;1071;1072;1080;1073;1000;1079;1051;1052;1054;1053;1082;1084;1089;1083;1049;1231;1074;1239;1088;1087;1085;1086;1005;1004;1008;1009;997;996;1230;1600;1606;1048;1610;1608;1607;1047;994;1609;1605;1601;1948;hi00UV;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1426;-2976.086,748.0109;Inherit;False;2172.378;763.1063;;27;1345;1325;1323;1324;1318;1309;1310;1312;1316;1314;1317;1315;1322;1321;1380;916;1390;1359;1424;1425;932;933;1712;1711;1957;1958;1959;Main Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;911;-3877.887,-508.994;Inherit;False;563.0215;1092.147;;10;345;888;906;907;889;908;909;910;68;600;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;-339.2699,501.8363;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;643;-601.8802,1347.168;Inherit;False;946.0739;1196.966;;19;609;610;605;604;611;606;612;602;613;616;614;617;615;618;1697;1721;1722;1723;1724;Emissive and other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-3538.865,353.5129;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;888;-3557.693,-259.7934;Inherit;False;_hi00;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;889;-3561.463,-58.32374;Inherit;False;_hi01;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;910;-3556.635,142.5201;Inherit;False;_hi02;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-3567.635,-467.7209;Inherit;False;_eye;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-512.1442,2338.781;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-263.2475,2199.979;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-139.797,2250.183;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-563.7191,2426.13;Inherit;False;Property;_Saturation;Saturation;52;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;132.6317,2238.969;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;869;-252.8253,1102.89;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;86;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;-251.8039,1014.002;Inherit;False;Property;_StencilFailFront;Stencil FailFront;85;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;-252.0719,921.8448;Inherit;False;Property;_StencilPassFront;Stencil PassFront;84;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;-254.1154,827.78;Inherit;False;Property;_StencilComparison;Stencil Comparison;83;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;-282.4536,729.9727;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;82;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;-287.5633,641.0858;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;81;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1345;-1828.41,1102.49;Inherit;False;Property;_EyeShadow;EyeShadow;2;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1325;-1983.27,1181.129;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1323;-2450.992,1285.425;Inherit;False;1322;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1324;-2288.381,1224.126;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1318;-2156.434,1290.853;Inherit;False;1312;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1380;-1165.008,1104.351;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1359;-1808.839,1212.242;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1425;-2415.715,1103.918;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;916;-1027.708,1099.753;Inherit;False;blend_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;932;-2761.884,1094.533;Inherit;True;Property;_TextureSample0;Texture Sample 0;28;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;933;-2925.086,1095.55;Inherit;False;345;_eye;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.DynamicAppendNode;1003;-2223.371,-1835.927;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1002;-2070.873,-1938.226;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1006;-1898.973,-1909.966;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1007;-1926.575,-2007.866;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1016;-1940.208,-1754.248;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1012;-1729.489,-2068.588;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1015;-1762.567,-1929.301;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1020;-1755.607,-1836.148;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1017;-1724.408,-1729.548;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1011;-2063.402,-1841.035;Inherit;False;1008;hi00LSin;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1013;-1563.668,-2012.602;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1019;-1556.607,-1775.048;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1018;-1919.606,-1669.647;Inherit;False;1009;hi00LCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1021;-1397.831,-1899.684;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1025;-2372.218,-1940.772;Inherit;False;Constant;_05_3;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1026;-2210.95,-2007.511;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1022;-1403.242,-1792.649;Inherit;False;Constant;_05_1;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1027;-1234.661,-1944.723;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1029;-1399.945,-2051.103;Inherit;False;Constant;_Offset;Offset;31;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.DynamicAppendNode;1056;-2255.141,-1315.259;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1057;-2102.642,-1417.558;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1058;-1930.743,-1389.3;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1059;-1958.347,-1487.199;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1060;-1971.979,-1233.58;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;-1761.261,-1547.92;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1062;-1941.572,-1577.367;Inherit;False;1053;hi00RCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1063;-1794.337,-1408.634;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1064;-1787.377,-1315.479;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;-1756.178,-1208.881;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1067;-1595.438,-1491.933;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1068;-1588.378,-1254.38;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1069;-1951.377,-1148.981;Inherit;False;1053;hi00RCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1070;-1429.602,-1379.018;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1071;-2403.988,-1420.102;Inherit;False;Constant;_05_4;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1072;-2242.72,-1486.843;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1080;-1431.715,-1530.435;Inherit;False;Constant;_Offset1;Offset;31;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1073;-1435.013,-1271.982;Inherit;False;Constant;_05_5;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1000;-2409.189,-2061.119;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1079;-2440.959,-1540.451;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1074;-1218.852,-1433.303;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;1239;-2681.1,-1555.371;Inherit;False;Property;_hi00Offset;hi00 Offset;12;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1085;-1103.465,-1946.652;Inherit;False;hi00L;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1115;-2246.495,332.1654;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1116;-2093.996,229.8654;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1117;-1922.097,258.1242;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1118;-1949.699,160.2243;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1119;-1963.333,413.844;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1120;-1752.613,99.50508;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1121;-1932.926,70.05625;Inherit;False;1160;hi01RCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1122;-1785.69,238.7902;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1123;-1778.73,331.9444;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1124;-1747.531,438.5439;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1125;-2086.526,327.0574;Inherit;False;1159;hi01RSin;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1126;-1586.791,155.4904;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1127;-1579.731,393.0448;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1128;-1942.732,498.4436;Inherit;False;1160;hi01RCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1129;-1420.954,268.4052;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1130;-2395.341,227.3212;Inherit;False;Constant;_05_8;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1131;-2234.073,160.5812;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1132;-1257.781,223.3683;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1136;-1423.068,116.9882;Inherit;False;Constant;_Offset3;Offset;31;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1140;-1426.366,375.4427;Inherit;False;Constant;_0_7;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1168;-2432.314,106.9723;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1091;-2214.724,-188.5024;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1092;-2062.226,-290.8021;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1093;-1890.325,-262.5421;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1094;-1917.929,-360.4421;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1095;-1931.563,-106.8244;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1096;-1720.842,-421.163;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1097;-1901.155,-450.61;Inherit;False;1158;hi01LCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1098;-1753.921,-281.8783;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1099;-1746.961,-188.7233;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1100;-1715.76,-82.12404;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1102;-1555.021,-365.1769;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1103;-1547.961,-127.6233;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1104;-1910.962,-22.22292;Inherit;False;1158;hi01LCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1105;-1389.183,-252.2611;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1106;-2363.571,-293.3471;Inherit;False;Constant;_05_6;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1107;-2202.303,-360.0861;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1108;-1394.595,-145.2243;Inherit;False;Constant;_05_7;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1109;-1226.011,-297.299;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1114;-1391.298,-403.6781;Inherit;False;Constant;_Offset2;Offset;31;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1101;-2054.756,-193.6103;Inherit;False;1157;hi01LSin;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1240;-2673.019,88.12208;Inherit;False;Property;_hi01Offset;hi01 Offset;25;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1167;-2400.543,-413.694;Inherit;False;1;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1143;-1127.31,218.7046;Inherit;False;hi01R;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CosOpNode;1196;526.7791,-338.2366;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1197;526.7791,-421.4368;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1209;644.7155,-426.5208;Inherit;False;hi02Sin;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1210;642.6154,-342.1207;Inherit;False;hi02Cos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1194;258.0749,-387.0827;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1195;397.8734,-385.7827;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;45;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1193;69.72437,-325.4577;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1669;100.4507,-479.1792;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1670;-35.95127,-440.7183;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1672;-81.14622,-521.8103;Inherit;False;1668;hi02ctrl;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1208;-203.1409,-347.2578;Inherit;False;Property;_hi02Rotation;hi02 Rotation;42;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1671;-199.5362,-429.5642;Inherit;False;1667;hi02Auto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinTimeNode;1592;-127.1979,-2405.781;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1624;137.7777,-1806.39;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosTime;1625;-210.1498,-1698.728;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ASinOpNode;1626;-63.14978,-1626.728;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1627;192.8505,-1629.728;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinTimeNode;1630;-132.3734,-1866.206;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ASinOpNode;1631;5.277633,-1797.99;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1632;419.5505,-1792.028;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1633;59.35037,-1629.628;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1634;313.2504,-1648.328;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1637;553.99,-1783.394;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1639;271.7779,-1806.09;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1629;-49.92209,-1713.09;Inherit;False;Property;_hi01Frequency;hi01Frequency;33;0;Create;True;0;0;0;False;0;False;25;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1628;-173.1288,-1542.665;Inherit;False;Property;_hi01NoiseFrequency;hi01NoiseFrequency;34;0;Create;True;0;0;0;False;0;False;30;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1635;128.6504,-1536.528;Inherit;False;Property;_hi01NoiseFactor;hi01NoiseFactor;35;0;Create;True;0;0;0;False;0;False;0.3;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1636;341.3898,-1545.595;Inherit;False;Property;_hi01WaggleRange;hi01 WaggleRange;32;0;Create;True;0;0;0;False;0;False;1;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1641;-123.4901,-1426.681;Inherit;False;Property;_hi01AutoWaggle;hi01 AutoWaggle;31;1;[Toggle];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1638;687.5822,-1787.506;Inherit;False;hi01Auto;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1640;73.00699,-1426.644;Inherit;False;hi01ctrl;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1651;147.1873,-1268.883;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosTime;1652;-200.7402,-1161.221;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ASinOpNode;1653;-53.74024,-1089.221;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1654;202.2603,-1092.221;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinTimeNode;1655;-122.9639,-1328.699;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ASinOpNode;1656;14.68725,-1260.483;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1657;428.9603,-1254.521;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1658;68.75997,-1092.121;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1659;322.6603,-1110.821;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1660;563.3998,-1245.887;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1661;281.1876,-1268.583;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1662;-40.51254,-1175.583;Inherit;False;Property;_hi02Frequency;hi02Frequency;45;0;Create;True;0;0;0;False;0;False;25;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1663;-163.7192,-1005.158;Inherit;False;Property;_hi02NoiseFrequency;hi02NoiseFrequency;46;0;Create;True;0;0;0;False;0;False;30;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1664;138.06,-999.0209;Inherit;False;Property;_hi02NoiseFactor;hi02NoiseFactor;47;0;Create;True;0;0;0;False;0;False;0.3;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;350.7997,-1008.088;Inherit;False;Property;_hi02WaggleRange;hi02 WaggleRange;44;0;Create;True;0;0;0;False;0;False;1;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1666;-114.0806,-889.1739;Inherit;False;Property;_hi02AutoWaggle;hi02 AutoWaggle;43;1;[Toggle];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1667;696.9913,-1249.999;Inherit;False;hi02Auto;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1668;82.4166,-889.1368;Inherit;False;hi02ctrl;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;-289.2696,551.8365;Inherit;False;Property;_StencilReference;Stencil Reference;80;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.SummedBlendNode;1307;-1920.015,2047.487;Inherit;False;5;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1304;-2131.29,1710.306;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1378;-1452.809,2113.113;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1376;-1905.538,2213.708;Inherit;False;1322;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1377;-1736.928,2156.409;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1379;-1612.111,2222.135;Inherit;False;1312;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1382;-1310.856,2050.531;Inherit;False;Property;_HighLightShadow;HighLightShadow;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1234;-2415.208,1649.333;Inherit;False;Property;_hi00Strength;hi00 Strength;15;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1285;-2413.19,1730.727;Inherit;False;Property;_hi01Strength;hi01 Strength;28;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1286;-2408.799,1810.849;Inherit;False;Property;_hi02Strength;hi02 Strength;41;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1370;-1268.804,2161.231;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1342;-2193.569,1892.434;Inherit;False;Property;_hi00Toggle;hi00 Toggle;10;0;Create;True;0;0;0;False;1;Header(HighLight00);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1683;-2703.56,1914.565;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1679;-2478.444,1919.982;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1678;-2354.943,1921.283;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1681;-2994.558,2098.666;Inherit;False;Property;_hi00Step;hi00Step;13;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1682;-2710.862,2100.764;Inherit;False;Property;_hi00StepFeather;hi00StepFeather;14;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;913;-3183.917,1903.801;Inherit;False;888;_hi00;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;1222;-3176.589,1989.403;Inherit;False;1089;hi00UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;65;-3011.306,1906.48;Inherit;True;Property;_HighLight0;HighLight0;1;1;[Header];Create;True;1;Shadow;0;0;False;0;False;-1;None;ceb81bf925c34a24ebbcaf9bd3b69644;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1343;-2184.44,2175.834;Inherit;False;Property;_hi01Toggle;hi01 Toggle;23;0;Create;True;0;0;0;False;1;Header(HighLight01);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1686;-2697.424,2201.141;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1687;-2472.308,2206.558;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1688;-2348.807,2207.859;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1689;-2988.423,2375.74;Inherit;False;Property;_hi01Step;hi01Step;26;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1690;-2700.56,2379.422;Inherit;False;Property;_hi01StepFeather;hi01StepFeather;27;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1344;-2184.768,2467.427;Inherit;False;Property;_hi02Toggle;hi02 Toggle;36;0;Create;True;0;0;0;False;1;Header(HighLight02);False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1691;-2695.077,2487.287;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1692;-2469.961,2492.704;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1693;-2346.46,2494.005;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1253;-3173.178,2475.027;Inherit;False;910;_hi02;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;1254;-3173.26,2552.458;Inherit;False;1216;hi02UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1252;-2996.629,2474.474;Inherit;True;Property;_HighLight3;HighLight02;6;0;Create;True;0;0;0;False;0;False;-1;0e45854869fbfb241a580844ed684344;201ad45eeb9b1814983e4236fee69232;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;66;-3009.851,2180.877;Inherit;True;Property;_HighLight01;HighLight01;2;0;Create;True;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1223;-3185.56,2264.684;Inherit;False;1165;hi01UV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;914;-3183.541,2179.769;Inherit;False;889;_hi01;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1694;-2986.076,2661.886;Inherit;False;Property;_hi02Step;hi02Step;39;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1695;-2698.213,2665.568;Inherit;False;Property;_hi02StepFeather;hi02StepFeather;40;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;906;-3836.988,-465.0171;Inherit;True;Property;_MainTex;Diffuse Map (_eye);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;None;784ceb657845ba045b7c7cede00feb22;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;907;-3823.457,-260.401;Inherit;True;Property;_hi00;HighLight0 (_hi00);11;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;54d97392ddf2dd64a8ce854afd9582e4;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;908;-3818.988,-59.22395;Inherit;True;Property;_hi01;HighLight01 (_hi01);24;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;a8a103ca80612c44882fd0265ec16a8b;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;909;-3818.982,143.7574;Inherit;True;Property;_hi02;HighLight02 (_hi02);37;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;None;cbc89d6e9af9d474094d8c98c93b4519;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;68;-3827.885,353.1527;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];48;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;609;-493.3135,1750.618;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-212.5704,1771.048;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-535.5019,2026.743;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;50;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1698;538.3658,1661.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1701;538.3658,1970.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1702;538.3658,1799.995;Float;False;False;-1;2;ASEMaterialInspector;100;1;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ColorNode;1424;-2721.632,1299.117;Inherit;False;Property;_AdditionalDiffuseColor;AdditionalDiffuseColor;1;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1389;-1079.005,2143.763;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1390;-1618.809,1190.694;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1711;-1664.585,1310.469;Inherit;False;1708;EyeLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1712;-1450.389,1114.755;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1713;-907.1838,2068.575;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;-1141.166,2253.451;Inherit;False;1709;HighlightLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;611;-517.2138,1839.521;Inherit;False;Property;_EmissiveColor;EmissiveColor;49;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-523.7452,2153.081;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;53;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1717;119.2916,657.576;Inherit;False;225;166;;1;1718;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1718;169.2916,707.576;Inherit;False;Property;_CullMode;Cull Mode;87;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1700;454.0132,2350.484;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;21.08198,1677.067;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;159.1932,1675.52;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;602;-564.319,1389.368;Inherit;False;Property;_CharaColor;CharaColor;51;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;605;-539.4921,1578.86;Inherit;False;916;blend_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1721;-545.2052,1663.846;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-315.0464,1559.61;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1722;-314.2054,1451.846;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1724;-334.2054,1683.846;Inherit;False;1719;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1723;-143.0053,1496.446;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1725;-4003.823,2919.328;Inherit;False;1440.917;557.0159;;18;1743;1742;1741;1740;1739;1738;1737;1736;1734;1733;1732;1731;1730;1729;1728;1727;1726;1735;Tracking Basis;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1726;-3354.298,3044.57;Inherit;False;1742;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1727;-3062.39,3218.722;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1728;-3314.44,3133.351;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1729;-2929.006,3218.745;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1731;-3182.913,2994.542;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1732;-3031.006,2996.745;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformPositionNode;1733;-3276.605,3289.816;Inherit;False;Object;World;False;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1734;-2787.706,3214.368;Inherit;False;Center2Cam;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1736;-3457.423,3290.743;Inherit;False;Property;_FaceCenterPos;FaceCenterPos;77;1;[Header];Create;True;1;Tracking Basis(In ObjectSpace);0;0;False;0;False;0,0.15,0;0,0.125,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1737;-2890.913,2993.542;Inherit;False;Left;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1738;-3953.823,3040.038;Inherit;False;Property;_FaceForward;FaceForward;78;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;1739;-3945.411,3196.969;Inherit;False;Property;_FaceUp;FaceUp;79;0;Create;True;0;0;0;False;0;False;0,1,0;0,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1740;-3784.368,3196.647;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1741;-3782.74,3038.955;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1742;-3573.811,3195.967;Inherit;False;Up;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1743;-3570.811,3037.967;Inherit;False;Forward;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1744;-4044.458,3638.102;Inherit;False;1512.629;875.1907;;34;1778;1777;1776;1775;1774;1773;1772;1771;1770;1769;1768;1767;1766;1765;1764;1763;1762;1761;1760;1759;1758;1757;1756;1755;1754;1753;1752;1751;1750;1749;1748;1747;1746;1745;Tracking PreCaculate;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1735;-3040.715,3345.54;Inherit;False;FCenterPos;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1810;-2483.03,2917.753;Inherit;False;1570.031;1309.381;;31;1841;1840;1839;1838;1837;1836;1835;1833;1832;1829;1828;1824;1823;1822;1821;1820;1819;1818;1817;1816;1815;1814;1813;1812;1811;1834;1831;1830;1827;1826;1825;LeftEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1874;-2462.696,4344.314;Inherit;False;1570.03;1315.75;;31;1905;1904;1903;1902;1901;1900;1899;1898;1897;1896;1895;1894;1893;1892;1891;1890;1889;1888;1887;1886;1885;1884;1883;1882;1881;1880;1879;1878;1877;1876;1875;RightEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.TFHCRemapNode;1875;-1846.361,4484.906;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1876;-1666.856,4486.343;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1877;-1849.928,4770.801;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1878;-1670.423,4772.237;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1879;-2053.268,4470.179;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1880;-1998.003,4546.058;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1881;-2052.035,4780.073;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1882;-1504.221,4774.014;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1883;-1506.058,4481.16;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1884;-1273.498,4427.395;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1885;-1993.505,4851.528;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1886;-1845.676,5175.855;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1887;-1667.054,5176.348;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1888;-1849.276,5451.919;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1889;-1670.654,5452.412;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1890;-1504.838,5442.928;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1891;-2045.929,5175.569;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1892;-1994.277,5256.281;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1893;-2045.97,5445.553;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1894;-1994.318,5526.265;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1895;-1328.487,4771.596;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1896;-1333.308,5444.088;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1897;-1206.421,5335.897;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1898;-1053.466,4838.533;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1899;-1498.038,5171.065;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1900;-2412.696,4957.022;Inherit;False;Property;_WorkingAngleRxxyy;+/-WorkingAngleR.xxyy;70;0;Create;True;0;0;0;False;0;False;45,30,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1901;-1787.632,4962.694;Inherit;False;Property;_MoveRangeRxxyy;+/-MoveRangeR.xxyy;69;0;Create;True;0;0;0;False;0;False;0.004,0.003,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1902;-1489.278,4394.314;Inherit;False;1763;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1903;-2025.948,4663.75;Inherit;False;1768;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1904;-2030.41,5360.096;Inherit;False;1777;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1905;-1427.082,5350.817;Inherit;False;1778;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1811;-1866.695,3051.976;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1812;-1687.19,3053.413;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1813;-1870.263,3337.87;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1814;-1690.757,3339.307;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1815;-2073.602,3037.249;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1816;-2018.337,3113.127;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1817;-2072.369,3347.142;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1818;-1524.554,3341.084;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1819;-1526.391,3048.23;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1820;-2433.03,3524.091;Inherit;False;Property;_WorkingAngleLxxyy;+/-WorkingAngleL.xxyy;66;0;Create;True;0;0;0;False;0;False;30,45,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Compare;1821;-1293.832,2994.464;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1822;-2013.839,3418.599;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1823;-1866.01,3742.924;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1824;-1687.388,3743.418;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1828;-2066.263,3742.639;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1829;-2014.611,3823.351;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1832;-1807.966,3529.765;Inherit;False;Property;_MoveRangeLxxyy;+/-MoveRangeL.xxyy;65;0;Create;True;0;0;0;False;0;False;0.003,0.004,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NegateNode;1833;-1348.821,3338.665;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1835;-1226.755,3902.966;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1836;-1073.799,3405.603;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1837;-1518.372,3738.134;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1838;-1512.317,2967.753;Inherit;False;1763;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1839;-2044.234,3238.162;Inherit;False;1768;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1840;-2051.458,3924.475;Inherit;False;1777;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1841;-1453.707,3918.546;Inherit;False;1778;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1825;-1886.501,4023.697;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1826;-1707.879,4024.19;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1827;-1542.063,4014.706;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1830;-2083.194,4017.332;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1831;-2031.543,4098.041;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1834;-1370.532,4015.866;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1745;-3763.481,3858.821;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1746;-3616.337,3849.896;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LengthOpNode;1747;-3607.04,3933.024;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1748;-3634.808,4011.846;Inherit;False;1742;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1749;-3445.303,3901.943;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1750;-3318.334,3972.049;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1751;-3184.394,4025.515;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1752;-3926.059,4041.941;Inherit;False;1735;FCenterPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1753;-3039.962,3963.679;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1754;-2902.285,3976.336;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1755;-2759.446,3975.204;Inherit;False;Cylinder;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1756;-3994.458,3688.102;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1757;-3983.633,4217.979;Inherit;False;1734;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1758;-3809.903,4218.188;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1759;-3972.035,4139.201;Inherit;False;1737;Left;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1760;-3809.836,4137.701;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DotProductOpNode;1761;-3613.904,4166.189;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1762;-3491.79,4168.186;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1763;-3375.279,4164.128;Inherit;False;Xsign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1764;-3001.281,4164.84;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ACosOpNode;1765;-2877.819,4166.76;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1766;-3184.868,4135.429;Inherit;False;1743;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1767;-3186.283,4224.438;Inherit;False;1755;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1768;-2756.63,4160.171;Inherit;False;Xvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1769;-3707.183,4339.539;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1770;-3585.07,4341.536;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1771;-3884.314,4310.551;Inherit;False;1742;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1772;-3895.915,4389.33;Inherit;False;1734;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1773;-3072.246,4345.876;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1774;-3261.713,4311.268;Inherit;False;1734;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1775;-3257.93,4397.889;Inherit;False;1755;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ACosOpNode;1776;-2953.629,4346.058;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1777;-2833.247,4339.826;Inherit;False;Yvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1778;-3461.442,4336.695;Inherit;False;Ysign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1906;-844.5308,2988.37;Inherit;False;1249.787;829.2251;;16;1922;1921;1920;1919;1918;1917;1916;1915;1914;1913;1912;1911;1910;1909;1908;1907;Vertex Fuction Output;1,1,1,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1907;-462.9501,3282.734;Inherit;False;Property;_FakeEyeTrackingL;FakeEyeTrackingL;64;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1908;-578.7957,3372.975;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1909;-794.5308,3275.316;Inherit;False;Property;_VertexOffsetL;Vertex OffsetL;63;1;[Header];Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1910;-435.9395,3382.565;Inherit;False;1802;CustomMatrixL;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1911;-233.8359,3340.474;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1912;-93.05063,3207.027;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1913;-457.6861,3689.758;Inherit;False;1801;CustomMatrixR;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1914;-474.9291,3575.184;Inherit;False;Property;_FakeEyeTrackingR;FakeEyeTrackingR;68;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1915;-604.0518,3683.795;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1916;-786.5456,3574.667;Inherit;False;Property;_VertexOffsetR;Vertex OffsetR;67;0;Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1917;-233.6249,3646.499;Inherit;False;2;2;0;FLOAT3;0,1,1;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1918;-88.15909,3504.581;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1919;225.6561,3159.758;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1920;60.04242,3161.64;Inherit;False;Constant;_0_9;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1921;16.67091,3038.37;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1699;454.0132,2240.484;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Eye;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;False;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1730;-3355.314,2969.328;Inherit;False;1743;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1787;-3321.873,4680.507;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1788;-2955.082,4678.167;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1802;-2744.379,4672.324;Inherit;False;CustomMatrixL;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.Vector3Node;1809;-3965.876,4742.991;Inherit;False;Property;_XAxisVectorL;+X Axis Vector L;73;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NegateNode;1780;-3770.148,4818.665;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1781;-3646.018,4816.005;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1782;-3770.655,4895.259;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1923;-3772.464,4674.881;Inherit;False;Property;_IsBlenderCoordinateSystem;IsBlenderCoordinateSystem;72;1;[Toggle];Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1924;-3467.79,4677.006;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1805;-3977.303,4930.197;Inherit;False;Property;_YAxisVectorL;+Y Axis Vector L;74;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NegateNode;1783;-3763.784,5005;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1785;-3639.597,5003.517;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1784;-3765.748,5079.284;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1786;-3317.488,4869.488;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1789;-3135.974,4862.697;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1790;-2985.781,4860.132;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1925;-3466.987,4863.66;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1804;-3969.566,5163.908;Inherit;False;Property;_XAxisVectorR;+X Axis Vector R;75;0;Create;True;2;Custom Transform Vector;(In Blender Coordinate System);0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NegateNode;1791;-3781.551,5231.749;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1792;-3657.421,5229.087;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1793;-3778.621,5309.417;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1797;-3327.803,5096.92;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1798;-2950.212,5098.682;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1801;-2732.723,5092.138;Inherit;False;CustomMatrixR;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.Compare;1926;-3476.134,5095.518;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1927;-3475.34,5299.771;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1794;-3722.24,5440.656;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1795;-3599.353,5444.376;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1803;-3720.905,5514.743;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1807;-3964.751,5374.167;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1808;-4141.22,5372.3;Inherit;False;Property;_YAxisVectorR;-Y Axis Vector R;76;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.BreakToComponentsNode;1806;-3840.654,5447.83;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.NormalizeNode;1796;-3331.145,5305.044;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1799;-3152.233,5294.354;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1800;-3002.039,5295.688;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1922;-333.9278,3466.95;Inherit;False;Property;_UseCustomTransform;Use Custom Transform;71;2;[Header];[Toggle];Create;True;1;Custom Transform Direction;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CosTime;1616;-224.4743,-2212.303;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ASinOpNode;1617;-77.47436,-2140.303;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1620;178.5259,-2143.303;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1614;-187.4532,-2056.24;Inherit;False;Property;_hi00NoiseFrequency;hi00NoiseFrequency;21;0;Create;True;0;0;0;False;0;False;35;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1618;45.02578,-2143.203;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1621;298.9259,-2161.903;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1622;114.3258,-2050.103;Inherit;False;Property;_hi00NoiseFactor;hi00NoiseFactor;22;0;Create;True;0;0;0;False;0;False;0.3;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1599;58.68241,-1940.22;Inherit;False;hi00ctrl;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1598;-137.8146,-1940.257;Inherit;False;Property;_hi00AutoWaggle;hi00 AutoWaggle;18;1;[Toggle];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ASinOpNode;1593;24.15306,-2359.465;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1595;-0.9466753,-2270.365;Inherit;False;Property;_hi00Frequency;hi00Frequency;20;0;Create;True;0;0;0;False;0;False;30;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1594;189.7531,-2381.765;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1596;327.4799,-2373.745;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1619;437.8778,-2258.657;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1602;568.2515,-2260.555;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1603;330.9638,-2053.601;Inherit;False;Property;_hi00WaggleRange;hi00 WaggleRange;19;0;Create;True;0;0;0;False;0;False;1;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1144;-1093.536,-297.0154;Inherit;False;hi01L;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1010;-1946.997,-2101.135;Inherit;False;1009;hi00LCos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1005;-2499.887,-2269.542;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1004;-2499.887,-2352.742;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1008;-2381.95,-2359.826;Inherit;False;hi00LSin;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1009;-2384.05,-2273.426;Inherit;False;hi00LCos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;997;-2970.558,-2261.14;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;996;-2787.557,-2310.14;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1230;-2642.114,-2312.818;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;45;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;994;-3238.748,-2269.944;Inherit;False;Property;_hi00LRotation;hi00L Rotation;16;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1600;-2941.006,-2409.454;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1609;-3077.407,-2370.993;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1605;-3240.994,-2359.839;Inherit;False;1604;hi00Auto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1601;-3122.604,-2452.083;Inherit;False;1599;hi00ctrl;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1051;-1479.022,-2255.686;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1052;-1479.022,-2338.886;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1049;-1746.691,-2304.284;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1231;-1596.708,-2301.619;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;45;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1606;-1892.837,-2408.458;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1048;-1920.892,-2251.784;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1610;-2024.903,-2365.294;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1608;-2055.534,-2449.59;Inherit;False;1599;hi00ctrl;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;-2189.383,-2268.488;Inherit;False;Property;_hi00RRotation;hi00R Rotation;17;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1082;-980.7259,-2349.792;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1084;-1146.34,-2347.911;Inherit;False;Constant;_0_6;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1083;-1189.711,-2471.181;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1088;-1172.052,-2171.232;Inherit;False;1086;hi00R;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1087;-1173.052,-2254.23;Inherit;False;1085;hi00L;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.VertexToFragmentNode;1948;-826.2265,-2393.242;Inherit;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CosOpNode;1148;-2475.305,-645.057;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1149;-2475.305,-728.2571;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1157;-2357.368,-733.3412;Inherit;False;hi01LSin;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1158;-2359.467,-648.941;Inherit;False;hi01LCos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1146;-2762.174,-695.293;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1145;-2953.702,-647.4908;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1147;-2613.665,-694.9399;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;45;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1155;-3226.014,-672.7186;Inherit;False;Property;_hi01LRotation;hi01L Rotation;29;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1642;-2918.82,-805.9813;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1643;-3055.221,-767.5204;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1644;-3218.806,-756.3663;Inherit;False;1638;hi01Auto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1645;-3100.417,-848.6124;Inherit;False;1640;hi01ctrl;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1150;-1876.646,-630.3871;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CosOpNode;1153;-1426.973,-627.7892;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1154;-1426.973,-710.9892;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1159;-1310.346,-718.0751;Inherit;False;hi01RSin;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1160;-1309.135,-633.673;Inherit;False;hi01RCos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1151;-1697.098,-678.6852;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1152;-1557.298,-677.3862;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;45;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;-2160.435,-653.1911;Inherit;False;Property;_hi01RRotation;hi01R Rotation;30;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1646;-1852.64,-784.9417;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1647;-1989.042,-746.4808;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1648;-2152.626,-735.3267;Inherit;False;1638;hi01Auto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1649;-2034.237,-827.5728;Inherit;False;1640;hi01ctrl;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1161;-916.769,-725.1793;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1162;-1082.383,-723.2974;Inherit;False;Constant;_0_8;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1163;-1118.478,-559.579;Inherit;False;1143;hi01R;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1164;-1119.478,-642.579;Inherit;False;1144;hi01L;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1166;-1125.753,-846.5671;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.VertexToFragmentNode;1949;-770.1224,-755.9917;Inherit;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1165;-612.8107,-669.9599;Inherit;False;hi01UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1170;-127.5676,46.99646;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1171;24.93096,-55.3036;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1172;196.8285,-27.04223;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1173;169.2273,-124.9439;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1174;155.594,128.6742;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1175;366.3135,-185.6665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1176;186.0008,-215.1135;Inherit;False;1210;hi02Cos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1177;333.2344,-46.37939;Inherit;False;True;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;1178;340.1945,46.77661;Inherit;False;False;True;False;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1179;371.3945,153.3742;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1180;532.1343,-129.6787;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1181;539.1945,107.8743;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1182;176.1948,213.275;Inherit;False;1210;hi02Cos;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1183;697.9717,-16.76244;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1184;-276.4148,-57.84864;Inherit;False;Constant;_05_9;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1185;-115.1467,-124.5877;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1186;692.5609,90.27441;Inherit;False;Constant;_05_10;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1187;861.1455,-61.80151;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1192;695.8579,-168.1795;Inherit;False;Constant;_Offset4;Offset;31;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1215;32.40092,41.88733;Inherit;False;1209;hi02Sin;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1207;-313.386,-178.1975;Inherit;False;2;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1214;-287.8822,20.54944;Inherit;False;Property;_hi02Offset;hi02 Offset;38;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.VertexToFragmentNode;1950;997.3171,-11.45166;Inherit;False;False;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1216;1075.981,-122.5508;Inherit;False;hi02UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1314;-2512.99,808.3229;Inherit;False;Property;_ShadowStep;ShadowStep;5;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1315;-2344.325,1016.654;Inherit;False;Property;_ShadowFeather;ShadowFeather;6;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1317;-2785.379,889.7416;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1316;-2184.991,817.1553;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1309;-1893.074,819.3734;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1310;-2027.774,819.6725;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1312;-1736.728,812.2093;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1322;-1769.406,918.5505;Inherit;False;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1321;-1990.481,918.4626;Inherit;False;Property;_Shadow;Shadow;4;1;[HDR];Create;True;0;0;0;False;0;False;0.7,0.7,0.7,0;0.5188679,0.5188679,0.5188679,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1957;-2552.061,962.2468;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1958;-2418.562,898.4468;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;7;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1959;-2807.633,978.3679;Inherit;False;1955;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1604;699.2437,-2262.367;Inherit;False;hi00Auto;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1089;-647.3066,-2310.071;Inherit;False;hi00UV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1053;-1361.186,-2261.57;Inherit;False;hi00RCos;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1054;-1362.397,-2345.972;Inherit;False;hi00RSin;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1086;-1084.288,-1435.446;Inherit;False;hi00R;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1066;-2095.172,-1320.366;Inherit;False;1054;hi00RSin;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1607;-2187.925,-2360.944;Inherit;False;1604;hi00Auto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-4417.26,1754.064;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;58;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1705;-4149.32,1565.743;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-4451.385,1664.906;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;57;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;304;-4675.348,1530.999;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;875;-4453.867,1557.484;Inherit;False;Property;_UnifyIndirectDiffuseLight;Unify IndirectDiffuseLight;56;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;876;-4619.387,1613.485;Inherit;False;return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb)@;3;Create;0;MaxShadeSH9;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1706;-3966.708,1365.349;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1940;-4393.598,1173.338;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1942;-4674.568,1347.116;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-4379.409,1316.5;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;55;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1941;-4673.04,1158.339;Inherit;False;Property;_Keyword2;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1944;-3644.654,1367.456;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1945;-3845.748,1431.222;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1946;-3904.494,1510.273;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;59;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-3495.141,1365.047;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;1704;-4092.323,1181.188;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;1960;-4851.848,1209.587;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;2,2,2;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-5169.267,1277.485;Inherit;False;Property;_MinDirectLight;MinDirectLight;54;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;773;-5027.083,1155.293;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldPosInputsNode;1936;-5283.784,1409.343;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;1937;-5108.101,1476.58;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1938;-4914.623,1424.622;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;8;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1939;-5112.071,1391.87;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1710;-3761.648,925.6499;Inherit;False;Property;_HighlightLightFactor;HighlightLightFactor;61;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1709;-3489.382,924.5857;Inherit;False;HighlightLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1708;-3476.912,832.4066;Inherit;False;EyeLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1707;-3749.176,833.4706;Inherit;False;Property;_EyeLightFactor;EyeLightFactor;60;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1720;-3751.967,744.3607;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;62;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1719;-3478.703,744.2968;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1951;-5337.444,996.2292;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1952;-5153.501,998.1462;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1953;-5016.804,1029.2;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1954;-5173.391,1077.431;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1962;-4969.545,954.1534;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1961;-4820.727,975.8102;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1955;-4652.956,977.9238;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1929;-5322.598,675.2253;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;780;-5311.33,820.4559;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-5088.403,727.2106;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-5100.163,835.2687;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-4929.407,749.3162;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-4897.558,666.2983;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;800;-4720.234,723.8494;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-4572.785,722.2114;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
WireConnection;600;0;68;0
WireConnection;888;0;907;0
WireConnection;889;0;908;0
WireConnection;910;0;909;0
WireConnection;345;0;906;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;1345;0;1425;0
WireConnection;1345;1;1325;0
WireConnection;1325;0;1425;0
WireConnection;1325;1;1324;0
WireConnection;1325;2;1318;0
WireConnection;1324;0;1425;0
WireConnection;1324;1;1323;0
WireConnection;1380;0;1712;0
WireConnection;1380;1;1713;0
WireConnection;1425;0;932;0
WireConnection;1425;1;1424;0
WireConnection;916;0;1380;0
WireConnection;932;0;933;0
WireConnection;1003;0;1239;1
WireConnection;1003;1;1239;2
WireConnection;1002;0;1026;0
WireConnection;1002;1;1003;0
WireConnection;1006;0;1002;0
WireConnection;1006;1;1011;0
WireConnection;1007;0;1002;0
WireConnection;1016;0;1002;0
WireConnection;1012;0;1010;0
WireConnection;1012;1;1007;0
WireConnection;1015;0;1006;0
WireConnection;1020;0;1006;0
WireConnection;1017;0;1016;0
WireConnection;1017;1;1018;0
WireConnection;1013;0;1012;0
WireConnection;1013;1;1015;0
WireConnection;1019;0;1020;0
WireConnection;1019;1;1017;0
WireConnection;1021;0;1019;0
WireConnection;1021;1;1013;0
WireConnection;1026;0;1000;0
WireConnection;1026;1;1025;0
WireConnection;1027;0;1029;0
WireConnection;1027;1;1021;0
WireConnection;1027;2;1022;0
WireConnection;1056;0;1239;3
WireConnection;1056;1;1239;4
WireConnection;1057;0;1072;0
WireConnection;1057;1;1056;0
WireConnection;1058;0;1057;0
WireConnection;1058;1;1066;0
WireConnection;1059;0;1057;0
WireConnection;1060;0;1057;0
WireConnection;1061;0;1062;0
WireConnection;1061;1;1059;0
WireConnection;1063;0;1058;0
WireConnection;1064;0;1058;0
WireConnection;1065;0;1060;0
WireConnection;1065;1;1069;0
WireConnection;1067;0;1061;0
WireConnection;1067;1;1063;0
WireConnection;1068;0;1064;0
WireConnection;1068;1;1065;0
WireConnection;1070;0;1068;0
WireConnection;1070;1;1067;0
WireConnection;1072;0;1079;0
WireConnection;1072;1;1071;0
WireConnection;1074;0;1080;0
WireConnection;1074;1;1070;0
WireConnection;1074;2;1073;0
WireConnection;1085;0;1027;0
WireConnection;1115;0;1240;3
WireConnection;1115;1;1240;4
WireConnection;1116;0;1131;0
WireConnection;1116;1;1115;0
WireConnection;1117;0;1116;0
WireConnection;1117;1;1125;0
WireConnection;1118;0;1116;0
WireConnection;1119;0;1116;0
WireConnection;1120;0;1121;0
WireConnection;1120;1;1118;0
WireConnection;1122;0;1117;0
WireConnection;1123;0;1117;0
WireConnection;1124;0;1119;0
WireConnection;1124;1;1128;0
WireConnection;1126;0;1120;0
WireConnection;1126;1;1122;0
WireConnection;1127;0;1123;0
WireConnection;1127;1;1124;0
WireConnection;1129;0;1127;0
WireConnection;1129;1;1126;0
WireConnection;1131;0;1168;0
WireConnection;1131;1;1130;0
WireConnection;1132;0;1136;0
WireConnection;1132;1;1129;0
WireConnection;1132;2;1140;0
WireConnection;1091;0;1240;1
WireConnection;1091;1;1240;2
WireConnection;1092;0;1107;0
WireConnection;1092;1;1091;0
WireConnection;1093;0;1092;0
WireConnection;1093;1;1101;0
WireConnection;1094;0;1092;0
WireConnection;1095;0;1092;0
WireConnection;1096;0;1097;0
WireConnection;1096;1;1094;0
WireConnection;1098;0;1093;0
WireConnection;1099;0;1093;0
WireConnection;1100;0;1095;0
WireConnection;1100;1;1104;0
WireConnection;1102;0;1096;0
WireConnection;1102;1;1098;0
WireConnection;1103;0;1099;0
WireConnection;1103;1;1100;0
WireConnection;1105;0;1103;0
WireConnection;1105;1;1102;0
WireConnection;1107;0;1167;0
WireConnection;1107;1;1106;0
WireConnection;1109;0;1114;0
WireConnection;1109;1;1105;0
WireConnection;1109;2;1108;0
WireConnection;1143;0;1132;0
WireConnection;1196;0;1195;0
WireConnection;1197;0;1195;0
WireConnection;1209;0;1197;0
WireConnection;1210;0;1196;0
WireConnection;1194;0;1669;0
WireConnection;1194;1;1193;0
WireConnection;1195;0;1194;0
WireConnection;1669;0;1672;0
WireConnection;1669;2;1670;0
WireConnection;1669;3;1208;0
WireConnection;1670;0;1671;0
WireConnection;1670;1;1208;0
WireConnection;1624;0;1631;0
WireConnection;1624;1;1629;0
WireConnection;1626;0;1625;4
WireConnection;1627;0;1633;0
WireConnection;1631;0;1630;4
WireConnection;1632;0;1639;0
WireConnection;1632;1;1634;0
WireConnection;1633;0;1626;0
WireConnection;1633;1;1628;0
WireConnection;1634;0;1627;0
WireConnection;1634;1;1635;0
WireConnection;1637;0;1632;0
WireConnection;1637;1;1636;0
WireConnection;1639;0;1624;0
WireConnection;1638;0;1637;0
WireConnection;1640;0;1641;0
WireConnection;1651;0;1656;0
WireConnection;1651;1;1662;0
WireConnection;1653;0;1652;4
WireConnection;1654;0;1658;0
WireConnection;1656;0;1655;4
WireConnection;1657;0;1661;0
WireConnection;1657;1;1659;0
WireConnection;1658;0;1653;0
WireConnection;1658;1;1663;0
WireConnection;1659;0;1654;0
WireConnection;1659;1;1664;0
WireConnection;1660;0;1657;0
WireConnection;1660;1;1665;0
WireConnection;1661;0;1651;0
WireConnection;1667;0;1660;0
WireConnection;1668;0;1666;0
WireConnection;1307;0;1304;0
WireConnection;1307;1;1342;0
WireConnection;1307;2;1343;0
WireConnection;1307;3;1344;0
WireConnection;1304;0;1234;0
WireConnection;1304;1;1285;0
WireConnection;1304;2;1286;0
WireConnection;1378;0;1307;0
WireConnection;1378;1;1377;0
WireConnection;1378;2;1379;0
WireConnection;1377;0;1307;0
WireConnection;1377;1;1376;0
WireConnection;1382;0;1307;0
WireConnection;1382;1;1378;0
WireConnection;1342;1;1678;0
WireConnection;1683;0;65;0
WireConnection;1683;1;1681;0
WireConnection;1679;0;1683;0
WireConnection;1679;1;1682;0
WireConnection;1678;0;1679;0
WireConnection;65;0;913;0
WireConnection;65;1;1222;0
WireConnection;1343;1;1688;0
WireConnection;1686;0;66;0
WireConnection;1686;1;1689;0
WireConnection;1687;0;1686;0
WireConnection;1687;1;1690;0
WireConnection;1688;0;1687;0
WireConnection;1344;1;1693;0
WireConnection;1691;0;1252;0
WireConnection;1691;1;1694;0
WireConnection;1692;0;1691;0
WireConnection;1692;1;1695;0
WireConnection;1693;0;1692;0
WireConnection;1252;0;1253;0
WireConnection;1252;1;1254;0
WireConnection;66;0;914;0
WireConnection;66;1;1223;0
WireConnection;610;0;609;0
WireConnection;610;1;611;0
WireConnection;610;2;1697;0
WireConnection;1389;0;1382;0
WireConnection;1389;1;1370;0
WireConnection;1390;0;1345;0
WireConnection;1390;1;1359;0
WireConnection;1712;0;1345;0
WireConnection;1712;1;1390;0
WireConnection;1712;2;1711;0
WireConnection;1713;0;1382;0
WireConnection;1713;1;1389;0
WireConnection;1713;2;1714;0
WireConnection;606;0;1723;0
WireConnection;606;1;610;0
WireConnection;612;0;606;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;1721;0
WireConnection;1722;0;602;0
WireConnection;1722;1;605;0
WireConnection;1723;0;1722;0
WireConnection;1723;1;604;0
WireConnection;1723;2;1724;0
WireConnection;1727;0;1728;0
WireConnection;1727;1;1733;0
WireConnection;1729;0;1727;0
WireConnection;1731;0;1730;0
WireConnection;1731;1;1726;0
WireConnection;1732;0;1731;0
WireConnection;1733;0;1736;0
WireConnection;1734;0;1729;0
WireConnection;1737;0;1732;0
WireConnection;1740;0;1739;0
WireConnection;1741;0;1738;0
WireConnection;1742;0;1740;0
WireConnection;1743;0;1741;0
WireConnection;1735;0;1733;0
WireConnection;1875;0;1903;0
WireConnection;1875;2;1879;0
WireConnection;1875;4;1880;0
WireConnection;1876;0;1875;0
WireConnection;1877;0;1903;0
WireConnection;1877;2;1881;0
WireConnection;1877;4;1885;0
WireConnection;1878;0;1877;0
WireConnection;1880;1;1900;1
WireConnection;1882;0;1878;0
WireConnection;1882;4;1901;2
WireConnection;1883;0;1876;0
WireConnection;1883;4;1901;1
WireConnection;1884;0;1902;0
WireConnection;1884;2;1883;0
WireConnection;1884;3;1895;0
WireConnection;1885;1;1900;2
WireConnection;1886;0;1904;0
WireConnection;1886;2;1891;0
WireConnection;1886;4;1892;0
WireConnection;1887;0;1886;0
WireConnection;1888;0;1904;0
WireConnection;1888;2;1893;0
WireConnection;1888;4;1894;0
WireConnection;1889;0;1888;0
WireConnection;1890;0;1889;0
WireConnection;1890;4;1901;4
WireConnection;1892;1;1900;3
WireConnection;1894;1;1900;4
WireConnection;1895;0;1882;0
WireConnection;1896;0;1890;0
WireConnection;1897;0;1905;0
WireConnection;1897;2;1899;0
WireConnection;1897;3;1896;0
WireConnection;1898;0;1884;0
WireConnection;1898;1;1897;0
WireConnection;1899;0;1887;0
WireConnection;1899;4;1901;3
WireConnection;1811;0;1839;0
WireConnection;1811;2;1815;0
WireConnection;1811;4;1816;0
WireConnection;1812;0;1811;0
WireConnection;1813;0;1839;0
WireConnection;1813;2;1817;0
WireConnection;1813;4;1822;0
WireConnection;1814;0;1813;0
WireConnection;1816;1;1820;1
WireConnection;1818;0;1814;0
WireConnection;1818;4;1832;2
WireConnection;1819;0;1812;0
WireConnection;1819;4;1832;1
WireConnection;1821;0;1838;0
WireConnection;1821;2;1819;0
WireConnection;1821;3;1833;0
WireConnection;1822;1;1820;2
WireConnection;1823;0;1840;0
WireConnection;1823;2;1828;0
WireConnection;1823;4;1829;0
WireConnection;1824;0;1823;0
WireConnection;1829;1;1820;3
WireConnection;1833;0;1818;0
WireConnection;1835;0;1841;0
WireConnection;1835;2;1837;0
WireConnection;1835;3;1834;0
WireConnection;1836;0;1821;0
WireConnection;1836;1;1835;0
WireConnection;1837;0;1824;0
WireConnection;1837;4;1832;3
WireConnection;1825;0;1840;0
WireConnection;1825;2;1830;0
WireConnection;1825;4;1831;0
WireConnection;1826;0;1825;0
WireConnection;1827;0;1826;0
WireConnection;1827;4;1832;4
WireConnection;1831;1;1820;4
WireConnection;1834;0;1827;0
WireConnection;1745;0;1756;0
WireConnection;1745;1;1752;0
WireConnection;1746;0;1745;0
WireConnection;1747;0;1745;0
WireConnection;1749;0;1746;0
WireConnection;1749;1;1748;0
WireConnection;1750;0;1749;0
WireConnection;1750;1;1747;0
WireConnection;1750;2;1748;0
WireConnection;1751;0;1750;0
WireConnection;1751;1;1752;0
WireConnection;1753;0;1756;0
WireConnection;1753;1;1751;0
WireConnection;1754;0;1753;0
WireConnection;1755;0;1754;0
WireConnection;1758;0;1757;0
WireConnection;1760;0;1759;0
WireConnection;1761;0;1760;0
WireConnection;1761;1;1758;0
WireConnection;1762;0;1761;0
WireConnection;1763;0;1762;0
WireConnection;1764;0;1766;0
WireConnection;1764;1;1767;0
WireConnection;1765;0;1764;0
WireConnection;1768;0;1765;0
WireConnection;1769;0;1771;0
WireConnection;1769;1;1772;0
WireConnection;1770;0;1769;0
WireConnection;1773;0;1774;0
WireConnection;1773;1;1775;0
WireConnection;1776;0;1773;0
WireConnection;1777;0;1776;0
WireConnection;1778;0;1770;0
WireConnection;1907;0;1909;0
WireConnection;1907;1;1908;0
WireConnection;1908;0;1909;0
WireConnection;1908;1;1836;0
WireConnection;1911;0;1907;0
WireConnection;1911;1;1910;0
WireConnection;1912;0;1922;0
WireConnection;1912;2;1911;0
WireConnection;1912;3;1907;0
WireConnection;1914;0;1916;0
WireConnection;1914;1;1915;0
WireConnection;1915;0;1916;0
WireConnection;1915;1;1898;0
WireConnection;1917;0;1914;0
WireConnection;1917;1;1913;0
WireConnection;1918;2;1917;0
WireConnection;1918;3;1914;0
WireConnection;1919;0;1921;2
WireConnection;1919;1;1920;0
WireConnection;1919;2;1912;0
WireConnection;1919;3;1918;0
WireConnection;1699;0;618;0
WireConnection;1699;2;1919;0
WireConnection;1787;0;1924;0
WireConnection;1788;0;1787;0
WireConnection;1788;1;1786;0
WireConnection;1788;2;1790;0
WireConnection;1802;0;1788;0
WireConnection;1780;0;1809;1
WireConnection;1781;0;1780;0
WireConnection;1781;1;1809;3
WireConnection;1781;2;1782;0
WireConnection;1782;0;1809;2
WireConnection;1924;0;1923;0
WireConnection;1924;2;1781;0
WireConnection;1924;3;1809;0
WireConnection;1783;0;1805;1
WireConnection;1785;0;1783;0
WireConnection;1785;1;1805;3
WireConnection;1785;2;1784;0
WireConnection;1784;0;1805;2
WireConnection;1786;0;1925;0
WireConnection;1789;0;1787;0
WireConnection;1789;1;1786;0
WireConnection;1790;0;1789;0
WireConnection;1925;0;1923;0
WireConnection;1925;2;1785;0
WireConnection;1925;3;1805;0
WireConnection;1791;0;1804;1
WireConnection;1792;0;1791;0
WireConnection;1792;1;1804;3
WireConnection;1792;2;1793;0
WireConnection;1793;0;1804;2
WireConnection;1797;0;1926;0
WireConnection;1798;0;1797;0
WireConnection;1798;1;1796;0
WireConnection;1798;2;1800;0
WireConnection;1801;0;1798;0
WireConnection;1926;0;1923;0
WireConnection;1926;2;1792;0
WireConnection;1926;3;1804;0
WireConnection;1927;0;1923;0
WireConnection;1927;2;1795;0
WireConnection;1927;3;1807;0
WireConnection;1794;0;1806;0
WireConnection;1795;0;1794;0
WireConnection;1795;1;1806;2
WireConnection;1795;2;1803;0
WireConnection;1803;0;1806;1
WireConnection;1807;0;1808;0
WireConnection;1806;0;1807;0
WireConnection;1796;0;1927;0
WireConnection;1799;0;1797;0
WireConnection;1799;1;1796;0
WireConnection;1800;0;1799;0
WireConnection;1617;0;1616;4
WireConnection;1620;0;1618;0
WireConnection;1618;0;1617;0
WireConnection;1618;1;1614;0
WireConnection;1621;0;1620;0
WireConnection;1621;1;1622;0
WireConnection;1599;0;1598;0
WireConnection;1593;0;1592;4
WireConnection;1594;0;1593;0
WireConnection;1594;1;1595;0
WireConnection;1596;0;1594;0
WireConnection;1619;0;1596;0
WireConnection;1619;1;1621;0
WireConnection;1602;0;1619;0
WireConnection;1602;1;1603;0
WireConnection;1144;0;1109;0
WireConnection;1005;0;1230;0
WireConnection;1004;0;1230;0
WireConnection;1008;0;1004;0
WireConnection;1009;0;1005;0
WireConnection;996;0;1600;0
WireConnection;996;1;997;0
WireConnection;1230;0;996;0
WireConnection;1600;0;1601;0
WireConnection;1600;2;1609;0
WireConnection;1600;3;994;0
WireConnection;1609;0;1605;0
WireConnection;1609;1;994;0
WireConnection;1051;0;1231;0
WireConnection;1052;0;1231;0
WireConnection;1049;0;1606;0
WireConnection;1049;1;1048;0
WireConnection;1231;0;1049;0
WireConnection;1606;0;1608;0
WireConnection;1606;2;1610;0
WireConnection;1606;3;1047;0
WireConnection;1610;0;1607;0
WireConnection;1610;1;1047;0
WireConnection;1082;0;1083;2
WireConnection;1082;1;1084;0
WireConnection;1082;2;1087;0
WireConnection;1082;3;1088;0
WireConnection;1948;0;1082;0
WireConnection;1148;0;1147;0
WireConnection;1149;0;1147;0
WireConnection;1157;0;1149;0
WireConnection;1158;0;1148;0
WireConnection;1146;0;1642;0
WireConnection;1146;1;1145;0
WireConnection;1147;0;1146;0
WireConnection;1642;0;1645;0
WireConnection;1642;2;1643;0
WireConnection;1642;3;1155;0
WireConnection;1643;0;1644;0
WireConnection;1643;1;1155;0
WireConnection;1153;0;1152;0
WireConnection;1154;0;1152;0
WireConnection;1159;0;1154;0
WireConnection;1160;0;1153;0
WireConnection;1151;0;1646;0
WireConnection;1151;1;1150;0
WireConnection;1152;0;1151;0
WireConnection;1646;0;1649;0
WireConnection;1646;2;1647;0
WireConnection;1646;3;1156;0
WireConnection;1647;0;1648;0
WireConnection;1647;1;1156;0
WireConnection;1161;0;1166;2
WireConnection;1161;1;1162;0
WireConnection;1161;2;1164;0
WireConnection;1161;3;1163;0
WireConnection;1949;0;1161;0
WireConnection;1165;0;1949;0
WireConnection;1170;0;1214;1
WireConnection;1170;1;1214;2
WireConnection;1171;0;1185;0
WireConnection;1171;1;1170;0
WireConnection;1172;0;1171;0
WireConnection;1172;1;1215;0
WireConnection;1173;0;1171;0
WireConnection;1174;0;1171;0
WireConnection;1175;0;1176;0
WireConnection;1175;1;1173;0
WireConnection;1177;0;1172;0
WireConnection;1178;0;1172;0
WireConnection;1179;0;1174;0
WireConnection;1179;1;1182;0
WireConnection;1180;0;1175;0
WireConnection;1180;1;1177;0
WireConnection;1181;0;1178;0
WireConnection;1181;1;1179;0
WireConnection;1183;0;1181;0
WireConnection;1183;1;1180;0
WireConnection;1185;0;1207;0
WireConnection;1185;1;1184;0
WireConnection;1187;0;1192;0
WireConnection;1187;1;1183;0
WireConnection;1187;2;1186;0
WireConnection;1950;0;1187;0
WireConnection;1216;0;1950;0
WireConnection;1316;0;1314;0
WireConnection;1316;1;1958;0
WireConnection;1309;0;1310;0
WireConnection;1310;0;1316;0
WireConnection;1310;1;1315;0
WireConnection;1312;0;1309;0
WireConnection;1322;0;1321;0
WireConnection;1957;0;1317;0
WireConnection;1957;1;1959;0
WireConnection;1958;0;1317;0
WireConnection;1958;1;1957;0
WireConnection;1604;0;1602;0
WireConnection;1089;0;1948;0
WireConnection;1053;0;1051;0
WireConnection;1054;0;1052;0
WireConnection;1086;0;1074;0
WireConnection;1705;0;875;0
WireConnection;1705;1;303;0
WireConnection;1705;2;301;0
WireConnection;875;0;304;0
WireConnection;875;1;876;0
WireConnection;1706;0;1704;0
WireConnection;1706;1;1705;0
WireConnection;1940;0;1942;0
WireConnection;1940;1;1941;0
WireConnection;1942;0;1960;0
WireConnection;1942;1;1938;0
WireConnection;1941;1;1960;0
WireConnection;1941;0;1942;0
WireConnection;1944;0;1706;0
WireConnection;1944;1;1945;0
WireConnection;1944;2;1946;0
WireConnection;1945;0;1706;0
WireConnection;208;0;1944;0
WireConnection;1704;0;1940;0
WireConnection;1704;2;826;0
WireConnection;1960;0;773;1
WireConnection;1960;1;825;0
WireConnection;1938;0;1939;0
WireConnection;1938;1;1937;0
WireConnection;1939;0;1936;0
WireConnection;1709;0;1710;0
WireConnection;1708;0;1707;0
WireConnection;1719;0;1720;0
WireConnection;1952;0;1951;0
WireConnection;1953;0;1952;0
WireConnection;1953;1;1954;0
WireConnection;1953;2;1954;0
WireConnection;1961;0;1962;0
WireConnection;1961;2;1953;0
WireConnection;1955;0;1961;0
WireConnection;779;0;1929;0
WireConnection;779;1;780;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;800;0;797;0
WireConnection;800;2;776;0
WireConnection;781;0;800;0
ASEEND*/
//CHKSM=0AD631B6A3D24810BCF597AA3F11F207159E5850