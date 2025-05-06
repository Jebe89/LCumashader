// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/BaseTransparentArea"
{
	Properties
	{
		_Opacity("Opacity", Range( 0 , 2)) = 1
		_MaskClipValue("Mask Clip Value", Range( 0 , 1)) = 0.1
		[Header(Diffuse)]_MainTex("Diffuse Map (_diff)", 2D) = "white" {}
		[HDR]_ToonBrightColor("ToonBrightColor", Color) = (1,1,1,0)
		[Header(Shadow)]_ShadTex("Shaded Diffuse (_shad_c)", 2D) = "white" {}
		[Toggle]_UseShadowMaskVertexColorA("Use ShadowMask (VertexColorA)", Float) = 0
		[HDR]_ToonDarkColor("ToonDarkColor", Color) = (1,1,1,0)
		_AreaTex("Area Map (_area)", 2D) = "gray" {}
		_DiffuseColorAreaR1("DiffuseColor AreaR1", Color) = (0,0,0,1)
		_ShadeColorAreaR1("ShadeColor AreaR1", Color) = (0,0,0,1)
		_DiffuseColorAreaR2("DiffuseColor AreaR2", Color) = (0,0,0,1)
		_ShadeColorAreaR2("ShadeColor AreaR2", Color) = (0,0,0,1)
		_DiffuseColorAreaG1("DiffuseColor AreaG1", Color) = (0,0,0,1)
		_ShadeColorAreaG1("ShadeColor AreaG1", Color) = (0,0,0,1)
		_DiffuseColorAreaG2("DiffuseColor AreaG2", Color) = (0,0,0,1)
		_ShadeColorAreaG2("ShadeColor AreaG2", Color) = (0,0,0,1)
		_DiffuseColorAreaB1("DiffuseColor AreaB1", Color) = (0,0,0,1)
		_ShadeColorAreaB1("ShadeColor AreaB1", Color) = (0,0,0,1)
		_DiffuseColorAreaB2("DiffuseColor AreaB2", Color) = (0,0,0,1)
		_ShadeColorAreaB2("ShadeColor AreaB2", Color) = (0,0,0,1)
		_BumpMap("Normal Map", 2D) = "bump" {}
		[Toggle]_OnlyPaintedShadow("Only Painted Shadow", Float) = 0
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[HDR]_GlobalShadowColor("GlobalShadowColor", Color) = (1,1,1,1)
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 1
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 1
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 1
		_BaseTex("TripleMaskMap (_base)", 2D) = "gray" {}
		[HDR][Header(Specular)]_SpecularColor("SpecularColor", Color) = (1,1,1,1)
		_SpecularPower("SpecularPower", Range( 0 , 5)) = 1.2
		_SpecularBias("Specular Bias", Range( 0 , 10)) = 0.2
		_CtrlTex("OptionMaskMap (_ctrl)", 2D) = "black" {}
		[Header(Rim)][Toggle]_Use_DisRimMask("Use_DisRimMask", Float) = 1
		[HDR]_RimColor("RimColor", Color) = (1,1,1,0.4)
		_RimStep("RimStep", Range( 0 , 1)) = 0.5
		_RimFeather("RimFeather", Range( 0 , 1)) = 0.3
		_RimSpecRate("RimSpecRate", Range( 0 , 1)) = 0.5
		_RimShadowRate("RimShadowRate", Range( 0 , 2)) = 0
		_RimAttenuation("RimAttenuation", Range( 0 , 1)) = 0
		_RimHorizonOffset("RimHorizonOffset", Range( -1 , 1)) = 0
		_RimVerticalOffset("RimVerticalOffset", Range( -1 , 1)) = 0
		[HDR]_RimColor2("RimColor2", Color) = (0,0,0,0)
		_RimStep2("RimStep2", Range( 0 , 1)) = 0.5
		_RimFeather2("RimFeather2", Range( 0 , 1)) = 0.3
		_RimSpecRate2("RimSpecRate2", Range( 0 , 1)) = 0.5
		_RimShadowRate2("RimShadowRate2", Range( 0 , 2)) = 0
		_RimAttenuation2("RimAttenuation2", Range( 0 , 1)) = 0
		_RimHorizonOffset2("RimHorizonOffset2", Range( -1 , 1)) = 0
		_RimVerticalOffset2("RimVerticalOffset2", Range( -1 , 1)) = 0
		[HDR]_GlobalRimColor("GlobalRimColor", Color) = (1,1,1,1)
		_CustomRimLightColor("CustomRimLightColor", Range( 0 , 1)) = 1
		_MinRimLightColor("MinRimLightColor", Range( 0 , 1)) = 0.2
		[Header(Metal)][Toggle]_Use_MetalMask("Use_MetalMask", Float) = 1
		_EnvTex("EnvironmentMap (_env)", 2D) = "white" {}
		_EnvRate("EnvRate", Range( 0 , 10)) = 1
		_EnvBias("EnvBias", Range( 0 , 10)) = 1
		[Header(Reflection)][Toggle]_Use_ReflectionMask("Use_ReflectionMask", Float) = 0
		_RflTex("ReflectionMap (_rfl)", 2D) = "black" {}
		[HDR]_ReflectionAddColor("ReflectionAddColor", Color) = (1,1,1,0)
		[HDR]_ReflectionMulColor("ReflectionMulColor", Color) = (1,1,1,0)
		_RflRate("RflRate", Range( 0 , 10)) = 1
		_RflAddPowVal("RflAddPowVal", Range( 0 , 10)) = 1
		_RflAddBias("RflAddBias", Range( 0 , 10)) = 1
		_RflMulBias("RflMulBias", Range( 0 , 10)) = 1
		_RflMulOffset("RflMulOffset", Range( -1 , 1)) = 0.5
		[Header(Dirt)]_DirtTex("DirtTex", 2D) = "black" {}
		[HDR]_GlobalDirtColor("GlobalDirtColor", Color) = (1,1,1,0)
		[HDR]_GlobalDirtRimSpecularColor("GlobalDirtRimSpecularColor", Color) = (1,1,1,0.4)
		_DirtScale("DirtScale", Range( 0 , 1)) = 0
		_DirtRateR("DirtRateR", Range( 0 , 1)) = 1
		_DirtRateG("DirtRateG", Range( 0 , 1)) = 1
		_DirtRateB("DirtRateB", Range( 0 , 1)) = 1
		[Header(Emissive and Other)]_EmiTex("Emissive (_emi) [optional]", 2D) = "white" {}
		[HDR]_EmissiveColor("EmissiveColor", Color) = (1,1,1,1)
		_EmmisiveStrength("EmmisiveStrength", Range( 0 , 10)) = 0
		[NoScaleOffset]_DynamicEmmisive_dyn_emi("DynamicEmmisive (_dyn_emi)", 2D) = "black" {}
		_DynamicEmmisiveMask_dyn_emi_mask("DynamicEmmisiveMask (_dyn_emi_mask)", 2D) = "black" {}
		[HDR]_DynEmissiveColor("DynEmissiveColor", Color) = (1,1,1,1)
		_DynEmiScrollX("DynEmi ScrollX", Float) = 0
		_DynEmiScrollY("DynEmi ScrollY", Float) = -1
		_DynEmmisiveStrength("DynEmmisiveStrength", Range( 0 , 10)) = 0
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
		_LightColorGrayScale("LightColor GrayScale", Range( 0 , 1)) = 0
		_DiffuseLightFactor("DiffuseLightFactor", Range( 0 , 1)) = 0
		_GlobalLightFactor("GlobalLightFactor", Range( 0 , 1)) = 1
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
			BlendOp Add, Max
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
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform sampler2D _AreaTex;
			uniform float4 _AreaTex_ST;
			uniform float4 _DiffuseColorAreaR1;
			uniform float4 _DiffuseColorAreaR2;
			uniform float4 _DiffuseColorAreaG1;
			uniform float4 _DiffuseColorAreaG2;
			uniform float4 _DiffuseColorAreaB1;
			uniform float4 _DiffuseColorAreaB2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _ShadeColorAreaR1;
			uniform float4 _ShadeColorAreaR2;
			uniform float4 _ShadeColorAreaG1;
			uniform float4 _ShadeColorAreaG2;
			uniform float4 _ShadeColorAreaB1;
			uniform float4 _ShadeColorAreaB2;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _RflTex;
			uniform float _RflMulBias;
			uniform float4 _ReflectionMulColor;
			uniform float _RflMulOffset;
			uniform float _RflAddBias;
			uniform float _RflAddPowVal;
			uniform float4 _ReflectionAddColor;
			uniform float _RflRate;
			uniform float _Use_ReflectionMask;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform float4 _GlobalDirtColor;
			uniform float4 _GlobalDirtRimSpecularColor;
			uniform float _DirtRateR;
			uniform sampler2D _DirtTex;
			uniform float4 _DirtTex_ST;
			uniform float _DirtScale;
			uniform float _DirtRateG;
			uniform float _DirtRateB;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform sampler2D _DynamicEmmisive_dyn_emi;
			uniform float _DynEmiScrollX;
			uniform float _DynEmiScrollY;
			uniform sampler2D _DynamicEmmisiveMask_dyn_emi_mask;
			uniform float4 _DynamicEmmisiveMask_dyn_emi_mask_ST;
			uniform float4 _DynEmissiveColor;
			uniform float _DynEmmisiveStrength;
			uniform float _Saturation;
			uniform float _Opacity;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform float _MaskClipValue;
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float IsThereALight797(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float3 DefaultLightDir(  )
			{
				return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
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
			
			float IsThereALight1078(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_SHADOW_COORDS(6)
				float4 ase_texcoord7 : TEXCOORD7;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				float vertexToFrag1079 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1079;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord7 = screenPos;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
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

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1065 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1066 = clamp( lerpResult1065 , temp_cast_0 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord2.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1088 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1088 = normalize( float3(dot(tanToWorld0,tanNormal1088), dot(tanToWorld1,tanNormal1088), dot(tanToWorld2,tanNormal1088)) );
				float3 WorldNormal1087 = worldNormal1088;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord2.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1087 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1031 = ase_worldPos;
				float localPureLightAttenuation1031 = PureLightAttenuation( worldPos1031 );
				float RimAtten1047 = localPureLightAttenuation1031;
				float lerpResult1062 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1087 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1081_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1032_0 = ( temp_output_1081_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1031 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1034 = temp_output_1032_0;
				#else
				float3 staticSwitch1034 = temp_output_1081_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1103 = (float4(WorldNormal1087 , 1.0));
				float4 Normal1101 = appendResult1103;
				float3 localShadeSH9out1101 = ShadeSH9out( Normal1101 );
				float3 appendResult1097 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1098 = ASESafeNormalize( appendResult1097 );
				float4 appendResult1102 = (float4(normalizeResult1098 , _IndirectLightBiasSample1.w));
				float4 Normal1099 = appendResult1102;
				float3 localShadeSH9out1099 = ShadeSH9out( Normal1099 );
				float3 appendResult1106 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1107 = ASESafeNormalize( appendResult1106 );
				float4 appendResult1108 = (float4(normalizeResult1107 , _IndirectLightBiasSample2.w));
				float4 Normal1109 = appendResult1108;
				float3 localShadeSH9out1109 = ShadeSH9out( Normal1109 );
				float3 lerpResult1095 = lerp( localShadeSH9out1101 , max( localShadeSH9out1099 , localShadeSH9out1109 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_998_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1034 ):( temp_output_1032_0 )) , temp_cast_4 ) , min( max( lerpResult1095 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1071 = dot(temp_output_998_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1071).xxx;
				float3 lerpResult1070 = lerp( temp_output_998_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1070;
				float GlobalLightFactor1000 = _GlobalLightFactor;
				float4 lerpResult1008 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float vertexToFrag1079 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord2.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1112 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1117 = AreaMap1112;
				float AreaR1161 = break1117.r;
				float AreaG1116 = break1117.g;
				float AreaB1160 = break1117.b;
				float4 temp_output_1134_0 = ( ( AreaR1161 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1136 = (temp_output_1134_0).a;
				float4 lerpResult1137 = lerp( diff345 , ( diff345 * temp_output_1134_0 ) , area_lerp1136);
				float4 diff_area1162 = lerpResult1137;
				float DiffuseLightFactor1076 = _DiffuseLightFactor;
				float4 lerpResult1002 = lerp( diff_area1162 , ( diff_area1162 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_diff349 = lerpResult1002;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1159 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1161 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1136);
				float4 shad_area1163 = lerpResult1159;
				float4 lerpResult1004 = lerp( ( shad_area1163 * _GlobalShadowColor ) , ( shad_area1163 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_shad344 = lerpResult1004;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1078 = IsThereALight1078();
				float HalfShadowAttenuation1039 = ( localIsThereALight1078 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1039 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1008 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1087 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode990 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul975 = ( ( tex2DNode990.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd970 = ( _RflAddBias * 10.0 * pow( tex2DNode990.r , _RflAddPowVal ) );
				float ReflectionMask959 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult972 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul975 ) + ( RflAdd970 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask959 ) ));
				float4 Env2SpecShaded_diff971 = lerpResult972;
				float lerpResult1058 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1058 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1066 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff971 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1066 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1062 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1011 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime950 = _Time.y * 0.1;
				float2 appendResult945 = (float2(( _DynEmiScrollX * mulTime950 ) , ( mulTime950 * _DynEmiScrollY )));
				float2 texCoord944 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult945;
				float4 DynEmi938 = tex2D( _DynamicEmmisive_dyn_emi, texCoord944 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask939 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1011 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi938 * DynEmiMask939 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				float temp_output_898_0 = ( Alpha646 * _Opacity );
				float4 screenPos = i.ase_texcoord7;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 screenColor930 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,ase_grabScreenPos.xy/ase_grabScreenPos.w);
				clip( Alpha646 - _MaskClipValue);
				
				
				outColor = ( saturate( ( output_diff618 * temp_output_898_0 ) ) + saturate( ( ( 1.0 - temp_output_898_0 ) * screenColor930 ) ) ).rgb;
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
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform sampler2D _AreaTex;
			uniform float4 _AreaTex_ST;
			uniform float4 _DiffuseColorAreaR1;
			uniform float4 _DiffuseColorAreaR2;
			uniform float4 _DiffuseColorAreaG1;
			uniform float4 _DiffuseColorAreaG2;
			uniform float4 _DiffuseColorAreaB1;
			uniform float4 _DiffuseColorAreaB2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _ShadeColorAreaR1;
			uniform float4 _ShadeColorAreaR2;
			uniform float4 _ShadeColorAreaG1;
			uniform float4 _ShadeColorAreaG2;
			uniform float4 _ShadeColorAreaB1;
			uniform float4 _ShadeColorAreaB2;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _RflTex;
			uniform float _RflMulBias;
			uniform float4 _ReflectionMulColor;
			uniform float _RflMulOffset;
			uniform float _RflAddBias;
			uniform float _RflAddPowVal;
			uniform float4 _ReflectionAddColor;
			uniform float _RflRate;
			uniform float _Use_ReflectionMask;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform float4 _GlobalDirtColor;
			uniform float4 _GlobalDirtRimSpecularColor;
			uniform float _DirtRateR;
			uniform sampler2D _DirtTex;
			uniform float4 _DirtTex_ST;
			uniform float _DirtScale;
			uniform float _DirtRateG;
			uniform float _DirtRateB;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform sampler2D _DynamicEmmisive_dyn_emi;
			uniform float _DynEmiScrollX;
			uniform float _DynEmiScrollY;
			uniform sampler2D _DynamicEmmisiveMask_dyn_emi_mask;
			uniform float4 _DynamicEmmisiveMask_dyn_emi_mask_ST;
			uniform float4 _DynEmissiveColor;
			uniform float _DynEmmisiveStrength;
			uniform float _Saturation;
			uniform float _Opacity;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform float _MaskClipValue;
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float IsThereALight797(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float3 DefaultLightDir(  )
			{
				return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
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
			
			float IsThereALight1078(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_SHADOW_COORDS(6)
				float4 ase_texcoord7 : TEXCOORD7;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				float vertexToFrag1079 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1079;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord7 = screenPos;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
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

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1065 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1066 = clamp( lerpResult1065 , temp_cast_0 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord2.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1088 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1088 = normalize( float3(dot(tanToWorld0,tanNormal1088), dot(tanToWorld1,tanNormal1088), dot(tanToWorld2,tanNormal1088)) );
				float3 WorldNormal1087 = worldNormal1088;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord2.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1087 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1031 = ase_worldPos;
				float localPureLightAttenuation1031 = PureLightAttenuation( worldPos1031 );
				float RimAtten1047 = localPureLightAttenuation1031;
				float lerpResult1062 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1087 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1081_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1032_0 = ( temp_output_1081_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1031 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1034 = temp_output_1032_0;
				#else
				float3 staticSwitch1034 = temp_output_1081_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1103 = (float4(WorldNormal1087 , 1.0));
				float4 Normal1101 = appendResult1103;
				float3 localShadeSH9out1101 = ShadeSH9out( Normal1101 );
				float3 appendResult1097 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1098 = ASESafeNormalize( appendResult1097 );
				float4 appendResult1102 = (float4(normalizeResult1098 , _IndirectLightBiasSample1.w));
				float4 Normal1099 = appendResult1102;
				float3 localShadeSH9out1099 = ShadeSH9out( Normal1099 );
				float3 appendResult1106 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1107 = ASESafeNormalize( appendResult1106 );
				float4 appendResult1108 = (float4(normalizeResult1107 , _IndirectLightBiasSample2.w));
				float4 Normal1109 = appendResult1108;
				float3 localShadeSH9out1109 = ShadeSH9out( Normal1109 );
				float3 lerpResult1095 = lerp( localShadeSH9out1101 , max( localShadeSH9out1099 , localShadeSH9out1109 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_998_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1034 ):( temp_output_1032_0 )) , temp_cast_4 ) , min( max( lerpResult1095 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1071 = dot(temp_output_998_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1071).xxx;
				float3 lerpResult1070 = lerp( temp_output_998_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1070;
				float GlobalLightFactor1000 = _GlobalLightFactor;
				float4 lerpResult1008 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float vertexToFrag1079 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord2.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1112 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1117 = AreaMap1112;
				float AreaR1161 = break1117.r;
				float AreaG1116 = break1117.g;
				float AreaB1160 = break1117.b;
				float4 temp_output_1134_0 = ( ( AreaR1161 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1136 = (temp_output_1134_0).a;
				float4 lerpResult1137 = lerp( diff345 , ( diff345 * temp_output_1134_0 ) , area_lerp1136);
				float4 diff_area1162 = lerpResult1137;
				float DiffuseLightFactor1076 = _DiffuseLightFactor;
				float4 lerpResult1002 = lerp( diff_area1162 , ( diff_area1162 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_diff349 = lerpResult1002;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1159 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1161 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1136);
				float4 shad_area1163 = lerpResult1159;
				float4 lerpResult1004 = lerp( ( shad_area1163 * _GlobalShadowColor ) , ( shad_area1163 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_shad344 = lerpResult1004;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1078 = IsThereALight1078();
				float HalfShadowAttenuation1039 = ( localIsThereALight1078 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1039 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1008 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1087 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode990 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul975 = ( ( tex2DNode990.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd970 = ( _RflAddBias * 10.0 * pow( tex2DNode990.r , _RflAddPowVal ) );
				float ReflectionMask959 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult972 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul975 ) + ( RflAdd970 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask959 ) ));
				float4 Env2SpecShaded_diff971 = lerpResult972;
				float lerpResult1058 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1058 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1066 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff971 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1066 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1062 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1011 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime950 = _Time.y * 0.1;
				float2 appendResult945 = (float2(( _DynEmiScrollX * mulTime950 ) , ( mulTime950 * _DynEmiScrollY )));
				float2 texCoord944 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult945;
				float4 DynEmi938 = tex2D( _DynamicEmmisive_dyn_emi, texCoord944 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask939 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1011 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi938 * DynEmiMask939 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				float temp_output_898_0 = ( Alpha646 * _Opacity );
				float4 screenPos = i.ase_texcoord7;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 screenColor930 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,ase_grabScreenPos.xy/ase_grabScreenPos.w);
				clip( Alpha646 - _MaskClipValue);
				
				
				outColor = ( saturate( ( output_diff618 * temp_output_898_0 ) ) + saturate( ( ( 1.0 - temp_output_898_0 ) * screenColor930 ) ) ).rgb;
				outAlpha = 1;
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		GrabPass{ }

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite Off
			ZTest LEqual
			CGPROGRAM
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

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
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float4 _UnsaturationColor;
			uniform float4 _CharaColor;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _RimAttenuation2;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform sampler2D _AreaTex;
			uniform float4 _AreaTex_ST;
			uniform float4 _DiffuseColorAreaR1;
			uniform float4 _DiffuseColorAreaR2;
			uniform float4 _DiffuseColorAreaG1;
			uniform float4 _DiffuseColorAreaG2;
			uniform float4 _DiffuseColorAreaB1;
			uniform float4 _DiffuseColorAreaB2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _ShadeColorAreaR1;
			uniform float4 _ShadeColorAreaR2;
			uniform float4 _ShadeColorAreaG1;
			uniform float4 _ShadeColorAreaG2;
			uniform float4 _ShadeColorAreaB1;
			uniform float4 _ShadeColorAreaB2;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
			uniform sampler2D _RflTex;
			uniform float _RflMulBias;
			uniform float4 _ReflectionMulColor;
			uniform float _RflMulOffset;
			uniform float _RflAddBias;
			uniform float _RflAddPowVal;
			uniform float4 _ReflectionAddColor;
			uniform float _RflRate;
			uniform float _Use_ReflectionMask;
			uniform float _RimAttenuation;
			uniform float _RimShadowRate;
			uniform float4 _RimColor;
			uniform float _RimSpecRate;
			uniform float _RimStep;
			uniform float _RimVerticalOffset;
			uniform float _RimHorizonOffset;
			uniform float _RimFeather;
			uniform float4 _GlobalDirtColor;
			uniform float4 _GlobalDirtRimSpecularColor;
			uniform float _DirtRateR;
			uniform sampler2D _DirtTex;
			uniform float4 _DirtTex_ST;
			uniform float _DirtScale;
			uniform float _DirtRateG;
			uniform float _DirtRateB;
			uniform sampler2D _EmiTex;
			uniform float4 _EmiTex_ST;
			uniform float4 _EmissiveColor;
			uniform float _EmmisiveStrength;
			uniform sampler2D _DynamicEmmisive_dyn_emi;
			uniform float _DynEmiScrollX;
			uniform float _DynEmiScrollY;
			uniform sampler2D _DynamicEmmisiveMask_dyn_emi_mask;
			uniform float4 _DynamicEmmisiveMask_dyn_emi_mask_ST;
			uniform float4 _DynEmissiveColor;
			uniform float _DynEmmisiveStrength;
			uniform float _Saturation;
			uniform float _Opacity;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform float _MaskClipValue;
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float IsThereALight797(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			
			float3 DefaultLightDir(  )
			{
				return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
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
			
			float IsThereALight1078(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_SHADOW_COORDS(6)
				float4 ase_texcoord7 : TEXCOORD7;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord4.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord5.xyz = ase_worldBitangent;
				float vertexToFrag1079 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1079;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord7 = screenPos;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1065 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1066 = clamp( lerpResult1065 , temp_cast_0 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 uv_BumpMap = i.ase_texcoord2.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldNormal = i.ase_texcoord4.xyz;
				float3 ase_worldBitangent = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal1088 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1088 = normalize( float3(dot(tanToWorld0,tanNormal1088), dot(tanToWorld1,tanNormal1088), dot(tanToWorld2,tanNormal1088)) );
				float3 WorldNormal1087 = worldNormal1088;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord2.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1087 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1031 = ase_worldPos;
				float localPureLightAttenuation1031 = PureLightAttenuation( worldPos1031 );
				float RimAtten1047 = localPureLightAttenuation1031;
				float lerpResult1062 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1087 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1081_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1032_0 = ( temp_output_1081_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1031 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1034 = temp_output_1032_0;
				#else
				float3 staticSwitch1034 = temp_output_1081_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1103 = (float4(WorldNormal1087 , 1.0));
				float4 Normal1101 = appendResult1103;
				float3 localShadeSH9out1101 = ShadeSH9out( Normal1101 );
				float3 appendResult1097 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1098 = ASESafeNormalize( appendResult1097 );
				float4 appendResult1102 = (float4(normalizeResult1098 , _IndirectLightBiasSample1.w));
				float4 Normal1099 = appendResult1102;
				float3 localShadeSH9out1099 = ShadeSH9out( Normal1099 );
				float3 appendResult1106 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1107 = ASESafeNormalize( appendResult1106 );
				float4 appendResult1108 = (float4(normalizeResult1107 , _IndirectLightBiasSample2.w));
				float4 Normal1109 = appendResult1108;
				float3 localShadeSH9out1109 = ShadeSH9out( Normal1109 );
				float3 lerpResult1095 = lerp( localShadeSH9out1101 , max( localShadeSH9out1099 , localShadeSH9out1109 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_998_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1034 ):( temp_output_1032_0 )) , temp_cast_4 ) , min( max( lerpResult1095 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1071 = dot(temp_output_998_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1071).xxx;
				float3 lerpResult1070 = lerp( temp_output_998_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1070;
				float GlobalLightFactor1000 = _GlobalLightFactor;
				float4 lerpResult1008 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float vertexToFrag1079 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord2.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1112 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1117 = AreaMap1112;
				float AreaR1161 = break1117.r;
				float AreaG1116 = break1117.g;
				float AreaB1160 = break1117.b;
				float4 temp_output_1134_0 = ( ( AreaR1161 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1136 = (temp_output_1134_0).a;
				float4 lerpResult1137 = lerp( diff345 , ( diff345 * temp_output_1134_0 ) , area_lerp1136);
				float4 diff_area1162 = lerpResult1137;
				float DiffuseLightFactor1076 = _DiffuseLightFactor;
				float4 lerpResult1002 = lerp( diff_area1162 , ( diff_area1162 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_diff349 = lerpResult1002;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1079 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1159 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1161 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1161 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1116 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1116 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1160 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1160 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1136);
				float4 shad_area1163 = lerpResult1159;
				float4 lerpResult1004 = lerp( ( shad_area1163 * _GlobalShadowColor ) , ( shad_area1163 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1076);
				float4 lit_shad344 = lerpResult1004;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1078 = IsThereALight1078();
				float HalfShadowAttenuation1039 = ( localIsThereALight1078 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1039 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1008 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1087 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode990 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul975 = ( ( tex2DNode990.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd970 = ( _RflAddBias * 10.0 * pow( tex2DNode990.r , _RflAddPowVal ) );
				float ReflectionMask959 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult972 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul975 ) + ( RflAdd970 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask959 ) ));
				float4 Env2SpecShaded_diff971 = lerpResult972;
				float lerpResult1058 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1047 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1087 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1058 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1066 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff971 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1066 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1062 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1011 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1000);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime950 = _Time.y * 0.1;
				float2 appendResult945 = (float2(( _DynEmiScrollX * mulTime950 ) , ( mulTime950 * _DynEmiScrollY )));
				float2 texCoord944 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult945;
				float4 DynEmi938 = tex2D( _DynamicEmmisive_dyn_emi, texCoord944 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask939 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1011 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi938 * DynEmiMask939 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				float temp_output_898_0 = ( Alpha646 * _Opacity );
				float4 screenPos = i.ase_texcoord7;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 screenColor930 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,ase_grabScreenPos.xy/ase_grabScreenPos.w);
				clip( Alpha646 - _MaskClipValue);
				
				
				outColor = ( saturate( ( output_diff618 * temp_output_898_0 ) ) + saturate( ( ( 1.0 - temp_output_898_0 ) * screenColor930 ) ) ).rgb;
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
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;1114;-3112.877,-2658.742;Inherit;False;821.3931;2251.389;;27;600;350;355;559;938;939;620;68;940;941;401;67;436;646;408;959;960;1086;1087;1088;66;1112;1113;345;330;64;65;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1111;-5683.458,1503.583;Inherit;False;3383.77;1020.249;;61;998;1070;1071;1072;208;999;1000;1075;1076;1033;1032;1034;773;825;826;1081;1082;1028;1029;1031;1030;1047;301;303;1083;1084;1095;1101;1104;1100;1106;1107;1108;1109;1105;1103;1097;1098;1102;1099;1096;1110;1036;1037;1039;1078;1077;1035;1038;802;779;778;776;781;552;1094;801;799;800;797;798;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1069;-2286.24,1713.519;Inherit;False;1543.926;2278.817;;73;410;411;413;423;425;424;427;421;409;412;540;452;453;454;458;459;461;455;462;457;456;541;359;358;564;565;568;570;563;566;546;562;357;356;360;578;354;560;460;426;572;1048;569;1058;1049;1059;573;556;1060;1065;1066;1067;1068;558;1064;557;543;547;548;561;577;567;576;544;545;555;575;1061;1062;1052;1051;553;1063;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1018;-641.9268,2060.239;Inherit;False;1247.564;435.543;;15;890;930;898;871;1016;1015;1017;877;1019;1022;1023;1024;1026;1027;1025;Alpha Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1006;-2151.268,-3367.321;Inherit;False;1312.802;1922.036;;50;338;337;339;334;336;335;387;394;386;381;392;405;375;393;371;369;365;366;368;364;370;648;399;383;372;649;382;647;340;420;343;1005;342;1001;1004;344;347;346;919;349;1003;1002;1041;1042;1043;1044;1045;1046;1079;1080;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;958;-585.7802,250.7193;Inherit;False;1028.879;1718.405;;28;610;606;612;602;605;603;604;607;608;609;611;929;613;614;615;617;616;618;951;952;953;954;955;956;957;1012;1011;1013;Emmisive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;476.3221,327.6186;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;850;-4119.219,-264.2387;Inherit;False;1673.75;1710.115;;48;481;486;489;490;492;487;485;488;491;463;484;482;483;478;477;493;475;473;465;129;128;136;518;521;520;494;495;496;497;498;500;501;503;504;505;507;508;509;512;511;513;510;502;499;1090;1091;1092;1093;Matrix And Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;642;-586.7119,-886.787;Inherit;False;1479.274;1043.779;;22;579;580;582;584;587;588;586;583;585;589;590;621;592;593;596;595;594;597;598;601;599;591;Dirt Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;640;-2397.641,-273.1555;Inherit;False;1798.293;550.92;;16;531;535;529;449;450;527;528;537;448;451;533;530;542;532;840;852;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;26;444;440;439;442;539;432;433;428;437;430;435;624;429;441;443;445;315;319;322;636;623;438;434;1008;1007;1009;Specular Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-1896.664,-1247.571;Inherit;False;Property;_SpecularPower;SpecularPower;30;0;Create;True;0;0;0;False;0;False;1.2;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;319;-1591.851,-1243.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;322;-1449.967,-1244.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;11;False;1;FLOAT;0
Node;AmplifyShaderEditor.Exp2OpNode;636;-1314.541,-1240.271;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;579;-536.7119,-548.8462;Inherit;False;Property;_DirtScale;DirtScale;69;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;580;-214.7119,-655.8467;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;582;-70.7123,-657.8467;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;587;365.8105,-661.7866;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;283.8108,-533.7861;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;268.811,-829.787;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;583;-14.18952,-836.787;Inherit;False;Property;_DirtRateR;DirtRateR;70;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;585;5.810593,-482.7861;Inherit;False;Property;_DirtRateB;DirtRateB;72;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;535.8104,-682.7864;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;590;668.5615,-684.2253;Inherit;False;DirtPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;621;-414.6991,-663.8079;Inherit;False;620;dirt;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;592;-314.1618,-283.0981;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleAddOpNode;593;-184.1448,-283.1035;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;594;29.69964,-285.2744;Inherit;False;3;4;0;FLOAT;1E-05;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;597;299.9841,-300.5962;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;598;-26.31721,-388.9922;Inherit;False;577;Rim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;601;469.4225,-303.2583;Inherit;False;DirtRim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;599;95.88292,-121.1928;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;591;-491.7657,-284.0693;Inherit;False;578;realRim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;584;91.8107,-675.7864;Inherit;False;Property;_DirtRateG;DirtRateG;71;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-824.2826,-149.6331;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;481;-3660.561,393.3721;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-3823.886,326.2161;Inherit;False;Constant;_1_;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;489;-3394.128,333.7704;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;490;-3276.889,185.7851;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;492;-3444.837,125.9715;Inherit;False;Constant;_1_1;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;487;-3276.83,344.2701;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;485;-3507.784,557.8467;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;488;-3125.409,346.3606;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;491;-3005.625,233.4706;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;463;-2817.454,262.0985;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;484;-3659.21,533.6436;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;482;-3369.198,424.3574;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;483;-3774.205,538.0598;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3682.406,270.2767;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;41;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;477;-4063.306,488.4777;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;40;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2680.095,255.9642;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;475;-3415.789,211.913;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;473;-3807.115,411.1628;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;465;-3669.349,610.3295;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;129;-3590.986,-123.0717;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;128;-3805.71,-214.2388;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;136;-3451.662,-123.7518;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;518;-2950.721,-87.45399;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;520;-3141.082,-136.0523;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;494;-3675.266,1257.876;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;495;-3666.479,1040.918;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;496;-3829.801,973.762;Inherit;False;Constant;_1_2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;497;-3400.044,981.3165;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;498;-3282.806,833.3303;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;500;-3282.747,991.8161;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;-3513.701,1205.393;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;503;-3131.327,993.9064;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;504;-3011.542,881.0162;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;505;-2823.371,909.6447;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;507;-3665.128,1181.19;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;-3375.114,1071.904;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;509;-3780.121,1185.606;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;512;-4069.219,1136.024;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;48;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;511;-3688.321,917.8228;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;49;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;513;-2685.469,909.0754;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;510;-3813.031,1058.709;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;502;-3421.705,859.4582;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;499;-3439.195,773.5162;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;840;-1045.272,34.79816;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;529;-1397.304,194.5587;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-1869.739,98.6208;Inherit;False;Property;_EnvRate;EnvRate;55;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;852;-1577.859,101.9896;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;869;562.7667,928.6721;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;101;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;561.4767,653.5627;Inherit;False;Property;_StencilComparison;Stencil Comparison;98;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;563.5199,747.6274;Inherit;False;Property;_StencilPassFront;Stencil PassFront;99;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;563.7882,839.7844;Inherit;False;Property;_StencilFailFront;Stencil FailFront;100;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;533.1385,555.7548;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;97;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;528.0289,466.8678;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;96;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;526.3226,377.6186;Inherit;False;Property;_StencilReference;Stencil Reference;95;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;449;-2138.662,-115.3398;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;450;-1990.463,-107.541;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;528;-1853.749,-133.3739;Inherit;True;Property;_EnvTex;EnvironmentMap (_env);54;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;451;-2146.461,-8.738214;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;448;-2340.165,-158.2392;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp;532;-976.1279,-151.4404;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1118.511,-132.6267;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;-1357.839,-237.0326;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;878;-1291.808,-49.52618;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-1188.306,115.758;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;537;-1567.75,-57.32835;Inherit;False;Property;_EnvBias;EnvBias;56;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;432;-1872.09,-1016.517;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;433;-1728.09,-1016.517;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;428;-1765.732,-1134.991;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;-1590.032,-1135.091;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-1290.089,-1088.716;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;624;-2103.141,-1017.509;Inherit;False;623;fixed_specpower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;429;-1956.334,-1135.091;Inherit;False;136;Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;438;-1146.389,-1082.891;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;434;-1431.289,-1135.516;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;437;-1535.377,-1023.84;Inherit;False;436;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;879;-1452.284,-930.4702;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;880;-1737.166,-891.5067;Inherit;False;Property;_SpecularBias;Specular Bias;31;0;Create;True;0;0;0;False;0;False;0.2;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;539;-1856.096,-785.5126;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;891;596.1736,1245.273;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;994;548.8292,1134.068;Inherit;False;225;166;;2;995;891;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;943;-3918.568,-1099.549;Inherit;False;785.9297;346.1168;;7;950;949;948;947;946;945;944;DynEmi UV Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;944;-3374.638,-1018.206;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;945;-3524.357,-969.2328;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;946;-3674.059,-1005.893;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;947;-3868.568,-869.4325;Inherit;False;Property;_DynEmiScrollY;DynEmi ScrollY;80;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;948;-3860.367,-1049.549;Inherit;False;Property;_DynEmiScrollX;DynEmi ScrollX;79;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;949;-3674.058,-899.9836;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;950;-3862.472,-955.9684;Inherit;False;1;0;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-143.0758,721.8495;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;607;-494.6505,646.4565;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;608;-321.6508,648.4566;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;-375.0282,725.9411;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;929;-466.2878,977.8301;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;75;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-484.2051,1765.775;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-235.3078,1626.972;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-535.7802,1853.124;Inherit;False;Property;_Saturation;Saturation;83;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-102.7575,1669.376;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;114.3088,1689.881;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;951;-493.2727,1066.229;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;952;-320.2731,1069.529;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;953;-149.3736,1069.178;Inherit;False;5;5;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;954;-462.9797,1146.326;Inherit;False;938;DynEmi;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;955;-472.9797,1225.326;Inherit;False;939;DynEmiMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;957;-499.2133,1485.205;Inherit;False;Property;_DynEmmisiveStrength;DynEmmisiveStrength;81;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;962;-2241.833,397.9343;Inherit;False;1544.887;1211.35;;31;993;992;991;990;989;988;987;986;985;984;983;982;981;980;979;978;977;976;975;974;973;972;971;970;969;968;967;966;965;964;963;Reflection Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;963;-2150.493,689.0749;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;964;-2137.114,540.0775;Inherit;False;Constant;_11_1;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;965;-1942.191,577.7135;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;966;-1793.992,585.5124;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;967;-1949.991,684.315;Inherit;False;Constant;_05_1;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;968;-1350.182,541.7396;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;969;-1390.768,447.9343;Inherit;False;Property;_RflAddBias;RflAddBias;63;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;970;-976.4332,529.1889;Inherit;False;RflAdd;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;971;-1252.529,974.0267;Inherit;False;Env2SpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;972;-1398.574,978.5947;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;973;-2191.833,969.694;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;976;-1651.508,741.6197;Inherit;False;Property;_RflMulBias;RflMulBias;64;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;977;-2159.045,1057.682;Inherit;False;975;RflMul;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;978;-1951.693,1044.687;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;979;-1647.203,1129.622;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;980;-1800.749,1191.277;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;982;-1971.069,1145.412;Inherit;False;970;RflAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;983;-1739.702,1421.665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;985;-2020.118,1407.875;Inherit;False;Property;_RflRate;RflRate;61;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;986;-1593.261,1418.707;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;987;-1660.391,448.4651;Inherit;False;Property;_RflAddPowVal;RflAddPowVal;62;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;988;-1366.738,858.0381;Inherit;False;Property;_RflMulOffset;RflMulOffset;65;0;Create;True;0;0;0;False;0;False;0.5;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;989;-1050.942,659.7136;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.490566;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;991;-1114.711,519.7292;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;10;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;992;-1203.99,646.1308;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScaleNode;993;-1372.548,691.5178;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;990;-1660.162,549.0976;Inherit;True;Property;_RflTex;ReflectionMap (_rfl);58;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;527;-2390.39,-6.610276;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;521;-2810.513,-89.33804;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;984;-1954.171,1493.285;Inherit;False;959;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;975;-920.9462,640.0243;Inherit;False;RflMul;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;995;598.8292,1184.068;Inherit;False;Property;_CullMode;Cull Mode;102;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-1810.782,-1763.197;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-1799.499,-1623.093;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;386;-2086.14,-1577.667;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;381;-1644.69,-1735.084;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;392;-1649.007,-1561.283;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;405;-1461.203,-1753.293;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;393;-1648.933,-1828.191;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;371;-1430.343,-2176.155;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;369;-1803.866,-1962.237;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;365;-2074.276,-1898.149;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;366;-1628.585,-2095.397;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;368;-1819.866,-2095.238;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;370;-1238.335,-2170.101;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;399;-1062.466,-1896.299;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;383;-1224.645,-1900.143;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;372;-1639.27,-1940.155;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;649;-1467.609,-1904.477;Inherit;False;648;VertexColorShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-1918.227,-3057.349;Inherit;False;1163;shad_area;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1900.26,-2798.517;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1005;-1675.592,-3029.296;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;342;-1676.705,-2931.538;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1001;-1683.652,-2801.346;Inherit;False;1076;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1004;-1499.651,-2953.508;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;344;-1348.107,-2955.331;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;347;-1898.65,-3221.221;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;346;-1889.851,-3317.321;Inherit;False;1162;diff_area;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;919;-1700.081,-3237.448;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;595;-414.527,-135.9775;Inherit;False;Property;_GlobalDirtColor;GlobalDirtColor;67;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;596;-209.2378,-55.00774;Inherit;False;Property;_GlobalDirtRimSpecularColor;GlobalDirtRimSpecularColor;68;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;602;-496.0474,300.7193;Inherit;False;Property;_CharaColor;CharaColor;82;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;611;-401.8228,804.5724;Inherit;False;Property;_EmissiveColor;EmissiveColor;74;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;956;-472.1343,1307.447;Inherit;False;Property;_DynEmissiveColor;DynEmissiveColor;78;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-495.8062,1580.075;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;84;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;981;-2006.696,1229.327;Inherit;False;Property;_ReflectionAddColor;ReflectionAddColor;59;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;974;-1636.811,818.4308;Inherit;False;Property;_ReflectionMulColor;ReflectionMulColor;60;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;375;-2101.268,-1777.144;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;6;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;364;-2088.808,-2095.706;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;3;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;420;-1938.981,-2977.679;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;24;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1003;-1704.606,-3138.944;Inherit;False;1076;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1002;-1530.018,-3306.766;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-2103.649,-575.8788;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-2109.315,-476.4745;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;444;-1838.034,-600.6365;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1009;-1837.611,-699.9038;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-1524.772,-484.3525;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;440;-1341.903,-591.5147;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-1219.369,-601.0917;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;442;-2127.419,-764.0763;Inherit;False;Property;_SpecularColor;SpecularColor;29;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;1008;-1631.601,-611.6314;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1007;-1858.871,-473.5277;Inherit;False;1000;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;261.6198,600.9558;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;139.4539,606.0461;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;603;-451.0773,562.3958;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1013;-195.8002,345.3473;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-512.2341,478.2117;Inherit;False;601;DirtRim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-206.8888,450.444;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1011;-32.5574,419.8038;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1012;-218.2348,571.4814;Inherit;False;1000;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;410;-1890.881,2082.375;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;411;-1729.682,2125.274;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;413;-1601.847,2125.804;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;423;-1447.677,2122.627;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;425;-1457.251,2228.674;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-1267.477,2077.028;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;427;-1126.802,2070.199;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;421;-2088.647,2120.29;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;-2188.579,2029.075;Inherit;False;Property;_RimStep;RimStep;35;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-2014.38,2204.572;Inherit;False;Property;_RimFeather;RimFeather;36;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;540;-1266.998,1936.477;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;452;-1875.167,2490.235;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;453;-1713.968,2533.133;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;454;-1586.132,2533.663;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;458;-1431.963,2530.486;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;459;-1441.538,2636.533;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-1251.764,2484.887;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;455;-1998.667,2612.431;Inherit;False;Property;_RimFeather2;RimFeather2;44;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;462;-1111.088,2478.058;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;457;-2172.865,2436.933;Inherit;False;Property;_RimStep2;RimStep2;43;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;456;-2089.934,2530.15;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;-1259.21,2341.849;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;359;-1549.056,1782.65;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-2125.806,1871.937;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;564;-1819.777,2988.228;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1641.924,3045.225;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2086.968,3004.857;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1148.457,3023.024;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1389.388,3039.436;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;-1829.924,3141.225;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;546;-2109.642,3092.268;Inherit;False;Property;_RimSpecRate;RimSpecRate;37;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-1017.314,3019.471;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;357;-1933.893,1764.097;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;356;-2127.287,1763.791;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;360;-1401.056,1778.65;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;578;-1241.083,3142.362;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;354;-1779.224,1763.519;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;33;0;Create;True;0;0;0;False;1;Header(Rim);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;560;-1408.617,2938.87;Inherit;False;971;Env2SpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;460;-1474.409,2343.497;Inherit;False;Property;_RimColor2;RimColor2;42;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;426;-1490.123,1935.638;Inherit;False;Property;_RimColor;RimColor;34;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-1557.979,2780.646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1048;-2226.547,2775.49;Inherit;False;1047;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;569;-2103.063,2932.097;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1058;-1860.026,2722.929;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1049;-2062.545,2757.49;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1059;-2141.918,2851.834;Inherit;False;Property;_RimAttenuation;RimAttenuation;39;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;-2236.24,2674.728;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1826.488,2867.588;Inherit;False;Property;_RimShadowRate;RimShadowRate;38;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1060;-1696.972,2748.882;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1065;-1711.359,3215.274;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1066;-1558.146,3216.882;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0.2,0.2,0.2,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1067;-1977.759,3332.386;Inherit;False;Property;_CustomRimLightColor;CustomRimLightColor;51;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1068;-1945.271,3409.41;Inherit;False;Property;_MinRimLightColor;MinRimLightColor;52;0;Create;True;0;0;0;False;0;False;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;558;-2173.969,3267.794;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;50;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1064;-1972.347,3176.176;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1468.267,3528.274;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;543;-1893.857,3496.263;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1716.005,3553.261;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-1904.005,3649.261;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;561;-1222.536,3531.06;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;-1092.339,3526.101;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;567;-2189.903,3616.509;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;45;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-1451.127,3648.094;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2136.346,3541.493;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;-2151.241,3465.534;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1588.848,3723.818;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;575;-1837.265,3851.717;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;46;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1061;-1730.394,3730.706;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1062;-1894.851,3724.297;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1052;-2045.206,3777.13;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1051;-2210.205,3787.13;Inherit;False;1047;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;553;-2226.398,3703.885;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1063;-2179.036,3876.336;Inherit;False;Property;_RimAttenuation2;RimAttenuation2;47;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;887;595.5606,2760.589;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;648;-1440.009,-2263.777;Inherit;False;VertexColorShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;382;-2133.561,-2289.607;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;647;-1749.534,-2226.337;Inherit;False;Property;_UseShadowMaskVertexColorA;Use ShadowMask (VertexColorA);5;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexToFragmentNode;1079;-1969.458,-2199.541;Inherit;False;False;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1042;-2129.081,-2511.899;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1043;-2145.585,-2417.273;Inherit;False;1039;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1045;-1886.901,-2443.926;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1041;-2118.851,-2643.019;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1044;-1885.476,-2541.09;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1046;-1755.701,-2494.695;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;25;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;339;-1029.063,-2621.996;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;338;-1166.049,-2618.98;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;337;-1285.538,-2614.533;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;335;-1425.74,-2615.367;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1533.412,-2357.923;Inherit;False;Property;_ShadowFeather;ShadowFeather;23;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-1714.228,-2721.098;Inherit;False;Property;_ShadowStep;ShadowStep;22;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1080;-1668.918,-2618.615;Inherit;False;Property;_OnlyPaintedShadow;Only Painted Shadow;21;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1015;390.837,2158.612;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0.5;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1019;-423.5259,2102.056;Inherit;False;618;output_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;930;-351.0211,2317.674;Inherit;False;Global;_GrabScreen0;Grab Screen 0;68;0;Create;True;0;0;0;False;0;False;Object;-1;False;False;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;890;97.14598,2211.419;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.OneMinusNode;1022;-222.3537,2227.064;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1023;-75.20861,2226.848;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1024;-146.3012,2113.328;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1026;60.7384,2223.036;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1027;61.88525,2131.303;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1025;209.1617,2156.139;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1016;102.776,2393.755;Inherit;False;Property;_MaskClipValue;Mask Clip Value;1;0;Create;True;0;0;0;False;0;False;0.1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1017;144.6532,2305.947;Inherit;False;646;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;898;-362.0104,2186.377;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;871;-551.1498,2185.11;Inherit;False;646;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;877;-629.1466,2271.084;Inherit;False;Property;_Opacity;Opacity;0;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;888;659.9625,2155.091;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/BaseTransparentArea;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;True;2;False;0;True;True;0;5;False;;10;False;;0;5;False;;10;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;False;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;889;659.9625,2267.091;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1090;-3791.618,-41.46008;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1091;-3168.618,-39.46008;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1092;-2969.15,380.8686;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1093;-2976.178,1035.36;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;998;-3001.506,1945.413;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1070;-2687.559,1944.815;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1071;-2888.653,2008.581;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1072;-2947.399,2087.632;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;92;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-2541.688,1938.051;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;999;-2822.844,2410.832;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;94;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1000;-2549.273,2409.767;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1075;-2824.554,2323.402;Inherit;False;Property;_DiffuseLightFactor;DiffuseLightFactor;93;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1076;-2551.799,2322.395;Inherit;False;DiffuseLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1033;-3456.973,1585.093;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;27;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1032;-3762.584,1801.094;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1034;-3742.979,1553.583;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;773;-4207.037,1598.99;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;825;-4265.184,1723.523;Inherit;False;Property;_MinDirectLight;MinDirectLight;85;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-3486.944,1804.34;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;86;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1081;-3953.91,1634.033;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1082;-3137.823,1749.044;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1028;-4402.323,1821.714;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;1029;-4226.641,1888.953;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1031;-4230.609,1804.241;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1030;-4018.164,1884.994;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;26;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1047;-4000.46,1801.256;Inherit;False;RimAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-3521.036,2403.502;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;91;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3538.192,2312.546;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;90;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1083;-3238.412,2203.248;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1084;-3109.711,2243.548;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1095;-3533.014,2089.476;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1101;-3747.49,2018.144;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1104;-4116.377,2017.833;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;-3831.485,2402.249;Inherit;False;Property;_IndirectBiasSampleRate;Indirect Bias Sample Rate;89;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1106;-4378.26,2264.093;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1107;-4227.252,2262.093;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1108;-4061.307,2308.951;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1109;-3902.741,2307.903;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;1105;-4646.295,2248.998;Inherit;False;Property;_IndirectLightBiasSample2;Indirect Light Bias Sample2;88;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1103;-3916.992,2015.564;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1097;-4373.406,2095.362;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1098;-4222.398,2093.362;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1102;-4056.454,2140.221;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode;1099;-3897.888,2139.174;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;1096;-4645.588,2074.74;Inherit;False;Property;_IndirectLightBiasSample1;Indirect Light Bias Sample1;87;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMaxOpNode;1110;-3695.926,2137.932;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1036;-5423.398,2189.94;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1037;-5286.7,2220.995;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1039;-4920.324,2171.169;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1078;-5232.87,2144.736;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1077;-5080.939,2169.392;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1035;-5633.458,2189.889;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1038;-5475.003,2287.882;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-5595.584,1891.44;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;779;-5386.045,1933.903;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-5426.305,2049.35;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-5258.718,1958.118;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-5056.997,1957.822;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-5269.599,1884.016;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1094;-5590.952,1968.662;Inherit;False;1087;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-5073.74,1660.204;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-5623.085,1710.757;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Compare;800;-5241.769,1660.861;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-5401.7,1654.205;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;798;-5397.892,1779.819;Inherit;False;return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz)@;3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2746.134,-1264.124;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;350;-2542.337,-1482.269;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;355;-2735.717,-1365.174;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;559;-2752.483,-1485.411;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;53;0;Create;True;0;0;0;False;1;Header(Metal);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;938;-2749.976,-1043.269;Inherit;False;DynEmi;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;939;-2743.981,-841.6815;Inherit;False;DynEmiMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;620;-2741.393,-635.0084;Inherit;False;dirt;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;68;-3052.101,-1264.431;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];73;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;940;-3054.309,-1046.45;Inherit;True;Property;_DynamicEmmisive_dyn_emi;DynamicEmmisive (_dyn_emi);76;0;Create;True;0;0;0;False;1;NoScaleOffset;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;941;-3062.377,-844.6691;Inherit;True;Property;_DynamicEmmisiveMask_dyn_emi_mask;DynamicEmmisiveMask (_dyn_emi_mask);77;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;401;-3044.941,-634.353;Inherit;True;Property;_DirtTex;DirtTex;66;1;[Header];Create;True;1;Dirt;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;67;-3062.873,-1523.24;Inherit;True;Property;_CtrlTex;OptionMaskMap (_ctrl);32;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;436;-2729.841,-1765.838;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;646;-2728.531,-1679.858;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-2727.948,-1854.605;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;959;-2533.484,-1588.84;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;960;-2759.784,-1591.14;Inherit;False;Property;_Use_ReflectionMask;Use_ReflectionMask;57;0;Create;True;0;0;0;False;1;Header(Reflection);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1087;-2586.004,-2012.474;Inherit;False;WorldNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1088;-2770.191,-2010.229;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;66;-3062.877,-1820.369;Inherit;True;Property;_BaseTex;TripleMaskMap (_base);28;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1112;-2743.699,-2203.065;Inherit;False;AreaMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;64;-3050.846,-2608.742;Inherit;True;Property;_MainTex;Diffuse Map (_diff);2;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;65;-3052.825,-2401.955;Inherit;True;Property;_ShadTex;Shaded Diffuse (_shad_c);4;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1115;-661.9083,-2915.929;Inherit;False;2856.082;1701.917;;48;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;1150;1149;1148;1147;1146;1145;1144;1143;1142;1141;1140;1139;1138;1137;1136;1135;1134;1133;1132;1131;1130;1129;1128;1127;1126;1125;1124;1123;1122;1121;1120;1119;1118;1117;1116;Area Color Control;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1116;-241.4751,-2782.249;Inherit;False;AreaG;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1117;-397.0155,-2804.319;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;1118;-584.518,-2804.869;Inherit;False;1112;AreaMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1119;-346.7111,-2427.496;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1120;-342.1042,-2601.212;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1121;-585.5283,-2603.676;Inherit;False;1161;AreaR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1122;-596.542,-2169.863;Inherit;False;1116;AreaG;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1123;-355.7198,-1994.068;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1124;-351.1128,-2167.783;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1125;-611.068,-2346.833;Inherit;False;Property;_DiffuseColorAreaR2;DiffuseColor AreaR2;10;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1126;-611.9083,-2526.126;Inherit;False;Property;_DiffuseColorAreaR1;DiffuseColor AreaR1;8;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1127;-604.423,-2078.223;Inherit;False;Property;_DiffuseColorAreaG1;DiffuseColor AreaG1;12;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1128;-603.5828,-1898.93;Inherit;False;Property;_DiffuseColorAreaG2;DiffuseColor AreaG2;14;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1129;-581.1437,-1723.648;Inherit;False;1160;AreaB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1130;-346.2196,-1723.284;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1131;-352.3558,-1561.804;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1132;-600.0098,-1633.981;Inherit;False;Property;_DiffuseColorAreaB1;DiffuseColor AreaB1;16;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1133;-599.1696,-1454.688;Inherit;False;Property;_DiffuseColorAreaB2;DiffuseColor AreaB2;18;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1134;-68.33864,-2143.438;Inherit;False;6;6;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ComponentMaskNode;1135;62.89145,-2043.3;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1136;270.0849,-2042.463;Inherit;False;area_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1137;476.5924,-2174.844;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1138;152.1662,-2153.568;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1139;-32.47579,-2249.519;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1140;1162.373,-2395.819;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1141;1166.981,-2569.534;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1142;923.556,-2571.999;Inherit;False;1161;AreaR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1143;912.5423,-2138.186;Inherit;False;1116;AreaG;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1144;1153.365,-1962.39;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1145;1157.972,-2136.105;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1146;927.9406,-1691.972;Inherit;False;1160;AreaB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1147;1162.865,-1691.608;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1148;1156.729,-1530.128;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1149;897.1761,-2494.448;Inherit;False;Property;_ShadeColorAreaR1;ShadeColor AreaR1;9;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1150;898.0163,-2315.156;Inherit;False;Property;_ShadeColorAreaR2;ShadeColor AreaR2;11;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1151;904.6612,-2046.545;Inherit;False;Property;_ShadeColorAreaG1;ShadeColor AreaG1;13;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1152;905.5015,-1867.253;Inherit;False;Property;_ShadeColorAreaG2;ShadeColor AreaG2;15;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1153;909.0745,-1602.305;Inherit;False;Property;_ShadeColorAreaB1;ShadeColor AreaB1;17;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1154;909.9145,-1423.012;Inherit;False;Property;_ShadeColorAreaB2;ShadeColor AreaB2;19;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1155;1467.851,-2106.432;Inherit;False;6;6;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1156;1588.889,-1995.836;Inherit;False;1136;area_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1157;1445.324,-2197.072;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1158;1612.711,-2099.569;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1159;1799.488,-2150.533;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1160;-236.515,-2696.328;Inherit;False;AreaB;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1161;-244.1151,-2865.929;Inherit;False;AreaR;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;349;-1374.129,-3309.551;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2740.346,-2601.335;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;330;-2730.146,-2386.222;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1162;622.4427,-2173.447;Inherit;False;diff_area;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1163;1952.174,-2143.679;Inherit;False;shad_area;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1086;-3059.554,-2015.031;Inherit;True;Property;_BumpMap;Normal Map;20;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1113;-3053.414,-2206.615;Inherit;True;Property;_AreaTex;Area Map (_area);7;0;Create;False;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
WireConnection;319;0;315;0
WireConnection;322;0;319;0
WireConnection;636;0;322;0
WireConnection;580;0;621;0
WireConnection;580;1;579;0
WireConnection;582;0;580;0
WireConnection;587;0;584;0
WireConnection;587;1;582;1
WireConnection;588;0;582;2
WireConnection;588;1;585;0
WireConnection;586;0;583;0
WireConnection;586;1;582;0
WireConnection;589;0;586;0
WireConnection;589;1;587;0
WireConnection;589;2;588;0
WireConnection;590;0;589;0
WireConnection;592;0;591;0
WireConnection;593;0;592;0
WireConnection;593;1;592;1
WireConnection;593;2;592;2
WireConnection;594;1;593;0
WireConnection;594;2;595;0
WireConnection;594;3;596;0
WireConnection;597;0;598;0
WireConnection;597;1;594;0
WireConnection;597;2;599;0
WireConnection;601;0;597;0
WireConnection;542;0;532;0
WireConnection;481;0;486;0
WireConnection;481;1;473;0
WireConnection;481;2;477;0
WireConnection;489;0;478;0
WireConnection;490;0;492;0
WireConnection;490;1;475;0
WireConnection;490;2;478;0
WireConnection;487;0;489;0
WireConnection;485;0;484;0
WireConnection;485;1;465;0
WireConnection;488;0;487;0
WireConnection;488;1;482;0
WireConnection;491;0;490;0
WireConnection;491;1;488;0
WireConnection;463;0;491;0
WireConnection;463;1;1092;0
WireConnection;484;0;483;0
WireConnection;482;0;481;0
WireConnection;482;1;485;0
WireConnection;483;0;477;0
WireConnection;493;0;463;0
WireConnection;129;0;128;0
WireConnection;129;1;1090;0
WireConnection;136;0;129;0
WireConnection;518;0;520;0
WireConnection;518;1;1091;0
WireConnection;495;0;496;0
WireConnection;495;1;510;0
WireConnection;495;2;512;0
WireConnection;497;0;511;0
WireConnection;498;0;499;0
WireConnection;498;1;502;0
WireConnection;498;2;511;0
WireConnection;500;0;497;0
WireConnection;501;0;507;0
WireConnection;501;1;494;0
WireConnection;503;0;500;0
WireConnection;503;1;508;0
WireConnection;504;0;498;0
WireConnection;504;1;503;0
WireConnection;505;0;504;0
WireConnection;505;1;1093;0
WireConnection;507;0;509;0
WireConnection;508;0;495;0
WireConnection;508;1;501;0
WireConnection;509;0;512;0
WireConnection;513;0;505;0
WireConnection;840;0;531;0
WireConnection;852;0;530;0
WireConnection;623;0;636;0
WireConnection;449;0;448;0
WireConnection;449;1;527;0
WireConnection;450;0;449;0
WireConnection;450;1;451;0
WireConnection;528;1;450;0
WireConnection;532;0;533;0
WireConnection;532;1;535;0
WireConnection;532;2;840;0
WireConnection;535;0;533;0
WireConnection;535;1;528;0
WireConnection;535;2;878;0
WireConnection;878;0;537;0
WireConnection;531;0;852;0
WireConnection;531;1;529;0
WireConnection;432;0;624;0
WireConnection;433;0;432;0
WireConnection;428;0;429;0
WireConnection;430;0;428;0
WireConnection;430;1;433;0
WireConnection;435;0;434;0
WireConnection;435;1;437;0
WireConnection;435;2;879;0
WireConnection;438;0;435;0
WireConnection;434;0;430;0
WireConnection;879;0;880;0
WireConnection;539;0;442;0
WireConnection;944;1;945;0
WireConnection;945;0;946;0
WireConnection;945;1;949;0
WireConnection;946;0;948;0
WireConnection;946;1;950;0
WireConnection;949;0;950;0
WireConnection;949;1;947;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;929;0
WireConnection;608;0;607;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;952;0;951;0
WireConnection;953;0;952;0
WireConnection;953;1;954;0
WireConnection;953;2;955;0
WireConnection;953;3;956;0
WireConnection;953;4;957;0
WireConnection;965;0;964;0
WireConnection;965;1;963;0
WireConnection;966;0;965;0
WireConnection;966;1;967;0
WireConnection;968;0;990;1
WireConnection;968;1;987;0
WireConnection;970;0;991;0
WireConnection;971;0;972;0
WireConnection;972;0;973;0
WireConnection;972;1;979;0
WireConnection;972;2;986;0
WireConnection;978;0;973;0
WireConnection;978;1;977;0
WireConnection;979;0;978;0
WireConnection;979;1;980;0
WireConnection;980;0;982;0
WireConnection;980;1;981;0
WireConnection;983;0;985;0
WireConnection;983;1;984;0
WireConnection;986;0;983;0
WireConnection;989;0;992;0
WireConnection;989;1;988;0
WireConnection;991;0;969;0
WireConnection;991;2;968;0
WireConnection;992;0;990;2
WireConnection;992;1;993;0
WireConnection;992;2;974;0
WireConnection;993;0;976;0
WireConnection;990;1;966;0
WireConnection;521;0;518;0
WireConnection;975;0;989;0
WireConnection;387;0;375;0
WireConnection;387;1;386;0
WireConnection;394;0;375;0
WireConnection;394;1;386;0
WireConnection;381;1;375;4
WireConnection;381;2;387;0
WireConnection;381;3;394;0
WireConnection;405;0;393;0
WireConnection;405;1;381;0
WireConnection;405;2;392;0
WireConnection;371;0;647;0
WireConnection;371;2;366;0
WireConnection;371;3;372;0
WireConnection;369;0;364;0
WireConnection;369;1;365;0
WireConnection;366;1;364;4
WireConnection;366;2;368;0
WireConnection;366;3;369;0
WireConnection;368;0;364;0
WireConnection;368;1;365;0
WireConnection;370;0;371;0
WireConnection;399;0;383;0
WireConnection;383;0;649;0
WireConnection;383;2;405;0
WireConnection;383;3;393;0
WireConnection;1005;0;340;0
WireConnection;1005;1;420;0
WireConnection;342;0;340;0
WireConnection;342;1;420;0
WireConnection;342;2;343;0
WireConnection;1004;0;1005;0
WireConnection;1004;1;342;0
WireConnection;1004;2;1001;0
WireConnection;344;0;1004;0
WireConnection;919;0;346;0
WireConnection;919;1;347;0
WireConnection;1002;0;346;0
WireConnection;1002;1;919;0
WireConnection;1002;2;1003;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;1009;0;442;0
WireConnection;1009;1;441;0
WireConnection;440;0;1008;0
WireConnection;440;1;439;0
WireConnection;445;0;440;0
WireConnection;1008;0;1009;0
WireConnection;1008;1;444;0
WireConnection;1008;2;1007;0
WireConnection;612;0;606;0
WireConnection;606;0;1011;0
WireConnection;606;1;610;0
WireConnection;606;2;953;0
WireConnection;1013;0;602;0
WireConnection;1013;1;605;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;603;0
WireConnection;1011;0;1013;0
WireConnection;1011;1;604;0
WireConnection;1011;2;1012;0
WireConnection;410;0;409;0
WireConnection;410;1;421;0
WireConnection;411;0;410;0
WireConnection;411;1;412;0
WireConnection;413;0;411;0
WireConnection;423;0;413;0
WireConnection;424;0;426;4
WireConnection;424;1;423;0
WireConnection;424;2;425;0
WireConnection;427;0;424;0
WireConnection;540;0;426;0
WireConnection;452;0;457;0
WireConnection;452;1;456;0
WireConnection;453;0;452;0
WireConnection;453;1;455;0
WireConnection;454;0;453;0
WireConnection;458;0;454;0
WireConnection;461;0;460;4
WireConnection;461;1;458;0
WireConnection;461;2;459;0
WireConnection;462;0;461;0
WireConnection;541;0;460;0
WireConnection;359;0;354;0
WireConnection;359;1;358;0
WireConnection;564;0;569;0
WireConnection;564;1;568;0
WireConnection;564;2;546;0
WireConnection;565;0;564;0
WireConnection;565;1;566;0
WireConnection;570;0;560;0
WireConnection;570;1;563;0
WireConnection;563;0;572;0
WireConnection;563;1;565;0
WireConnection;563;2;1066;0
WireConnection;562;0;570;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
WireConnection;360;0;359;0
WireConnection;578;0;563;0
WireConnection;354;1;357;0
WireConnection;572;0;1060;0
WireConnection;572;1;556;0
WireConnection;1058;0;573;0
WireConnection;1058;1;1049;0
WireConnection;1058;2;1059;0
WireConnection;1049;0;573;0
WireConnection;1049;1;1048;0
WireConnection;1060;0;1058;0
WireConnection;1065;0;1064;0
WireConnection;1065;1;558;0
WireConnection;1065;2;1067;0
WireConnection;1066;0;1065;0
WireConnection;1066;1;1068;0
WireConnection;557;0;1066;0
WireConnection;557;1;547;0
WireConnection;557;2;555;0
WireConnection;543;0;545;0
WireConnection;543;1;544;0
WireConnection;543;2;567;0
WireConnection;547;0;543;0
WireConnection;547;1;548;0
WireConnection;561;0;557;0
WireConnection;561;1;576;0
WireConnection;577;0;561;0
WireConnection;555;0;1061;0
WireConnection;555;1;575;0
WireConnection;1061;0;1062;0
WireConnection;1062;0;553;0
WireConnection;1062;1;1052;0
WireConnection;1062;2;1063;0
WireConnection;1052;0;553;0
WireConnection;1052;1;1051;0
WireConnection;648;0;647;0
WireConnection;647;1;1079;0
WireConnection;1079;0;382;4
WireConnection;1045;0;1041;0
WireConnection;1045;1;1042;0
WireConnection;1045;2;1043;0
WireConnection;1044;0;1041;0
WireConnection;1044;1;1042;0
WireConnection;1046;0;1044;0
WireConnection;1046;1;1045;0
WireConnection;339;0;338;0
WireConnection;338;0;337;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;335;0;334;0
WireConnection;335;1;1080;0
WireConnection;1080;0;1046;0
WireConnection;1080;1;1041;0
WireConnection;1015;0;1025;0
WireConnection;1015;1;1017;0
WireConnection;1015;2;1016;0
WireConnection;1022;0;898;0
WireConnection;1023;0;1022;0
WireConnection;1023;1;930;0
WireConnection;1024;0;1019;0
WireConnection;1024;1;898;0
WireConnection;1026;0;1023;0
WireConnection;1027;0;1024;0
WireConnection;1025;0;1027;0
WireConnection;1025;1;1026;0
WireConnection;898;0;871;0
WireConnection;898;1;877;0
WireConnection;888;0;1015;0
WireConnection;998;0;1082;0
WireConnection;998;1;1084;0
WireConnection;1070;0;998;0
WireConnection;1070;1;1071;0
WireConnection;1070;2;1072;0
WireConnection;1071;0;998;0
WireConnection;208;0;1070;0
WireConnection;1000;0;999;0
WireConnection;1076;0;1075;0
WireConnection;1033;0;1032;0
WireConnection;1033;1;1034;0
WireConnection;1032;0;1081;0
WireConnection;1032;1;1030;0
WireConnection;1034;1;1081;0
WireConnection;1034;0;1032;0
WireConnection;1081;0;773;1
WireConnection;1081;1;825;0
WireConnection;1082;0;1033;0
WireConnection;1082;1;826;0
WireConnection;1031;0;1028;0
WireConnection;1030;0;1031;0
WireConnection;1030;1;1029;0
WireConnection;1047;0;1031;0
WireConnection;1083;0;1095;0
WireConnection;1083;1;303;0
WireConnection;1084;0;1083;0
WireConnection;1084;1;301;0
WireConnection;1095;0;1101;0
WireConnection;1095;1;1110;0
WireConnection;1095;2;1100;0
WireConnection;1101;0;1103;0
WireConnection;1106;0;1105;1
WireConnection;1106;1;1105;2
WireConnection;1106;2;1105;3
WireConnection;1107;0;1106;0
WireConnection;1108;0;1107;0
WireConnection;1108;3;1105;4
WireConnection;1109;0;1108;0
WireConnection;1103;0;1104;0
WireConnection;1097;0;1096;1
WireConnection;1097;1;1096;2
WireConnection;1097;2;1096;3
WireConnection;1098;0;1097;0
WireConnection;1102;0;1098;0
WireConnection;1102;3;1096;4
WireConnection;1099;0;1102;0
WireConnection;1110;0;1099;0
WireConnection;1110;1;1109;0
WireConnection;1036;0;1035;0
WireConnection;1037;0;1036;0
WireConnection;1037;1;1038;0
WireConnection;1037;2;1038;0
WireConnection;1039;0;1077;0
WireConnection;1077;0;1078;0
WireConnection;1077;2;1037;0
WireConnection;779;0;802;0
WireConnection;779;1;1094;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;781;0;776;0
WireConnection;552;0;779;0
WireConnection;801;0;800;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;600;0;68;0
WireConnection;350;0;559;0
WireConnection;355;0;67;3
WireConnection;559;1;67;2
WireConnection;938;0;940;0
WireConnection;939;0;941;0
WireConnection;620;0;401;0
WireConnection;940;1;944;0
WireConnection;436;0;66;2
WireConnection;646;0;66;3
WireConnection;408;0;66;1
WireConnection;959;0;960;0
WireConnection;960;1;67;1
WireConnection;1087;0;1088;0
WireConnection;1088;0;1086;0
WireConnection;1112;0;1113;0
WireConnection;1116;0;1117;1
WireConnection;1117;0;1118;0
WireConnection;1119;0;1121;0
WireConnection;1119;2;1125;0
WireConnection;1120;0;1121;0
WireConnection;1120;2;1126;0
WireConnection;1123;0;1122;0
WireConnection;1123;2;1128;0
WireConnection;1124;0;1122;0
WireConnection;1124;2;1127;0
WireConnection;1130;0;1129;0
WireConnection;1130;2;1132;0
WireConnection;1131;0;1129;0
WireConnection;1131;2;1133;0
WireConnection;1134;0;1120;0
WireConnection;1134;1;1119;0
WireConnection;1134;2;1124;0
WireConnection;1134;3;1123;0
WireConnection;1134;4;1130;0
WireConnection;1134;5;1131;0
WireConnection;1135;0;1134;0
WireConnection;1136;0;1135;0
WireConnection;1137;0;1139;0
WireConnection;1137;1;1138;0
WireConnection;1137;2;1136;0
WireConnection;1138;0;1139;0
WireConnection;1138;1;1134;0
WireConnection;1140;0;1142;0
WireConnection;1140;2;1150;0
WireConnection;1141;0;1142;0
WireConnection;1141;2;1149;0
WireConnection;1144;0;1143;0
WireConnection;1144;2;1152;0
WireConnection;1145;0;1143;0
WireConnection;1145;2;1151;0
WireConnection;1147;0;1146;0
WireConnection;1147;2;1153;0
WireConnection;1148;0;1146;0
WireConnection;1148;2;1154;0
WireConnection;1155;0;1141;0
WireConnection;1155;1;1140;0
WireConnection;1155;2;1145;0
WireConnection;1155;3;1144;0
WireConnection;1155;4;1147;0
WireConnection;1155;5;1148;0
WireConnection;1158;0;1157;0
WireConnection;1158;1;1155;0
WireConnection;1159;0;1157;0
WireConnection;1159;1;1158;0
WireConnection;1159;2;1156;0
WireConnection;1160;0;1117;2
WireConnection;1161;0;1117;0
WireConnection;349;0;1002;0
WireConnection;345;0;64;0
WireConnection;330;0;65;0
WireConnection;1162;0;1137;0
WireConnection;1163;0;1159;0
ASEEND*/
//CHKSM=E9A053B094784B77C6835BD18ADD81737A4F0EAC