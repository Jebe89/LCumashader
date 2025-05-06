// Upgrade NOTE: upgraded instancing buffer 'LCumashaderTear' to new syntax.

// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Tear"
{
	Properties
	{
		_Opacity("Opacity", Range( 0 , 2)) = 1
		[Header(Diffuse)][NoScaleOffset]_MainTex("Diffuse Map (_tear)", 2D) = "gray" {}
		_TearTilingOffset("Tear Tiling & Offset", Vector) = (1,1,0,0)
		[HDR]_AdditionalDiffuseColor("AdditionalDiffuseColor", Color) = (1,1,1,1)
		[Toggle]_TearShadow("TearShadow", Float) = 0
		[HDR]_Shadow("Shadow", Color) = (0.9019608,0.9019608,0.9019608,0)
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 0
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 0
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 0
		[HDR]_CharaColor("CharaColor", Color) = (1,1,1,1)
		_Saturation("Saturation", Range( 0 , 1)) = 1
		[HDR]_UnsaturationColor("UnsaturationColor", Color) = (0.2117647,0.7137255,0.07058824,0)
		[Header(Light)]_MinDirectLight("MinDirectLight", Range( 0 , 1)) = 0
		_MaxDirectLight("MaxDirectLight", Range( 0 , 2)) = 1
		_IndirectLightBiasSample1("Indirect Light Bias Sample1", Vector) = (0,0,0,1)
		_IndirectLightBiasSample2("Indirect Light Bias Sample2", Vector) = (0,1,0,1)
		_IndirectBiasSampleRate("Indirect Bias Sample Rate", Range( 0 , 1)) = 1
		_MinIndirectLight("MinIndirectLight", Range( 0 , 1)) = 0.1
		_MaxIndirectLight("MaxIndirectLight", Range( 0 , 2)) = 1
		_LightFactor("LightFactor", Range( 0 , 1)) = 0.5
		[Header(UV Animation)][Toggle]_UVAnimation("UV Animation", Float) = 0
		_ScrollXRate("ScrollXRate", Float) = 8
		_ScrollYRate("ScrollYRate", Float) = 16
		_Time0("Auto Time", Float) = 1
		[Toggle]_ManualTimeToggle("Manual Time Toggle", Float) = 0
		_ManualTime0("Manual Time", Float) = 0
		[Header(Stencil Buffer)]_StencilReference("Stencil Reference", Range( 0 , 255)) = 0
		_StencilReadMask("Stencil ReadMask", Range( 0 , 255)) = 255
		_StencilWriteMask("Stencil WriteMask", Range( 0 , 255)) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)]_StencilComparison("Stencil Comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilPassFront("Stencil PassFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilFailFront("Stencil FailFront", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)]_StencilZFailFront("Stencil ZFailFront", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Float) = 0

	}
	
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
	LOD 100

		Cull Off
		CGINCLUDE
		#pragma target 3.0 
		ENDCG

       	GrabPass{ }

		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			BlendOp Add
			AlphaToMask Off
			Cull [_CullMode]
			ColorMask RGBA
			ZWrite Off
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
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

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
			#pragma multi_compile_instancing

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _TearShadow;
			uniform sampler2D _MainTex;
			uniform float _UVAnimation;
			uniform float _ScrollXRate;
			uniform float _ManualTimeToggle;
			uniform float _Time0;
			uniform float _ManualTime0;
			uniform float _ScrollYRate;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightFactor;
			uniform float _Saturation;
			uniform float _Opacity;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			UNITY_INSTANCING_BUFFER_START(LCumashaderTear)
				UNITY_DEFINE_INSTANCED_PROP(float4, _TearTilingOffset)
#define _TearTilingOffset_arr LCumashaderTear
			UNITY_INSTANCING_BUFFER_END(LCumashaderTear)
			float IsThereALight797(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float3 DefaultLightDir(  )
			{
				return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
			}
			
			float IsThereALight1111(  )
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
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				float4 ase_texcoord5 : TEXCOORD5;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord5 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
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

				float4 _TearTilingOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_TearTilingOffset_arr, _TearTilingOffset);
				float2 Tiling1003 = (_TearTilingOffset_Instance).xy;
				float2 Offset1004 = (_TearTilingOffset_Instance).zw;
				float2 texCoord1069 = i.ase_texcoord1.xy * Tiling1003 + Offset1004;
				float mulTime1044 = _Time.y * _Time0;
				float2 break1038 = Offset1004;
				float2 appendResult1041 = (float2(( ( ( 1.0 / _ScrollXRate ) * floor( ( _ScrollXRate * (( _ManualTimeToggle )?( _ManualTime0 ):( mulTime1044 )) ) ) ) + break1038.x ) , ( break1038.y - ( floor( (( _ManualTimeToggle )?( _ManualTime0 ):( mulTime1044 )) ) * ( 1.0 / _ScrollYRate ) ) )));
				float2 texCoord1014 = i.ase_texcoord1.xy * Tiling1003 + appendResult1041;
				float4 tex2DNode64 = tex2D( _MainTex, (( _UVAnimation )?( texCoord1014 ):( texCoord1069 )) );
				float4 diff345 = tex2DNode64;
				float4 temp_output_960_0 = ( diff345 * _AdditionalDiffuseColor );
				float4 Shadow953 = _Shadow;
				float localIsThereALight797 = IsThereALight797();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1111 = IsThereALight1111();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1101 = ( localIsThereALight1111 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp948 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1101 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult942 = lerp( temp_output_960_0 , ( temp_output_960_0 * Shadow953 ) , shad_lerp948);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1113_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1092 = ase_worldPos;
				float localPureLightAttenuation1092 = PureLightAttenuation( worldPos1092 );
				float3 temp_output_1093_0 = ( temp_output_1113_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1092 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1095 = temp_output_1093_0;
				#else
				float3 staticSwitch1095 = temp_output_1113_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 appendResult1136 = (float4(ase_worldNormal , 1.0));
				float4 Normal1133 = appendResult1136;
				float3 localShadeSH9out1133 = ShadeSH9out( Normal1133 );
				float3 appendResult1143 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1144 = ASESafeNormalize( appendResult1143 );
				float4 appendResult1145 = (float4(normalizeResult1144 , _IndirectLightBiasSample1.w));
				float4 Normal1146 = appendResult1145;
				float3 localShadeSH9out1146 = ShadeSH9out( Normal1146 );
				float3 appendResult1139 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1140 = ASESafeNormalize( appendResult1139 );
				float4 appendResult1141 = (float4(normalizeResult1140 , _IndirectLightBiasSample2.w));
				float4 Normal1142 = appendResult1141;
				float3 localShadeSH9out1142 = ShadeSH9out( Normal1142 );
				float3 lerpResult1135 = lerp( localShadeSH9out1133 , max( localShadeSH9out1146 , localShadeSH9out1142 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 LightColor208 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1095 ):( temp_output_1093_0 )) , temp_cast_3 ) , min( max( lerpResult1135 , temp_cast_4 ) , temp_cast_5 ) );
				float LightFactor1082 = _LightFactor;
				float4 lerpResult1085 = lerp( (( _TearShadow )?( lerpResult942 ):( temp_output_960_0 )) , ( (( _TearShadow )?( lerpResult942 ):( temp_output_960_0 )) * float4( LightColor208 , 0.0 ) ) , LightFactor1082);
				float4 blend_diff961 = lerpResult1085;
				float4 Refined_diff612 = ( _CharaColor * blend_diff961 );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_7 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_7 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha987 = tex2DNode64.a;
				float temp_output_898_0 = ( Alpha987 * _Opacity );
				float4 screenPos = i.ase_texcoord5;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 screenColor930 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,ase_grabScreenPos.xy/ase_grabScreenPos.w);
				
				
				outColor = ( ( output_diff618 * temp_output_898_0 ) + ( ( 1.0 - temp_output_898_0 ) * screenColor930 ) ).rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		GrabPass{ }

		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
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
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

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
			#pragma multi_compile_instancing

			//This is a late directive
			
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float _TearShadow;
			uniform sampler2D _MainTex;
			uniform float _UVAnimation;
			uniform float _ScrollXRate;
			uniform float _ManualTimeToggle;
			uniform float _Time0;
			uniform float _ManualTime0;
			uniform float _ScrollYRate;
			uniform float4 _AdditionalDiffuseColor;
			uniform float4 _Shadow;
			uniform float _ShadowStep;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightFactor;
			uniform float _Saturation;
			uniform float _Opacity;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			UNITY_INSTANCING_BUFFER_START(LCumashaderTear)
				UNITY_DEFINE_INSTANCED_PROP(float4, _TearTilingOffset)
#define _TearTilingOffset_arr LCumashaderTear
			UNITY_INSTANCING_BUFFER_END(LCumashaderTear)
			float IsThereALight797(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float3 DefaultLightDir(  )
			{
				return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
			}
			
			float IsThereALight1111(  )
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
			
			float3 ShadeSH9out( half4 Normal )
			{
				return ShadeSH9(Normal);
			}
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			
			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				float4 ase_texcoord5 : TEXCOORD5;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord5 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
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

				float4 _TearTilingOffset_Instance = UNITY_ACCESS_INSTANCED_PROP(_TearTilingOffset_arr, _TearTilingOffset);
				float2 Tiling1003 = (_TearTilingOffset_Instance).xy;
				float2 Offset1004 = (_TearTilingOffset_Instance).zw;
				float2 texCoord1069 = i.ase_texcoord1.xy * Tiling1003 + Offset1004;
				float mulTime1044 = _Time.y * _Time0;
				float2 break1038 = Offset1004;
				float2 appendResult1041 = (float2(( ( ( 1.0 / _ScrollXRate ) * floor( ( _ScrollXRate * (( _ManualTimeToggle )?( _ManualTime0 ):( mulTime1044 )) ) ) ) + break1038.x ) , ( break1038.y - ( floor( (( _ManualTimeToggle )?( _ManualTime0 ):( mulTime1044 )) ) * ( 1.0 / _ScrollYRate ) ) )));
				float2 texCoord1014 = i.ase_texcoord1.xy * Tiling1003 + appendResult1041;
				float4 tex2DNode64 = tex2D( _MainTex, (( _UVAnimation )?( texCoord1014 ):( texCoord1069 )) );
				float4 diff345 = tex2DNode64;
				float4 temp_output_960_0 = ( diff345 * _AdditionalDiffuseColor );
				float4 Shadow953 = _Shadow;
				float localIsThereALight797 = IsThereALight797();
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1111 = IsThereALight1111();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1101 = ( localIsThereALight1111 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp948 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1101 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult942 = lerp( temp_output_960_0 , ( temp_output_960_0 * Shadow953 ) , shad_lerp948);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1113_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1092 = ase_worldPos;
				float localPureLightAttenuation1092 = PureLightAttenuation( worldPos1092 );
				float3 temp_output_1093_0 = ( temp_output_1113_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1092 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1095 = temp_output_1093_0;
				#else
				float3 staticSwitch1095 = temp_output_1113_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float4 appendResult1136 = (float4(ase_worldNormal , 1.0));
				float4 Normal1133 = appendResult1136;
				float3 localShadeSH9out1133 = ShadeSH9out( Normal1133 );
				float3 appendResult1143 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1144 = ASESafeNormalize( appendResult1143 );
				float4 appendResult1145 = (float4(normalizeResult1144 , _IndirectLightBiasSample1.w));
				float4 Normal1146 = appendResult1145;
				float3 localShadeSH9out1146 = ShadeSH9out( Normal1146 );
				float3 appendResult1139 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1140 = ASESafeNormalize( appendResult1139 );
				float4 appendResult1141 = (float4(normalizeResult1140 , _IndirectLightBiasSample2.w));
				float4 Normal1142 = appendResult1141;
				float3 localShadeSH9out1142 = ShadeSH9out( Normal1142 );
				float3 lerpResult1135 = lerp( localShadeSH9out1133 , max( localShadeSH9out1146 , localShadeSH9out1142 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 LightColor208 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1095 ):( temp_output_1093_0 )) , temp_cast_3 ) , min( max( lerpResult1135 , temp_cast_4 ) , temp_cast_5 ) );
				float LightFactor1082 = _LightFactor;
				float4 lerpResult1085 = lerp( (( _TearShadow )?( lerpResult942 ):( temp_output_960_0 )) , ( (( _TearShadow )?( lerpResult942 ):( temp_output_960_0 )) * float4( LightColor208 , 0.0 ) ) , LightFactor1082);
				float4 blend_diff961 = lerpResult1085;
				float4 Refined_diff612 = ( _CharaColor * blend_diff961 );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_7 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_7 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha987 = tex2DNode64.a;
				float temp_output_898_0 = ( Alpha987 * _Opacity );
				float4 screenPos = i.ase_texcoord5;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 screenColor930 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,ase_grabScreenPos.xy/ase_grabScreenPos.w);
				
				
				outColor = ( ( output_diff618 * temp_output_898_0 ) + ( ( 1.0 - temp_output_898_0 ) * screenColor930 ) ).rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

	
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;1150;-3562.125,1261.362;Inherit;False;2888.671;1020.411;;58;208;1081;1093;1094;1095;825;773;826;1113;1114;1115;1116;802;780;779;778;776;781;1097;1098;1099;1100;1111;1110;1101;550;551;552;803;801;799;798;800;797;1133;1135;1136;1137;1138;1139;1140;1141;1142;1143;1144;1145;1146;1147;1148;1083;1082;303;301;1091;1089;1092;1090;1149;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1108;-2437.488,423.2492;Inherit;False;1654.307;726.2937;;25;942;943;944;945;958;960;941;963;957;1085;961;1086;959;946;947;948;949;953;954;1103;1106;1105;1104;950;952;Main Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1080;-4976.589,527.7861;Inherit;False;1871.91;635.1829;;27;1001;1002;1003;1004;972;1069;1014;1005;1037;1038;1048;1041;1052;1030;1027;1031;1061;1062;1029;1067;1028;978;1070;991;1044;1079;1078;UV Animation;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1077;783.857,779.2437;Inherit;False;225;166;;1;1076;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1074;-595.1903,771.6282;Inherit;False;924.089;713.8389;;10;613;614;615;617;616;618;604;612;602;605;Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;939;-3064.363,612.9722;Inherit;False;584.501;280;;3;64;345;987;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;937;-615.7575,1593.672;Inherit;False;967.9859;438.5421;;9;890;877;871;898;934;933;935;930;936;AlphaBlend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;392.9536,763.9136;Inherit;False;356.8159;717.053;;8;869;865;864;868;866;867;863;891;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;869;479.3982,1364.967;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;34;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;478.1082,1089.858;Inherit;False;Property;_StencilComparison;Stencil Comparison;31;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;480.1514,1183.922;Inherit;False;Property;_StencilPassFront;Stencil PassFront;32;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;480.4197,1276.079;Inherit;False;Property;_StencilFailFront;Stencil FailFront;33;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;449.77,992.0498;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;30;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;444.6604,903.1628;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;29;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;442.9541,813.9136;Inherit;False;Property;_StencilReference;Stencil Reference;28;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;891;596.1736,1245.273;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;890;100.6349,1757.48;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;877;-565.7572,1731.073;Inherit;False;Property;_Opacity;Opacity;0;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;898;-286.2936,1670.611;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;934;-141.7715,1738.672;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;935;27.98032,1771.301;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;930;-172.0595,1820.214;Inherit;False;Global;_GrabScreen0;Grab Screen 0;68;0;Create;True;0;0;0;False;0;False;Object;-1;False;False;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;936;200.229,1686.672;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;933;-10.27172,1643.672;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;887;655.7147,2366.687;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;871;-511.4023,1651.959;Inherit;False;987;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-493.6152,1282.118;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-244.7179,1143.315;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-545.1903,1369.467;Inherit;False;Property;_Saturation;Saturation;12;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-112.1677,1185.719;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-180.047,927.806;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;-30.89443,923.312;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-414.5122,1002.115;Inherit;False;961;blend_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;85.6987,1195.024;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;987;-2718.345,760.4869;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2711.862,663.3792;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1076;833.857,829.2437;Inherit;False;Property;_CullMode;Cull Mode;35;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;888;386.6089,1692.922;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Tear;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;0;False;;0;False;;True;1;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;False;True;True;False;False;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;889;386.6089,1804.922;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ComponentMaskNode;1001;-4041.058,579.8068;Inherit;False;True;True;False;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;1002;-4043.058,671.8068;Inherit;False;False;False;True;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1069;-3591.227,631.7772;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1014;-3587.163,780.225;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1038;-4001.032,885.5606;Inherit;False;FLOAT2;1;0;FLOAT2;0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;1048;-3882.234,798.3337;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1041;-3745.438,872.0597;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1052;-3877.422,966.3085;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1030;-4383.478,719.9052;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1027;-4058.344,995.2693;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1031;-4060.576,762.7762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FloorOpNode;1062;-4262.917,951.1176;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1029;-4589.151,741.1757;Inherit;False;Property;_ScrollXRate;ScrollXRate;23;0;Create;True;0;0;0;False;0;False;8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1028;-4262.576,1027.26;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1070;-3328.679,688.5004;Inherit;False;Property;_UVAnimation;UV Animation;22;0;Create;True;0;0;0;False;1;Header(UV Animation);False;0;True;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1078;-4615.665,888.858;Inherit;False;Property;_ManualTimeToggle;Manual Time Toggle;26;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;602;-452.6093,821.6282;Inherit;False;Property;_CharaColor;CharaColor;11;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-505.2163,1096.418;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;13;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;942;-1698.382,916.5775;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;943;-2166.104,1020.873;Inherit;False;953;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;944;-2003.494,959.5744;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;945;-1871.546,1026.301;Inherit;False;948;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;958;-1523.951,947.6904;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;960;-2130.827,839.3664;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;941;-1544.822,837.9384;Inherit;False;Property;_TearShadow;TearShadow;4;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;963;-2387.488,827.5317;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;957;-1324.446,925.9775;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1085;-1164.132,849.2383;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;961;-1007.181,842.2015;Inherit;False;blend_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1086;-1323.912,1033.543;Inherit;False;1082;LightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;959;-2385.457,925.5803;Inherit;False;Property;_AdditionalDiffuseColor;AdditionalDiffuseColor;3;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;946;-1442.373,541.2995;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;947;-1577.073,541.5987;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;948;-1286.027,534.1355;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;949;-1746.29,538.0815;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;953;-1318.705,640.4767;Inherit;False;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;954;-1539.78,640.3888;Inherit;False;Property;_Shadow;Shadow;5;1;[HDR];Create;True;0;0;0;False;0;False;0.9019608,0.9019608,0.9019608,0;0.5188679,0.5188679,0.5188679,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1103;-2337.205,558.5233;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;950;-2013.389,473.2492;Inherit;False;Property;_ShadowStep;ShadowStep;6;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;952;-1876.224,663.3799;Inherit;False;Property;_ShadowFeather;ShadowFeather;7;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1106;-2110.713,621.9672;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1105;-1977.213,558.1672;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;8;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1104;-2366.285,638.0883;Inherit;False;1101;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1005;-3759.879,779.4743;Inherit;False;1003;Tiling;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FloorOpNode;1061;-4208.884,814.0207;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1067;-4362.063,817.8797;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;978;-4455.42,1046.969;Inherit;False;Property;_ScrollYRate;ScrollYRate;24;0;Create;True;0;0;0;False;0;False;16;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;991;-4940.887,884.6288;Inherit;False;Property;_Time0;Auto Time;25;0;Create;False;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;1044;-4793.313,887.1927;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1079;-4805.709,973.111;Inherit;False;Property;_ManualTime0;Manual Time;27;0;Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1037;-4173.304,886.0905;Inherit;False;1004;Offset;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1004;-3829.155,670.8068;Inherit;False;Offset;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1003;-3825.255,578.5068;Inherit;False;Tiling;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;64;-3014.363,662.9722;Inherit;True;Property;_MainTex;Diffuse Map (_tear);1;2;[Header];[NoScaleOffset];Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;972;-4274.929,577.7861;Inherit;False;InstancedProperty;_TearTilingOffset;Tear Tiling & Offset;2;0;Create;True;0;0;0;False;0;False;1,1,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-929.5097,1559.167;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1081;-1055.201,1560.827;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1093;-1850.937,1486.343;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1094;-1502.714,1342.872;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;10;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1095;-1789.12,1311.362;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-2293.702,1445.806;Inherit;False;Property;_MinDirectLight;MinDirectLight;14;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;773;-2218.556,1316.272;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;826;-1509.37,1484.585;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;15;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1113;-1991.189,1369.105;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1114;-1196.82,1403.243;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1115;-1125.786,1786.895;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1116;-999.2708,1828.529;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-3465.186,1824.789;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;780;-3480.686,1917.213;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-3255.648,1867.252;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-3295.907,1982.701;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-3128.32,1891.468;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-2926.599,1891.171;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1097;-3463.941,2087.57;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1098;-3279.999,2089.487;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1099;-3143.301,2120.542;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;-3299.888,2168.773;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1111;-3088.51,2039.071;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1110;-2927.514,2060.625;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1101;-2761.011,2063.446;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;550;-3449.54,1643.231;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;551;-3213.337,1608.967;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-3082.882,1610.627;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;803;-3436.552,1553.744;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-2962.78,1336.068;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-3512.125,1386.621;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;798;-3286.931,1455.684;Inherit;False;return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz)@;3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;800;-3130.808,1336.726;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-3290.739,1330.069;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1133;-1625.642,1711.891;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1135;-1336.165,1773.222;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1136;-1790.647,1713.212;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;1137;-2506.036,1789.58;Inherit;False;Property;_IndirectLightBiasSample1;Indirect Light Bias Sample1;16;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1138;-2504.708,1966.188;Inherit;False;Property;_IndirectLightBiasSample2;Indirect Light Bias Sample2;17;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1139;-2223.082,1983.855;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1140;-2075.471,1985.854;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1141;-1919.527,2018.213;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1142;-1775.441,2016.614;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1143;-2230.468,1788.722;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1144;-2084.161,1793.322;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1145;-1929.513,1806.179;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1146;-1785.426,1809.78;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1147;-1580.494,1819.427;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1148;-1556.492,1913.354;Inherit;False;Property;_IndirectBiasSampleRate;Indirect Bias Sample Rate;18;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1083;-1198.338,2155.388;Inherit;False;Property;_LightFactor;LightFactor;21;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1082;-915.4537,2151.096;Inherit;False;LightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-1284.752,1979.481;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;19;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-1267.091,2063.46;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;20;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1091;-2091.524,1520.811;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1089;-2489.684,1527.532;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;1092;-2296.971,1529.059;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1090;-2306.002,1613.769;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1149;-1995.352,1637.083;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
WireConnection;898;0;871;0
WireConnection;898;1;877;0
WireConnection;934;0;898;0
WireConnection;935;0;934;0
WireConnection;935;1;930;0
WireConnection;936;0;933;0
WireConnection;936;1;935;0
WireConnection;933;0;618;0
WireConnection;933;1;898;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;612;0;604;0
WireConnection;618;0;616;0
WireConnection;987;0;64;4
WireConnection;345;0;64;0
WireConnection;888;0;936;0
WireConnection;1001;0;972;0
WireConnection;1002;0;972;0
WireConnection;1069;0;1003;0
WireConnection;1069;1;1004;0
WireConnection;1014;0;1005;0
WireConnection;1014;1;1041;0
WireConnection;1038;0;1037;0
WireConnection;1048;0;1031;0
WireConnection;1048;1;1038;0
WireConnection;1041;0;1048;0
WireConnection;1041;1;1052;0
WireConnection;1052;0;1038;1
WireConnection;1052;1;1027;0
WireConnection;1030;1;1029;0
WireConnection;1027;0;1062;0
WireConnection;1027;1;1028;0
WireConnection;1031;0;1030;0
WireConnection;1031;1;1061;0
WireConnection;1062;0;1078;0
WireConnection;1028;1;978;0
WireConnection;1070;0;1069;0
WireConnection;1070;1;1014;0
WireConnection;1078;0;1044;0
WireConnection;1078;1;1079;0
WireConnection;942;0;960;0
WireConnection;942;1;944;0
WireConnection;942;2;945;0
WireConnection;944;0;960;0
WireConnection;944;1;943;0
WireConnection;960;0;963;0
WireConnection;960;1;959;0
WireConnection;941;0;960;0
WireConnection;941;1;942;0
WireConnection;957;0;941;0
WireConnection;957;1;958;0
WireConnection;1085;0;941;0
WireConnection;1085;1;957;0
WireConnection;1085;2;1086;0
WireConnection;961;0;1085;0
WireConnection;946;0;947;0
WireConnection;947;0;949;0
WireConnection;947;1;952;0
WireConnection;948;0;946;0
WireConnection;949;0;950;0
WireConnection;949;1;1105;0
WireConnection;953;0;954;0
WireConnection;1106;0;1103;0
WireConnection;1106;1;1104;0
WireConnection;1105;0;1103;0
WireConnection;1105;1;1106;0
WireConnection;1061;0;1067;0
WireConnection;1067;0;1029;0
WireConnection;1067;1;1078;0
WireConnection;1044;0;991;0
WireConnection;1004;0;1002;0
WireConnection;1003;0;1001;0
WireConnection;64;1;1070;0
WireConnection;208;0;1081;0
WireConnection;1081;0;1114;0
WireConnection;1081;1;1116;0
WireConnection;1093;0;1113;0
WireConnection;1093;1;1091;0
WireConnection;1094;0;1093;0
WireConnection;1094;1;1095;0
WireConnection;1095;1;1113;0
WireConnection;1095;0;1093;0
WireConnection;1113;0;773;1
WireConnection;1113;1;825;0
WireConnection;1114;0;1094;0
WireConnection;1114;1;826;0
WireConnection;1115;0;1135;0
WireConnection;1115;1;303;0
WireConnection;1116;0;1115;0
WireConnection;1116;1;301;0
WireConnection;779;0;802;0
WireConnection;779;1;780;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;781;0;776;0
WireConnection;1098;0;1097;0
WireConnection;1099;0;1098;0
WireConnection;1099;1;1100;0
WireConnection;1099;2;1100;0
WireConnection;1110;0;1111;0
WireConnection;1110;2;1099;0
WireConnection;1101;0;1110;0
WireConnection;551;0;803;0
WireConnection;551;1;550;0
WireConnection;552;0;551;0
WireConnection;801;0;800;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;1133;0;1136;0
WireConnection;1135;0;1133;0
WireConnection;1135;1;1147;0
WireConnection;1135;2;1148;0
WireConnection;1136;0;1149;0
WireConnection;1139;0;1138;1
WireConnection;1139;1;1138;2
WireConnection;1139;2;1138;3
WireConnection;1140;0;1139;0
WireConnection;1141;0;1140;0
WireConnection;1141;3;1138;4
WireConnection;1142;0;1141;0
WireConnection;1143;0;1137;1
WireConnection;1143;1;1137;2
WireConnection;1143;2;1137;3
WireConnection;1144;0;1143;0
WireConnection;1145;0;1144;0
WireConnection;1145;3;1137;4
WireConnection;1146;0;1145;0
WireConnection;1147;0;1146;0
WireConnection;1147;1;1142;0
WireConnection;1082;0;1083;0
WireConnection;1091;0;1092;0
WireConnection;1091;1;1090;0
WireConnection;1092;0;1089;0
ASEEND*/
//CHKSM=95E517047659025828F10FA1170F4704D5AAA1CF