// Made with Amplify Shader Editor v1.9.9.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/BaseArea"
{
	Properties
	{
		[Header(Diffuse)] _MainTex( "Diffuse Map (_diff)", 2D ) = "white" {}
		[HDR] _ToonBrightColor( "ToonBrightColor", Color ) = ( 1, 1, 1, 0 )
		[Header(Shadow)] _ShadTex( "Shaded Diffuse (_shad_c)", 2D ) = "white" {}
		[Toggle] _UseShadowMaskVertexColorA( "Use ShadowMask (VertexColorA)", Float ) = 0
		[HDR] _ToonDarkColor( "ToonDarkColor", Color ) = ( 1, 1, 1, 0 )
		_AreaTex( "Area Map (_area)", 2D ) = "gray" {}
		_DiffuseColorAreaR1( "DiffuseColor AreaR1", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaR1( "ShadeColor AreaR1", Color ) = ( 0, 0, 0, 1 )
		_DiffuseColorAreaR2( "DiffuseColor AreaR2", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaR2( "ShadeColor AreaR2", Color ) = ( 0, 0, 0, 1 )
		_DiffuseColorAreaG1( "DiffuseColor AreaG1", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaG1( "ShadeColor AreaG1", Color ) = ( 0, 0, 0, 1 )
		_DiffuseColorAreaG2( "DiffuseColor AreaG2", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaG2( "ShadeColor AreaG2", Color ) = ( 0, 0, 0, 1 )
		_DiffuseColorAreaB1( "DiffuseColor AreaB1", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaB1( "ShadeColor AreaB1", Color ) = ( 0, 0, 0, 1 )
		_DiffuseColorAreaB2( "DiffuseColor AreaB2", Color ) = ( 0, 0, 0, 1 )
		_ShadeColorAreaB2( "ShadeColor AreaB2", Color ) = ( 0, 0, 0, 1 )
		_BumpMap( "Normal Map", 2D ) = "bump" {}
		[Toggle] _OnlyPaintedShadow( "Only Painted Shadow", Float ) = 0
		_ShadowStep( "ShadowStep", Range( 0, 1 ) ) = 0.3
		_ShadowFeather( "ShadowFeather", Range( 0, 1 ) ) = 0.01
		[HDR] _GlobalShadowColor( "GlobalShadowColor", Color ) = ( 1, 1, 1, 1 )
		[Toggle] _ReceiveShadowLerp( "ReceiveShadowLerp", Float ) = 1
		[Toggle] _ShadowinLightColor( "Shadow in LightColor", Float ) = 1
		[Toggle] _NoShadowinDirectionalLightColor( "NoShadow in DirectionalLightColor", Float ) = 1
		_BaseTex( "TripleMaskMap (_base)", 2D ) = "black" {}
		[HDR][Header(Specular)] _SpecularColor( "SpecularColor", Color ) = ( 1, 1, 1, 1 )
		_SpecularPower( "SpecularPower", Range( 0, 5 ) ) = 1.2
		_SpecularBias( "Specular Bias", Range( 0, 10 ) ) = 1
		_CtrlTex( "OptionMaskMap (_ctrl)", 2D ) = "black" {}
		[Header(Rim)][Toggle] _Use_DisRimMask( "Use_DisRimMask", Float ) = 1
		[HDR] _RimColor( "RimColor", Color ) = ( 1, 1, 1, 0.4 )
		_RimStep( "RimStep", Range( 0, 1 ) ) = 0.5
		_RimFeather( "RimFeather", Range( 0, 1 ) ) = 0.3
		_RimSpecRate( "RimSpecRate", Range( 0, 1 ) ) = 0.5
		_RimShadowRate( "RimShadowRate", Range( 0, 2 ) ) = 0
		_RimAttenuation( "RimAttenuation", Range( 0, 1 ) ) = 0
		_RimHorizonOffset( "RimHorizonOffset", Range( -1, 1 ) ) = 0
		_RimVerticalOffset( "RimVerticalOffset", Range( -1, 1 ) ) = 0
		[HDR] _RimColor2( "RimColor2", Color ) = ( 0, 0, 0, 0 )
		_RimStep2( "RimStep2", Range( 0, 1 ) ) = 0.5
		_RimFeather2( "RimFeather2", Range( 0, 1 ) ) = 0.3
		_RimSpecRate2( "RimSpecRate2", Range( 0, 1 ) ) = 0.5
		_RimShadowRate2( "RimShadowRate2", Range( 0, 2 ) ) = 0
		_RimAttenuation2( "RimAttenuation2", Range( 0, 1 ) ) = 0
		_RimHorizonOffset2( "RimHorizonOffset2", Range( -1, 1 ) ) = 0
		_RimVerticalOffset2( "RimVerticalOffset2", Range( -1, 1 ) ) = 0
		[HDR] _GlobalRimColor( "GlobalRimColor", Color ) = ( 1, 1, 1, 1 )
		_CustomRimLightColor( "CustomRimLightColor", Range( 0, 1 ) ) = 1
		_MinRimLightColor( "MinRimLightColor", Range( 0, 1 ) ) = 0.2
		[Header(Metal)][Toggle] _Use_MetalMask( "Use_MetalMask", Float ) = 1
		_EnvTex( "EnvironmentMap (_env)", 2D ) = "white" {}
		_MatcapLerp( "Matcap Lerp", Range( 0, 1 ) ) = 0
		_EnvRate( "EnvRate", Range( 0, 10 ) ) = 1
		_EnvBias( "EnvBias", Range( 0, 10 ) ) = 1
		[Header(Reflection)][Toggle] _Use_ReflectionMask( "Use_ReflectionMask", Float ) = 0
		_RflTex( "ReflectionMap (_rfl)", 2D ) = "black" {}
		[HDR] _ReflectionAddColor( "ReflectionAddColor", Color ) = ( 1, 1, 1, 0 )
		[HDR] _ReflectionMulColor( "ReflectionMulColor", Color ) = ( 1, 1, 1, 0 )
		_RflRate( "RflRate", Range( 0, 10 ) ) = 1
		_RflAddPowVal( "RflAddPowVal", Range( 0, 10 ) ) = 1
		_RflAddBias( "RflAddBias", Range( 0, 10 ) ) = 1
		_RflMulBias( "RflMulBias", Range( 0, 10 ) ) = 1
		_RflMulOffset( "RflMulOffset", Range( -1, 1 ) ) = 0.5
		[Header(Dirt)] _DirtTex( "DirtTex", 2D ) = "black" {}
		[HDR] _GlobalDirtColor( "GlobalDirtColor", Color ) = ( 1, 1, 1, 0 )
		[HDR] _GlobalDirtRimSpecularColor( "GlobalDirtRimSpecularColor", Color ) = ( 1, 1, 1, 0.4 )
		_DirtScale( "DirtScale", Range( 0, 1 ) ) = 0
		_DirtRateR( "DirtRateR", Range( 0, 1 ) ) = 1
		_DirtRateG( "DirtRateG", Range( 0, 1 ) ) = 1
		_DirtRateB( "DirtRateB", Range( 0, 1 ) ) = 1
		[Header(Emissive and Other)] _EmiTex( "Emissive (_emi) [optional]", 2D ) = "white" {}
		[HDR] _EmissiveColor( "EmissiveColor", Color ) = ( 1, 1, 1, 1 )
		_EmmisiveStrength( "EmmisiveStrength", Range( 0, 10 ) ) = 0
		[NoScaleOffset] _DynamicEmmisive_dyn_emi( "DynamicEmmisive (_dyn_emi)", 2D ) = "black" {}
		_DynamicEmmisiveMask_dyn_emi_mask( "DynamicEmmisiveMask (_dyn_emi_mask)", 2D ) = "black" {}
		[HDR] _DynEmissiveColor( "DynEmissiveColor", Color ) = ( 1, 1, 1, 1 )
		_DynEmiScrollX( "DynEmi ScrollX", Float ) = 0
		_DynEmiScrollY( "DynEmi ScrollY", Float ) = -1
		_DynEmmisiveStrength( "DynEmmisiveStrength", Range( 0, 10 ) ) = 0
		[HDR] _CharaColor( "CharaColor", Color ) = ( 1, 1, 1, 1 )
		_Saturation( "Saturation", Range( 0, 1 ) ) = 1
		[HDR] _UnsaturationColor( "UnsaturationColor", Color ) = ( 0.2117647, 0.7137255, 0.07058824, 0 )
		[Header(Light)] _MinDirectLight( "MinDirectLight", Range( 0, 1 ) ) = 0
		_MaxDirectLight( "MaxDirectLight", Range( 0, 2 ) ) = 1
		_IndirectLightBiasSample1( "Indirect Light Bias Sample1", Vector ) = ( 0, 0, 0, 1 )
		_IndirectLightBiasSample2( "Indirect Light Bias Sample2", Vector ) = ( 0, 1, 0, 1 )
		_IndirectBiasSampleRate( "Indirect Bias Sample Rate", Range( 0, 1 ) ) = 1
		_MinIndirectLight( "MinIndirectLight", Range( 0, 1 ) ) = 0.1
		_MaxIndirectLight( "MaxIndirectLight", Range( 0, 2 ) ) = 1
		_LightColorGrayScale( "LightColor GrayScale", Range( 0, 1 ) ) = 0
		_DiffuseLightFactor( "DiffuseLightFactor", Range( 0, 1 ) ) = 0
		_GlobalLightFactor( "GlobalLightFactor", Range( 0, 1 ) ) = 1
		[Header(Outline)][Toggle] _Outline( "Outline", Float ) = 0
		_OutlineClip( "OutlineClip", Range( 0, 1 ) ) = 0.5
		[Toggle] _UseOutlineMaskVertexColorG( "Use OutlineMask (VertexColorG)", Float ) = 0
		[HDR] _OutlineColor( "OutlineColor", Color ) = ( 0, 0, 0, 0 )
		[Toggle] _MixDiffuseinOutlineColor( "Mix Diffuse in OutlineColor", Float ) = 0
		_OutlineLightColor( "OutlineLightColor", Range( 0, 1 ) ) = 1
		_OutlineWidth( "OutlineWidth", Float ) = 0
		[Toggle] _UseOutlineWidthMaskVertexColorR( "Use OutlineWidthMask (VertexColorR)", Float ) = 0
		[Toggle] _OutlineDistanceAdjust( "Outline Distance Adjust", Float ) = 0
		_MinDistance( "MinDistance", Float ) = 1
		_MaxDistance( "MaxDistance", Float ) = 2
		_MinDistanceRemap( "MinDistanceRemap", Float ) = 1
		_MaxDistanceRemap( "MaxDistanceRemap", Float ) = 10
		[Toggle] _OutlineZPushAdjust( "Outline ZPush Adjust", Float ) = 0
		_OutlineZPush( "Outline ZPush", Float ) = -0.001
		[Header(Stencil Buffer)] _StencilReference( "Stencil Reference", Range( 0, 255 ) ) = 0
		_StencilReadMask( "Stencil ReadMask", Range( 0, 255 ) ) = 255
		_StencilWriteMask( "Stencil WriteMask", Range( 0, 255 ) ) = 255
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilComparison( "Stencil Comparison", Float ) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilPassFront( "Stencil PassFront", Float ) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFailFront( "Stencil FailFront", Float ) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailFront( "Stencil ZFailFront", Float ) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _CullMode( "Cull Mode", Float ) = 2
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
			Name "ExtraPrePass"
			Tags { "LightMode"="ForwardBase" }

			Blend One Zero
			Cull Front
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			

			CGPROGRAM
			#define ASE_VERSION 19901

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"
			#ifndef UNITY_INSTANCED_LOD_FADE
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#ifndef UNITY_INSTANCED_SH
				#define UNITY_INSTANCED_SH
			#endif
			#ifndef UNITY_INSTANCED_LIGHTMAPSTS
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_SHADOW_COORDS(9)
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform float _StencilZFailFront;
			uniform float _StencilComparison;
			uniform float _StencilPassFront;
			uniform float _StencilFailFront;
			uniform float _StencilWriteMask;
			uniform float _StencilReadMask;
			uniform float _StencilReference;
			uniform float _CullMode;
			uniform float _UseOutlineWidthMaskVertexColorR;
			uniform float _OutlineWidth;
			uniform float _OutlineDistanceAdjust;
			uniform float _MinDistance;
			uniform float _MaxDistance;
			uniform float _MinDistanceRemap;
			uniform float _MaxDistanceRemap;
			uniform float _OutlineZPushAdjust;
			uniform float _OutlineZPush;
			uniform float _MixDiffuseinOutlineColor;
			uniform float4 _OutlineColor;
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
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _OutlineLightColor;
			uniform float _Outline;
			uniform float _UseOutlineMaskVertexColorG;
			uniform float _OutlineClip;


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
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float OutlineWidth740 = ( (( _UseOutlineWidthMaskVertexColorR )?( v.ase_color.r ):( 1.0 )) * ( _OutlineWidth * 0.01 ) );
				float4 unityObjectToClipPos1105 = UnityObjectToClipPos( v.vertex.xyz );
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float4 transform748 = mul(unity_WorldToObject,float4( ase_viewDirWS , 0.0 ));
				
				o.ase_texcoord8.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = ( float4( ( OutlineWidth740 * v.normal * (( _OutlineDistanceAdjust )?(  (_MinDistanceRemap + ( saturate(  (0.0 + ( unityObjectToClipPos1105.w - _MinDistance ) * ( 1.0 - 0.0 ) / ( _MaxDistance - _MinDistance ) ) ) - 0.0 ) * ( _MaxDistanceRemap - _MinDistanceRemap ) / ( 1.0 - 0.0 ) ) ):( 1.0 )) ) , 0.0 ) + (( _OutlineZPushAdjust )?( ( transform748 * _OutlineZPush ) ):( float4( 0,0,0,0 ) )) ).xyz;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif

				float2 uv_MainTex = IN.ase_texcoord8.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = IN.ase_texcoord8.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1166 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1171 = AreaMap1166;
				float AreaR1217 = break1171.r;
				float AreaG1170 = break1171.g;
				float AreaB1216 = break1171.b;
				float4 temp_output_1188_0 = ( ( AreaR1217 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1190 = (temp_output_1188_0).a;
				float4 lerpResult1191 = lerp( diff345 , ( diff345 * temp_output_1188_0 ) , area_lerp1190);
				float4 diff_area1192 = lerpResult1191;
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1029 = worldPos;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION( ase_atten, IN, worldPos )
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float2 uv_BumpMap = IN.ase_texcoord8.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal1143 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1143 = normalize( float3( dot( tanToWorld0, tanNormal1143 ), dot( tanToWorld1, tanNormal1143 ), dot( tanToWorld2, tanNormal1143 ) ) );
				float3 WorldNormal1142 = worldNormal1143;
				float4 appendResult1158 = (float4(WorldNormal1142 , 1.0));
				float4 Normal1127 = appendResult1158;
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 appendResult1154 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1153 = ASESafeNormalize( appendResult1154 );
				float4 appendResult1156 = (float4(normalizeResult1153 , _IndirectLightBiasSample1.w));
				float4 Normal1152 = appendResult1156;
				float3 localShadeSH9out1152 = ShadeSH9out( Normal1152 );
				float3 appendResult1160 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1161 = ASESafeNormalize( appendResult1160 );
				float4 appendResult1162 = (float4(normalizeResult1161 , _IndirectLightBiasSample2.w));
				float4 Normal1163 = appendResult1162;
				float3 localShadeSH9out1163 = ShadeSH9out( Normal1163 );
				float3 lerpResult1155 = lerp( localShadeSH9out1127 , max( localShadeSH9out1152 , localShadeSH9out1163 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( lerpResult1155 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot( temp_output_1005_0, float3( 0.299, 0.587, 0.114 ) );
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1137 = lerp( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff_area1192 ) ):( _OutlineColor )) , ( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff_area1192 ) ):( _OutlineColor )) * float4( LightColor208 , 0.0 ) ) , _OutlineLightColor);
				clip( (( _Outline )?( (( _UseOutlineMaskVertexColorG )?( IN.ase_color.g ):( 1.0 )) ):( 0.0 )) - _OutlineClip);
				
				float3 Color = lerpResult1137.rgb;
				float Alpha = 1;

				float4 c = float4( Color, Alpha );

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
		}
		
		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			BlendOp Add, Add
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
			#define ASE_VERSION 19901

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
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0

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
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
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
			uniform float _MatcapLerp;
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
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1220( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
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
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord4.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord5.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord6.xyz = ase_bitangentWS;
				float vertexToFrag1125 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1125;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
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
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_positionWS = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_positionWS;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION( ase_atten, i, ase_positionWS )
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float2 uv_BumpMap = i.ase_texcoord3.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_tangentWS = i.ase_texcoord4.xyz;
				float3 ase_normalWS = i.ase_texcoord5.xyz;
				float3 ase_bitangentWS = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal1143 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1143 = normalize( float3( dot( tanToWorld0, tanNormal1143 ), dot( tanToWorld1, tanNormal1143 ), dot( tanToWorld2, tanNormal1143 ) ) );
				float3 WorldNormal1142 = worldNormal1143;
				float4 appendResult1158 = (float4(WorldNormal1142 , 1.0));
				float4 Normal1127 = appendResult1158;
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 appendResult1154 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1153 = ASESafeNormalize( appendResult1154 );
				float4 appendResult1156 = (float4(normalizeResult1153 , _IndirectLightBiasSample1.w));
				float4 Normal1152 = appendResult1156;
				float3 localShadeSH9out1152 = ShadeSH9out( Normal1152 );
				float3 appendResult1160 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1161 = ASESafeNormalize( appendResult1160 );
				float4 appendResult1162 = (float4(normalizeResult1161 , _IndirectLightBiasSample2.w));
				float4 Normal1163 = appendResult1162;
				float3 localShadeSH9out1163 = ShadeSH9out( Normal1163 );
				float3 lerpResult1155 = lerp( localShadeSH9out1127 , max( localShadeSH9out1152 , localShadeSH9out1163 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( lerpResult1155 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot( temp_output_1005_0, float3( 0.299, 0.587, 0.114 ) );
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( ase_positionWS );
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1142 );
				float LambertTerm552 = dotResult779;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_viewDirWS , WorldNormal1142 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 *  (0.0 + ( _SpecularBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1125 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord3.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1166 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1171 = AreaMap1166;
				float AreaR1217 = break1171.r;
				float AreaG1170 = break1171.g;
				float AreaB1216 = break1171.b;
				float4 temp_output_1188_0 = ( ( AreaR1217 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1190 = (temp_output_1188_0).a;
				float4 lerpResult1191 = lerp( diff345 , ( diff345 * temp_output_1188_0 ) , area_lerp1190);
				float4 diff_area1192 = lerpResult1191;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff_area1192 , ( diff_area1192 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1214 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1217 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1190);
				float4 shad_area1215 = lerpResult1214;
				float4 lerpResult1008 = lerp( ( shad_area1215 * _GlobalShadowColor ) , ( shad_area1215 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1142 , 0.0 ) ).xyz;
				float3 normal1220 = WorldNormal1142;
				float3 viewDir1220 = ase_viewDirWS;
				float2 localgetMatcapUVs1220 = getMatcapUVs1220( normal1220 , viewDir1220 );
				float2 matcapUV1221 = localgetMatcapUVs1220;
				float3 lerpResult1224 = lerp( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) , float3( matcapUV1221 ,  0.0 ) , _MatcapLerp);
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, lerpResult1224.xy ) *  (0.0 + ( _EnvBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) ) , saturate( (  (0.0 + ( _EnvRate - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_24 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_24 , Refined_diff612 , _Saturation);
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
			#define ASE_VERSION 19901

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
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0

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
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
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
			uniform float _MatcapLerp;
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
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1220( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
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
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord4.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord5.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord6.xyz = ase_bitangentWS;
				float vertexToFrag1125 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1125;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
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
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_positionWS = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_positionWS;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION( ase_atten, i, ase_positionWS )
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float2 uv_BumpMap = i.ase_texcoord3.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_tangentWS = i.ase_texcoord4.xyz;
				float3 ase_normalWS = i.ase_texcoord5.xyz;
				float3 ase_bitangentWS = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal1143 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1143 = normalize( float3( dot( tanToWorld0, tanNormal1143 ), dot( tanToWorld1, tanNormal1143 ), dot( tanToWorld2, tanNormal1143 ) ) );
				float3 WorldNormal1142 = worldNormal1143;
				float4 appendResult1158 = (float4(WorldNormal1142 , 1.0));
				float4 Normal1127 = appendResult1158;
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 appendResult1154 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1153 = ASESafeNormalize( appendResult1154 );
				float4 appendResult1156 = (float4(normalizeResult1153 , _IndirectLightBiasSample1.w));
				float4 Normal1152 = appendResult1156;
				float3 localShadeSH9out1152 = ShadeSH9out( Normal1152 );
				float3 appendResult1160 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1161 = ASESafeNormalize( appendResult1160 );
				float4 appendResult1162 = (float4(normalizeResult1161 , _IndirectLightBiasSample2.w));
				float4 Normal1163 = appendResult1162;
				float3 localShadeSH9out1163 = ShadeSH9out( Normal1163 );
				float3 lerpResult1155 = lerp( localShadeSH9out1127 , max( localShadeSH9out1152 , localShadeSH9out1163 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( lerpResult1155 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot( temp_output_1005_0, float3( 0.299, 0.587, 0.114 ) );
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( ase_positionWS );
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1142 );
				float LambertTerm552 = dotResult779;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_viewDirWS , WorldNormal1142 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 *  (0.0 + ( _SpecularBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1125 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord3.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1166 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1171 = AreaMap1166;
				float AreaR1217 = break1171.r;
				float AreaG1170 = break1171.g;
				float AreaB1216 = break1171.b;
				float4 temp_output_1188_0 = ( ( AreaR1217 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1190 = (temp_output_1188_0).a;
				float4 lerpResult1191 = lerp( diff345 , ( diff345 * temp_output_1188_0 ) , area_lerp1190);
				float4 diff_area1192 = lerpResult1191;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff_area1192 , ( diff_area1192 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1214 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1217 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1190);
				float4 shad_area1215 = lerpResult1214;
				float4 lerpResult1008 = lerp( ( shad_area1215 * _GlobalShadowColor ) , ( shad_area1215 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1142 , 0.0 ) ).xyz;
				float3 normal1220 = WorldNormal1142;
				float3 viewDir1220 = ase_viewDirWS;
				float2 localgetMatcapUVs1220 = getMatcapUVs1220( normal1220 , viewDir1220 );
				float2 matcapUV1221 = localgetMatcapUVs1220;
				float3 lerpResult1224 = lerp( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) , float3( matcapUV1221 ,  0.0 ) , _MatcapLerp);
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, lerpResult1224.xy ) *  (0.0 + ( _EnvBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) ) , saturate( (  (0.0 + ( _EnvRate - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_24 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_24 , Refined_diff612 , _Saturation);
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
			#define ASE_VERSION 19901

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
			#define ASE_SHADOWS 1
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0

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
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform sampler2D _BumpMap;
			uniform float4 _BumpMap_ST;
			uniform float4 _IndirectLightBiasSample1;
			uniform float4 _IndirectLightBiasSample2;
			uniform float _IndirectBiasSampleRate;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float4 _GlobalRimColor;
			uniform float _CustomRimLightColor;
			uniform float _MinRimLightColor;
			uniform float4 _SpecularColor;
			uniform float4 _RimColor2;
			uniform float _RimSpecRate2;
			uniform float _RimStep2;
			uniform float _RimVerticalOffset2;
			uniform float _RimHorizonOffset2;
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
			uniform float _MatcapLerp;
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
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			float3 v_bias(  )
			{
				return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1]);
			}
			
			float3 h_bias(  )
			{
				return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2]);
			}
			
			float2 getMatcapUVs1220( float3 normal, float3 viewDir )
			{
				half3 worldUp = float3(0, 1, 0);
				half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp));
				half3 worldViewRight = normalize(cross(viewDir, worldViewUp));
				return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5;
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
				UNITY_SHADOW_COORDS(2)
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord1.xyz = ase_positionWS;
				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord4.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord5.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord6.xyz = ase_bitangentWS;
				float vertexToFrag1125 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1125;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				
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
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1128_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 ase_positionWS = i.ase_texcoord1.xyz;
				float3 worldPos1029 = ase_positionWS;
				float localPureLightAttenuation1029 = PureLightAttenuation( worldPos1029 );
				UNITY_LIGHT_ATTENUATION( ase_atten, i, ase_positionWS )
				float3 temp_output_1073_0 = ( temp_output_1128_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1029 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1075 = temp_output_1073_0;
				#else
				float3 staticSwitch1075 = temp_output_1128_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float2 uv_BumpMap = i.ase_texcoord3.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 ase_tangentWS = i.ase_texcoord4.xyz;
				float3 ase_normalWS = i.ase_texcoord5.xyz;
				float3 ase_bitangentWS = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal1143 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1143 = normalize( float3( dot( tanToWorld0, tanNormal1143 ), dot( tanToWorld1, tanNormal1143 ), dot( tanToWorld2, tanNormal1143 ) ) );
				float3 WorldNormal1142 = worldNormal1143;
				float4 appendResult1158 = (float4(WorldNormal1142 , 1.0));
				float4 Normal1127 = appendResult1158;
				float3 localShadeSH9out1127 = ShadeSH9out( Normal1127 );
				float3 appendResult1154 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1153 = ASESafeNormalize( appendResult1154 );
				float4 appendResult1156 = (float4(normalizeResult1153 , _IndirectLightBiasSample1.w));
				float4 Normal1152 = appendResult1156;
				float3 localShadeSH9out1152 = ShadeSH9out( Normal1152 );
				float3 appendResult1160 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1161 = ASESafeNormalize( appendResult1160 );
				float4 appendResult1162 = (float4(normalizeResult1161 , _IndirectLightBiasSample2.w));
				float4 Normal1163 = appendResult1162;
				float3 localShadeSH9out1163 = ShadeSH9out( Normal1163 );
				float3 lerpResult1155 = lerp( localShadeSH9out1127 , max( localShadeSH9out1152 , localShadeSH9out1163 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1075 ):( temp_output_1073_0 )) , temp_cast_3 ) , min( max( lerpResult1155 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1095 = dot( temp_output_1005_0, float3( 0.299, 0.587, 0.114 ) );
				float3 temp_cast_10 = (grayscale1095).xxx;
				float3 lerpResult1096 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1096;
				float4 lerpResult1089 = lerp( float4( LightColor208 , 0.0 ) , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_12 = (_MinRimLightColor).xxxx;
				float4 clampResult1088 = clamp( lerpResult1089 , temp_cast_12 , float4( 1,1,1,0 ) );
				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = ( any(_WorldSpaceLightPos0.xyz) );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( ase_positionWS );
				float3 localDefaultLightDir798 = ( normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz) );
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult779 = dot( LightDir801 , WorldNormal1142 );
				float LambertTerm552 = dotResult779;
				float RimAtten1076 = localPureLightAttenuation1029;
				float lerpResult1085 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_viewDirWS , WorldNormal1142 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 *  (0.0 + ( _SpecularBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) );
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1125 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 uv_AreaTex = i.ase_texcoord3.xy * _AreaTex_ST.xy + _AreaTex_ST.zw;
				float4 AreaMap1166 = tex2D( _AreaTex, uv_AreaTex );
				float4 break1171 = AreaMap1166;
				float AreaR1217 = break1171.r;
				float AreaG1170 = break1171.g;
				float AreaB1216 = break1171.b;
				float4 temp_output_1188_0 = ( ( AreaR1217 > 0.3 ? _DiffuseColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _DiffuseColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _DiffuseColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _DiffuseColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _DiffuseColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _DiffuseColorAreaB2 : float4( 0,0,0,0 ) ) );
				float area_lerp1190 = (temp_output_1188_0).a;
				float4 lerpResult1191 = lerp( diff345 , ( diff345 * temp_output_1188_0 ) , area_lerp1190);
				float4 diff_area1192 = lerpResult1191;
				float DiffuseLightFactor1119 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( diff_area1192 , ( diff_area1192 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1125 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1214 = lerp( shad_c330 , ( shad_c330 * ( ( AreaR1217 > 0.3 ? _ShadeColorAreaR1 : float4( 0,0,0,0 ) ) + ( AreaR1217 < 0.1 ? _ShadeColorAreaR2 : float4( 0,0,0,0 ) ) + ( AreaG1170 > 0.3 ? _ShadeColorAreaG1 : float4( 0,0,0,0 ) ) + ( AreaG1170 < 0.1 ? _ShadeColorAreaG2 : float4( 0,0,0,0 ) ) + ( AreaB1216 > 0.3 ? _ShadeColorAreaB1 : float4( 0,0,0,0 ) ) + ( AreaB1216 < 0.1 ? _ShadeColorAreaB2 : float4( 0,0,0,0 ) ) ) ) , area_lerp1190);
				float4 shad_area1215 = lerpResult1214;
				float4 lerpResult1008 = lerp( ( shad_area1215 * _GlobalShadowColor ) , ( shad_area1215 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1119);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1124 = ( any(_WorldSpaceLightPos0.xyz) );
				float HalfShadowAttenuation1070 = ( localIsThereALight1124 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1070 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1142 , 0.0 ) ).xyz;
				float3 normal1220 = WorldNormal1142;
				float3 viewDir1220 = ase_viewDirWS;
				float2 localgetMatcapUVs1220 = getMatcapUVs1220( normal1220 , viewDir1220 );
				float2 matcapUV1221 = localgetMatcapUVs1220;
				float3 lerpResult1224 = lerp( ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ) , float3( matcapUV1221 ,  0.0 ) , _MatcapLerp);
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, lerpResult1224.xy ) *  (0.0 + ( _EnvBias - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) ) , saturate( (  (0.0 + ( _EnvRate - 0.0 ) * ( 100.0 - 0.0 ) / ( 10.0 - 0.0 ) ) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1083 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1076 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_viewDirWS ) ) ) ) , WorldNormal1142 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1083 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1088 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1088 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1085 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_24 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_24 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				
				
				outColor = output_diff618.rgb;
				outAlpha = 1;
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "AmplifyShaderEditor.MaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19901
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1168;-3104.191,-2685.382;Inherit;False;855.999;2254.053;;27;600;620;68;401;916;917;918;919;350;355;559;646;436;67;937;938;408;1141;1142;1143;66;1166;1167;330;65;64;345;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1165;-5717.399,1592.819;Inherit;False;3393.56;1024.731;;61;1005;1074;826;208;1096;1097;1010;825;773;1075;1118;1011;1119;1128;1129;1095;1028;1076;1033;1035;1029;1073;1130;1131;303;301;1155;1127;1150;1158;1151;1154;1153;1159;1160;1161;1156;1162;1163;1152;1164;1157;1067;1069;1068;1124;1066;1070;1122;779;781;778;776;802;552;1149;799;801;800;798;797;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1151;-4634.907,2173.891;Inherit;False;Property;_IndirectLightBiasSample1;Indirect Light Bias Sample1;86;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1159;-4634.396,2340.903;Inherit;False;Property;_IndirectLightBiasSample2;Indirect Light Bias Sample2;87;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1141;-3022.483,-2035.747;Inherit;True;Property;_BumpMap;Normal Map;18;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1154;-4363.239,2185.332;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1160;-4362.184,2365.918;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1143;-2733.12,-2030.944;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1167;-3021.473,-2231.098;Inherit;True;Property;_AreaTex;Area Map (_area);5;0;Create;False;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1028;-4428.249,1867.302;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1153;-4212.233,2183.332;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1161;-4211.18,2363.918;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1142;-2548.933,-2033.189;Inherit;False;WorldNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1166;-2711.758,-2227.548;Inherit;False;AreaMap;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1169;-701.673,-2741.111;Inherit;False;2856.082;1701.917;;48;1217;1216;1215;1214;1213;1212;1211;1210;1209;1208;1207;1206;1205;1204;1203;1202;1201;1200;1199;1198;1197;1196;1195;1194;1193;1192;1191;1190;1189;1188;1187;1186;1185;1184;1183;1182;1181;1180;1179;1178;1177;1176;1175;1174;1173;1172;1171;1170;Area Color Control;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;825;-4250.08,1771.647;Inherit;False;Property;_MinDirectLight;MinDirectLight;84;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;773;-4139.136,1642.819;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LightAttenuation, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1035;-4253.71,1950.544;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1029;-4234.816,1847.543;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1150;-4156.004,2078.702;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1156;-4062.662,2209.009;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1162;-4060.527,2402.009;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1172;-624.2827,-2630.051;Inherit;False;1166;AreaMap;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1128;-3942.754,1685.524;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1033;-4045.091,1936.582;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;24;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1158;-3950.123,2101.334;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1163;-3914.965,2402.953;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1152;-3916.591,2209.691;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1171;-436.78,-2629.501;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1073;-3799.813,1815.077;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1127;-3787.118,2079.013;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1164;-3722.49,2249.279;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1157;-3857.044,2497.17;Inherit;False;Property;_IndirectBiasSampleRate;Indirect Bias Sample Rate;88;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1170;-281.2397,-2607.431;Inherit;False;AreaG;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1216;-276.2796,-2521.51;Inherit;False;AreaB;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1217;-283.8797,-2691.111;Inherit;False;AreaR;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1075;-3737.996,1649.696;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;303;-3523.39,2396.187;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;89;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1155;-3572.641,2150.344;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1175;-625.293,-2428.858;Inherit;False;1217;AreaR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1176;-636.3067,-1995.046;Inherit;False;1170;AreaG;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1179;-650.8327,-2172.015;Inherit;False;Property;_DiffuseColorAreaR2;DiffuseColor AreaR2;8;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1180;-651.673,-2351.308;Inherit;False;Property;_DiffuseColorAreaR1;DiffuseColor AreaR1;6;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1181;-644.1877,-1903.406;Inherit;False;Property;_DiffuseColorAreaG1;DiffuseColor AreaG1;10;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1182;-643.3475,-1724.113;Inherit;False;Property;_DiffuseColorAreaG2;DiffuseColor AreaG2;12;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1183;-620.9084,-1548.831;Inherit;False;1216;AreaB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1186;-639.7745,-1459.164;Inherit;False;Property;_DiffuseColorAreaB1;DiffuseColor AreaB1;14;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1187;-638.9343,-1279.871;Inherit;False;Property;_DiffuseColorAreaB2;DiffuseColor AreaB2;16;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1074;-3451.59,1681.206;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;25;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;826;-3463.226,1845.357;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;85;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1131;-3290.124,2130.63;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;301;-3538.67,2485.283;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;90;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;799;-5553.519,1747.065;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;798;-5328.324,1816.13;Inherit;False;normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;797;-5332.129,1690.513;Inherit;False;any(_WorldSpaceLightPos0.xyz);1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;64;-3014.104,-2635.382;Inherit;True;Property;_MainTex;Diffuse Map (_diff);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1173;-386.4756,-2252.678;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1174;-381.8688,-2426.394;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1177;-395.4844,-1819.251;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1178;-390.8773,-1992.965;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1184;-385.9841,-1548.467;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1185;-392.1204,-1386.987;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1129;-3139.096,1765.547;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1130;-3170.848,2182.422;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;800;-5172.202,1697.172;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;345;-2703.604,-2627.975;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1188;-108.1034,-1968.621;Inherit;False;6;6;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1005;-3042.598,1889.926;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightAttenuation, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1066;-5667.399,2297.376;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;801;-5004.167,1696.512;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1189;23.12669,-1868.483;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1194;-72.24052,-2074.701;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1097;-2975.621,2035.361;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;91;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1095;-2927.163,1954.024;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1067;-5447.857,2308.694;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1069;-5467.747,2387.979;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;802;-5503.709,1970.268;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1149;-5505.931,2060.864;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;65;-3019.296,-2428.595;Inherit;True;Property;_ShadTex;Shaded Diffuse (_shad_c);2;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1190;230.3205,-1867.646;Inherit;False;area_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1193;112.4016,-1978.751;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1197;883.7913,-2397.181;Inherit;False;1217;AreaR;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1198;872.7776,-1963.369;Inherit;False;1170;AreaG;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1201;888.1759,-1517.155;Inherit;False;1216;AreaB;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1204;857.4114,-2319.63;Inherit;False;Property;_ShadeColorAreaR1;ShadeColor AreaR1;7;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1205;858.2516,-2140.338;Inherit;False;Property;_ShadeColorAreaR2;ShadeColor AreaR2;9;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1206;864.8965,-1871.728;Inherit;False;Property;_ShadeColorAreaG1;ShadeColor AreaG1;11;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1207;865.7368,-1692.436;Inherit;False;Property;_ShadeColorAreaG2;ShadeColor AreaG2;13;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1208;869.3098,-1427.488;Inherit;False;Property;_ShadeColorAreaB1;ShadeColor AreaB1;15;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1209;870.1498,-1248.195;Inherit;False;Property;_ShadeColorAreaB2;ShadeColor AreaB2;17;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;28;444;440;439;442;539;432;433;428;437;430;435;624;429;441;443;445;315;319;322;636;623;438;434;872;873;1015;1016;1017;Specular Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1096;-2715.781,1892.544;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1068;-5289.16,2328.748;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1124;-5240.11,2249.124;Inherit;False;any(_WorldSpaceLightPos0.xyz);1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;779;-5294.171,2012.731;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;778;-5334.431,2128.177;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;330;-2696.615,-2412.862;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1191;436.8279,-2000.026;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1195;1122.608,-2221.001;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1196;1127.216,-2394.716;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1199;1113.6,-1787.573;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1200;1118.207,-1961.288;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1202;1123.1,-1516.791;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0.3;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1203;1116.964,-1355.311;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1014;-2167.618,-3398.751;Inherit;False;1312.803;1911.911;;50;338;337;331;339;333;334;336;335;387;394;386;381;405;393;371;369;365;366;368;370;648;399;383;372;649;382;647;783;392;375;364;342;1008;343;420;340;1012;344;347;348;346;1009;349;1013;1038;1039;1072;1125;1126;1140;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;315;-1912.664,-1243.571;Inherit;False;Property;_SpecularPower;SpecularPower;28;0;Create;True;0;0;0;False;0;False;1.2;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;208;-2565.839,1886.426;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1118;-2867.647,2413.705;Inherit;False;Property;_DiffuseLightFactor;DiffuseLightFactor;92;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1122;-5070,2270.483;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;776;-5166.844,2036.948;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;66;-3031.8,-1822.692;Inherit;True;Property;_BaseTex;TripleMaskMap (_base);26;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1210;1428.086,-1931.615;Inherit;False;6;6;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1212;1405.559,-2022.254;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1192;582.678,-1998.63;Inherit;False;diff_area;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;319;-1591.851,-1243.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-10;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;347;-1869.48,-3260.151;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;346;-1866.481,-3348.751;Inherit;False;1192;diff_area;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1119;-2594.647,2415.705;Inherit;False;DiffuseLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1070;-4914.599,2275.624;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;781;-4965.117,2036.649;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;408;-2686.604,-1874.557;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1211;1549.124,-1821.019;Inherit;False;1190;area_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1213;1572.946,-1924.752;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;850;-4512,-304;Inherit;False;1673.75;1710.115;;52;481;486;489;490;492;487;485;488;491;463;484;482;483;478;477;493;475;473;465;129;128;136;518;521;520;494;495;496;497;498;500;501;503;504;505;507;508;509;512;511;513;510;502;499;1145;1146;1147;1148;1218;1219;1220;1221;Matrix And Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;322;-1449.967,-1244.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;11;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1013;-1745.355,-3170.702;Inherit;False;1119;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1072;-2165.398,-2484.387;Inherit;False;1070;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;783;-2162.819,-2574.952;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;348;-1690.688,-3283.27;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;331;-2156.821,-2711.386;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1214;1759.723,-1975.716;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Exp2OpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;636;-1314.541,-1240.271;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1009;-1544.728,-3340.522;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1038;-1915.726,-2524.208;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;333;-1921.795,-2624.204;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1215;1912.409,-1968.862;Inherit;False;shad_area;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;128;-4496,-240;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1145;-4480,-80;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;349;-1386.96,-3346.379;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;340;-1915.025,-3120.806;Inherit;False;1215;shad_area;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1039;-1773.927,-2556.708;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;23;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;420;-1938.881,-3023.838;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;22;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;343;-1930.517,-2842.329;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;129;-4272,-144;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;624;-2096.74,-990.3093;Inherit;False;623;fixed_specpower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;365;-2090.626,-1942.506;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;364;-2105.157,-2140.062;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;1;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;334;-1743.196,-2767.203;Inherit;False;Property;_ShadowStep;ShadowStep;20;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1012;-1727.604,-2869.424;Inherit;False;1119;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;382;-2143.91,-2343.963;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1126;-1666.276,-2677.285;Inherit;False;Property;_OnlyPaintedShadow;Only Painted Shadow;19;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;342;-1695.4,-2999.656;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1140;-1702.345,-3093.177;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;136;-4144,-144;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;432;-1865.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;429;-1949.934,-1107.891;Inherit;False;136;Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;369;-1820.215,-2006.594;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;368;-1836.215,-2139.594;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1008;-1534.697,-3060.831;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexToFragmentNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1125;-1981.051,-2258.455;Inherit;False;False;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;335;-1427.396,-2741.703;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;336;-1534.421,-2516.591;Inherit;False;Property;_ShadowFeather;ShadowFeather;21;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;433;-1721.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;428;-1759.332,-1107.791;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;366;-1644.934,-2139.753;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;372;-1655.619,-1984.512;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;344;-1380.347,-3063.965;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;647;-1753.883,-2292.693;Inherit;False;Property;_UseShadowMaskVertexColorA;Use ShadowMask (VertexColorA);3;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;337;-1289.654,-2737.753;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;430;-1583.632,-1107.891;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;477;-4464,448;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;38;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;872;-1730.45,-883.5449;Inherit;False;Property;_SpecularBias;Specular Bias;29;0;Create;True;0;0;0;False;0;False;1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;386;-2102.49,-1622.024;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;371;-1446.692,-2220.511;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;375;-2117.618,-1821.501;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;4;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;338;-1176.387,-2735.858;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;436;-2681.608,-1773.044;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;434;-1424.889,-1108.316;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;483;-4176,496;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;437;-1572.076,-1005.741;Inherit;False;436;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;873;-1445.568,-922.5085;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;387;-1827.131,-1807.554;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;394;-1815.848,-1667.45;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;370;-1254.684,-2214.457;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;339;-1041.027,-2738.039;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;486;-4224,288;Inherit;False;Constant;_1_;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;484;-4064,496;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;478;-4080,224;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;39;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;435;-1281.689,-1068.516;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;381;-1661.039,-1779.441;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;393;-1665.282,-1872.548;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;648;-1444.358,-2315.133;Inherit;False;VertexColorShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;392;-1671.556,-1602.84;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;465;-4080,576;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;473;-4208,368;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;520;-4000,-240;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1146;-4016,-64;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;481;-4064,352;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;489;-3792,288;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;485;-3904,512;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;512;-4464,1104;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;46;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;438;-1135.989,-1072.691;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;405;-1477.552,-1797.65;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;649;-1483.958,-1948.834;Inherit;False;648;VertexColorShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1010;-2866.755,2504.55;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;93;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;518;-3840,-160;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1225;-2704,-272;Inherit;False;2063.427;595.6088;;20;529;530;542;532;533;535;852;531;840;537;871;528;527;448;449;451;450;1222;1224;1226;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;492;-3840,80;Inherit;False;Constant;_1_1;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;487;-3680,304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;482;-3760,384;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;509;-4176,1152;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;443;-1859.682,-527.5886;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;442;-1898.68,-797.988;Inherit;False;Property;_SpecularColor;SpecularColor;27;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;383;-1240.994,-1944.5;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;441;-1894.259,-615.4928;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;475;-3808,176;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1011;-2594.49,2503.485;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;521;-3696,-160;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1218;-3440,-112;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1219;-3456,-208;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;998;-2309.716,415.2763;Inherit;False;1544.887;1211.35;;31;951;952;953;954;955;941;981;983;994;995;969;946;947;961;976;970;958;997;992;993;973;949;979;991;975;980;956;964;945;957;1001;Reflection Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;490;-3680,144;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;488;-3520,304;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;494;-4080,1216;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;496;-4224,928;Inherit;False;Constant;_1_2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;507;-4064,1136;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;511;-4080,880;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;47;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;399;-1078.815,-1940.656;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1017;-1643.274,-713.0028;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;444;-1643.881,-609.2066;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1015;-1670.869,-473.9094;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;510;-4208,1024;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;67;-3035.572,-1509.718;Inherit;True;Property;_CtrlTex;OptionMaskMap (_ctrl);30;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1220;-3264,-160;Inherit;False;half3 worldUp = float3(0, 1, 0)@$half3 worldViewUp = normalize(worldUp - viewDir * dot(viewDir, worldUp))@$half3 worldViewRight = normalize(cross(viewDir, worldViewUp))@$return half2(dot(worldViewRight, normal), dot(worldViewUp, normal)) * 0.5 + 0.5@;2;Create;2;True;normal;FLOAT3;0,0,0;In;;Inherit;False;True;viewDir;FLOAT3;0,0,0;In;;Inherit;False;getMatcapUVs;True;False;0;;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;527;-2656,-80;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;448;-2656,-224;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;491;-3408,192;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;495;-4064,1008;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;497;-3792,944;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;501;-3904,1168;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;951;-2218.376,706.4171;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;952;-2204.996,557.4197;Inherit;False;Constant;_11_1;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1016;-1434.189,-656.3539;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;439;-1444.733,-512.2018;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1147;-3376,352;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;559;-2716.088,-1479.553;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;51;0;Create;True;0;0;0;False;1;Header(Metal);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1221;-3088,-160;Inherit;False;matcapUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;449;-2448,-192;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;451;-2464,-80;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1092;-2285.115,1785.548;Inherit;False;1535.696;2259.567;;73;410;411;413;423;425;424;427;409;412;540;452;453;454;458;459;461;455;462;457;456;541;359;358;570;562;357;356;360;354;460;426;421;563;578;560;564;565;566;568;569;572;556;573;1077;1078;1083;546;1084;558;1089;1088;557;561;577;576;555;1085;1081;1086;575;543;567;544;545;547;548;553;1080;1090;1091;1093;1094;1120;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;463;-3216,224;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;500;-3680,960;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;508;-3776,1040;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;502;-3824,816;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;499;-3840,736;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;953;-2010.074,595.0557;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;955;-2017.874,701.6572;Inherit;False;Constant;_05_1;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;440;-1258.359,-605.7688;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;350;-2505.942,-1476.411;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;355;-2699.322,-1359.315;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;530;-1968,112;Inherit;False;Property;_EnvRate;EnvRate;54;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;450;-2320,-176;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1222;-2480,16;Inherit;False;1221;matcapUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1226;-2464,112;Inherit;False;Property;_MatcapLerp;Matcap Lerp;53;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;493;-3072,224;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;498;-3680,800;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;503;-3536,960;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;954;-1861.875,602.8546;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;958;-1719.391,758.9619;Inherit;False;Property;_RflMulBias;RflMulBias;63;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;445;-1138.669,-608.9738;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;358;-2132.913,1943.967;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;356;-2134.393,1835.821;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;529;-1504,208;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;852;-1680,112;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;537;-1696,-32;Inherit;False;Property;_EnvBias;EnvBias;55;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1224;-2176,-64;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;504;-3408,848;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;983;-1728.274,465.8071;Inherit;False;Property;_RflAddPowVal;RflAddPowVal;61;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;941;-1728.045,566.4398;Inherit;True;Property;_RflTex;ReflectionMap (_rfl);57;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ScaleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1001;-1440.431,708.86;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;976;-1704.694,835.7731;Inherit;False;Property;_ReflectionMulColor;ReflectionMulColor;59;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;409;-2195.685,2101.103;Inherit;False;Property;_RimStep;RimStep;33;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;357;-1940.998,1836.126;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;421;-2095.754,2192.319;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1148;-3376,992;Inherit;False;1142;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;533;-1536,-224;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;531;-1264,128;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;871;-1424,-32;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;528;-2000,-112;Inherit;True;Property;_EnvTex;EnvironmentMap (_env);52;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;505;-3216,864;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;981;-1418.065,559.0818;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;995;-1458.651,465.2763;Inherit;False;Property;_RflAddBias;RflAddBias;62;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;997;-1434.621,875.3804;Inherit;False;Property;_RflMulOffset;RflMulOffset;64;0;Create;True;0;0;0;False;0;False;0.5;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;992;-1271.873,663.473;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;410;-1897.986,2154.405;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;412;-2021.486,2276.601;Inherit;False;Property;_RimFeather;RimFeather;34;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;354;-1786.329,1835.548;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;31;0;Create;True;0;0;0;False;1;Header(Rim);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;535;-1200,-112;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;840;-1120,32;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;513;-3088,864;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;993;-1118.825,677.0558;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.490566;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;994;-1182.594,537.0715;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;10;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;411;-1736.787,2197.303;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;359;-1556.161,1854.68;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;937;-2729.799,-1587.95;Inherit;False;Property;_Use_ReflectionMask;Use_ReflectionMask;56;0;Create;True;0;0;0;False;1;Header(Reflection);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;532;-1056,-144;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;969;-1044.316,546.5311;Inherit;False;RflAdd;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;970;-988.8291,657.3665;Inherit;False;RflMul;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;413;-1608.952,2197.833;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;457;-2179.97,2508.962;Inherit;False;Property;_RimStep2;RimStep2;41;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;456;-2097.04,2602.179;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;360;-1408.161,1850.68;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1076;-4027.74,1846.083;Inherit;False;RimAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;552;-5152.523,1956.24;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;938;-2490.192,-1585.65;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;542;-912,-144;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;961;-2259.716,987.0363;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;973;-2226.928,1075.024;Inherit;False;970;RflMul;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;980;-2038.952,1162.754;Inherit;False;969;RflAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;964;-2022.054,1510.627;Inherit;False;938;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;945;-2088.001,1425.217;Inherit;False;Property;_RflRate;RflRate;60;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;975;-2074.579,1246.669;Inherit;False;Property;_ReflectionAddColor;ReflectionAddColor;58;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;423;-1454.782,2194.656;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;425;-1464.356,2300.703;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;452;-1882.272,2562.264;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;455;-2005.772,2684.46;Inherit;False;Property;_RimFeather2;RimFeather2;42;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;426;-1497.228,2007.667;Inherit;False;Property;_RimColor;RimColor;32;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;573;-2235.115,2780.197;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1077;-2217.802,2867.582;Inherit;False;1076;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;539;-1662.804,-797.59;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;949;-2019.576,1062.029;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;991;-1868.632,1208.619;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;956;-1807.585,1439.007;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;424;-1274.582,2149.057;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;540;-1274.103,2008.506;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;453;-1721.073,2605.162;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1078;-2043.802,2849.582;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1084;-2162.655,2952.738;Inherit;False;Property;_RimAttenuation;RimAttenuation;37;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;979;-1715.086,1146.964;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;957;-1661.144,1436.049;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;427;-1133.907,2142.229;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;454;-1593.237,2605.692;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;568;-2075.504,3126.404;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;569;-2092.504,3048.833;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;558;-2171.174,3356.723;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;48;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;546;-2127.58,3204.53;Inherit;False;Property;_RimSpecRate;RimSpecRate;35;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1083;-1878.763,2792.833;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1090;-1979.138,3421.786;Inherit;False;Property;_CustomRimLightColor;CustomRimLightColor;49;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1120;-1938.446,3297.23;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;947;-1466.457,995.937;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;458;-1439.068,2602.515;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;459;-1448.643,2708.563;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;460;-1481.514,2415.525;Inherit;False;Property;_RimColor2;RimColor2;40;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;566;-1844.766,3222.539;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;556;-1839.069,2966.823;Inherit;False;Property;_RimShadowRate;RimShadowRate;36;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;553;-2196.771,3769.53;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1080;-2187.874,3843.173;Inherit;False;1076;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1093;-1708.552,2868.219;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;564;-1837.714,3100.49;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1089;-1712.738,3304.673;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1091;-1946.65,3498.809;Inherit;False;Property;_MinRimLightColor;MinRimLightColor;50;0;Create;True;0;0;0;False;0;False;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;401;-3032.013,-658.3286;Inherit;True;Property;_DirtTex;DirtTex;65;1;[Header];Create;True;1;Dirt;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;642;-586.7119,-886.787;Inherit;False;1479.274;1043.779;;22;579;580;582;584;587;588;586;583;585;589;590;621;592;593;596;595;594;597;598;601;599;591;Dirt Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;946;-1320.412,991.369;Inherit;False;Env2SpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;461;-1258.869,2556.917;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;541;-1266.315,2413.878;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;565;-1659.861,3157.487;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1081;-2018.174,3836.972;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;572;-1566.5,2871.744;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1086;-2117.332,3929.115;Inherit;False;Property;_RimAttenuation2;RimAttenuation2;45;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1088;-1559.525,3306.281;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0.2,0.2,0.2,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;620;-2728.465,-658.9839;Inherit;False;dirt;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;579;-536.7119,-548.8462;Inherit;False;Property;_DirtScale;DirtScale;68;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;621;-414.6991,-663.8079;Inherit;False;620;dirt;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;462;-1118.193,2550.087;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;563;-1396.493,3111.465;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;560;-1391.722,3022.899;Inherit;False;946;Env2SpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;544;-2126.725,3611.377;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;545;-2134.346,3537.597;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;567;-2169.304,3687.548;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;43;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1085;-1819.146,3797.076;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;580;-214.7119,-655.8467;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;570;-1155.562,3095.053;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;575;-1753.298,3926.026;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;44;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1094;-1662.608,3795.05;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;543;-1873.255,3572.292;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;548;-1880.156,3707.608;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;582;-70.7123,-657.8467;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;583;-14.18952,-836.787;Inherit;False;Property;_DirtRateR;DirtRateR;69;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;585;5.810593,-482.7861;Inherit;False;Property;_DirtRateB;DirtRateB;71;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;584;91.8107,-675.7864;Inherit;False;Property;_DirtRateG;DirtRateG;70;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;562;-1024.419,3091.5;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;578;-1248.188,3214.391;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;555;-1525.456,3788.876;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;547;-1696.651,3616.814;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;921;-3911.642,-1118.786;Inherit;False;785.9297;346.1168;;7;928;927;926;925;924;923;922;DynEmi UV Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;587;365.8105,-661.7866;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;588;283.8108,-533.7861;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;586;268.811,-829.787;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;591;-491.7657,-284.0693;Inherit;False;578;realRim;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;557;-1408.849,3574.995;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;576;-1381.749,3707.593;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;589;535.8104,-682.7864;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;592;-314.1618,-283.0981;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;925;-3861.642,-888.6691;Inherit;False;Property;_DynEmiScrollY;DynEmi ScrollY;79;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;926;-3853.441,-1068.786;Inherit;False;Property;_DynEmiScrollX;DynEmi ScrollX;78;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;928;-3855.546,-975.205;Inherit;False;1;0;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;561;-1163.118,3577.781;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;590;668.5615,-684.2253;Inherit;False;DirtPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;593;-184.1448,-283.1035;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;924;-3667.133,-1025.13;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;927;-3667.132,-919.2202;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;595;-414.527,-135.9775;Inherit;False;Property;_GlobalDirtColor;GlobalDirtColor;66;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;596;-209.2378,-55.00774;Inherit;False;Property;_GlobalDirtRimSpecularColor;GlobalDirtRimSpecularColor;67;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;577;-1032.922,3572.822;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;594;29.69964,-285.2744;Inherit;False;3;4;0;FLOAT;1E-05;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;598;-26.31721,-388.9922;Inherit;False;577;Rim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;599;95.88292,-121.1928;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;923;-3517.431,-988.4695;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;597;299.9841,-300.5962;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;922;-3367.712,-1037.443;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;936;-585.2881,290.5046;Inherit;False;949.0878;1702.382;;28;610;603;605;604;606;612;602;607;608;609;611;915;613;614;615;616;617;618;929;930;931;932;933;934;935;1018;1020;1021;Emmisive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;601;469.4225,-303.2583;Inherit;False;DirtRim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;68;-3047.347,-1260.464;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];72;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;918;-3046.123,-1062.95;Inherit;True;Property;_DynamicEmmisive_dyn_emi;DynamicEmmisive (_dyn_emi);75;0;Create;True;0;0;0;False;1;NoScaleOffset;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;919;-3054.191,-861.1695;Inherit;True;Property;_DynamicEmmisiveMask_dyn_emi_mask;DynamicEmmisiveMask (_dyn_emi_mask);76;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;607;-530.7629,678.1381;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;929;-529.3475,1095.718;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;602;-513.6968,331.1195;Inherit;False;Property;_CharaColor;CharaColor;81;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;605;-571.7874,506.5549;Inherit;False;601;DirtRim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;603;-489.9157,584.6661;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;600;-2745.335,-1264.112;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;916;-2741.79,-1059.769;Inherit;False;DynEmi;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;917;-2735.795,-858.1819;Inherit;False;DynEmiMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;608;-357.7633,680.1382;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;609;-420.3516,756.8454;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;915;-509.3508,1006.975;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;74;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;930;-356.3478,1099.018;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;932;-499.0545,1175.815;Inherit;False;916;DynEmi;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;933;-509.0545,1254.815;Inherit;False;917;DynEmiMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;935;-535.2881,1514.694;Inherit;False;Property;_DynEmmisiveStrength;DynEmmisiveStrength;80;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;934;-508.2091,1336.936;Inherit;False;Property;_DynEmissiveColor;DynEmissiveColor;77;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;611;-444.1928,835.6896;Inherit;False;Property;_EmissiveColor;EmissiveColor;73;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;604;-267.8757,360.3331;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1018;-268.2223,481.1762;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1020;-285.7105,603.3796;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;610;-180.452,751.7504;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;931;-185.4479,1098.667;Inherit;False;5;5;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1021;-122.5304,443.265;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;606;58.26269,649.2629;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;612;180.2853,646.3752;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;613;-483.534,1789.538;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;615;-495.1351,1603.838;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;83;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;614;-234.6367,1650.734;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;617;-535.1091,1876.887;Inherit;False;Property;_Saturation;Saturation;82;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1117;-607.4543,2110.428;Inherit;False;1426.515;1601.894;;37;727;735;737;738;739;740;742;734;729;733;914;913;730;732;1111;1113;1115;1108;743;745;746;744;1106;747;748;749;750;751;1105;1104;1110;1114;1112;1132;1137;1138;1139;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;870;487.8755,371.5081;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1003;533.9971,1187.993;Inherit;False;225;166;;1;1004;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;616;-111.1865,1700.939;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;869;574.3199,972.5614;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;115;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;865;573.0298,697.452;Inherit;False;Property;_StencilComparison;Stencil Comparison;112;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;864;575.0732,791.5167;Inherit;False;Property;_StencilPassFront;Stencil PassFront;113;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;868;575.3414,883.6737;Inherit;False;Property;_StencilFailFront;Stencil FailFront;114;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;866;544.6917,599.6441;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;111;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;867;539.5822,510.7573;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;110;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;863;537.8758,421.5081;Inherit;False;Property;_StencilReference;Stencil Reference;109;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;618;139.7997,1704.02;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1004;583.9971,1237.993;Inherit;False;Property;_CullMode;Cull Mode;116;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;735;-287.9843,2489.268;Inherit;False;Property;_UseOutlineMaskVertexColorG;Use OutlineMask (VertexColorG);96;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;737;-517.9045,2869.757;Inherit;False;Property;_OutlineWidth;OutlineWidth;100;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;738;-336.3432,2711.468;Inherit;False;Property;_UseOutlineWidthMaskVertexColorR;Use OutlineWidthMask (VertexColorR);101;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;739;-47.14717,2744.804;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;740;90.04412,2733.156;Inherit;False;OutlineWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;742;-302.6379,2826.602;Inherit;False;0.01;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;734;-548.2866,2566.692;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;743;667.0604,2956.962;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;746;331.4294,2789.738;Inherit;False;740;OutlineWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;744;336.1338,2871.197;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldToObjectTransfNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;748;-391.0308,3420.356;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;749;-394.9265,3596.323;Inherit;False;Property;_OutlineZPush;Outline ZPush;108;0;Create;True;0;0;0;False;0;False;-0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;750;-181.6891,3419.497;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;751;-31.02092,3386.653;Inherit;False;Property;_OutlineZPushAdjust;Outline ZPush Adjust;107;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1106;311.8834,3016.001;Inherit;False;Property;_OutlineDistanceAdjust;Outline Distance Adjust;102;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1111;-376.2779,3198.019;Inherit;False;Property;_MaxDistance;MaxDistance;104;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1113;132.8863,3045.25;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1115;-176.0658,3299.597;Inherit;False;Property;_MaxDistanceRemap;MaxDistanceRemap;106;0;Create;True;0;0;0;False;0;False;10;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1108;-173.9645,3218.635;Inherit;False;Property;_MinDistanceRemap;MinDistanceRemap;105;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1110;-375.2779,3117.019;Inherit;False;Property;_MinDistance;MinDistance;103;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1114;-4.025251,3046.467;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1112;-178.5498,3044.917;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1105;-381.9543,2950.507;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1104;-557.4543,2951.808;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;745;530.157,2850.254;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClipNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;913;601.0013,2226.113;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;914;304.8408,2584.198;Inherit;False;Property;_OutlineClip;OutlineClip;95;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;733;307.045,2469.07;Inherit;False;Property;_Outline;Outline;94;0;Create;True;0;0;0;False;1;Header(Outline);False;0;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;730;-576.7557,2161.428;Inherit;False;Property;_OutlineColor;OutlineColor;97;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;732;-562.5253,2352.656;Inherit;False;1192;diff_area;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;727;-189.403,2174.07;Inherit;False;Property;_MixDiffuseinOutlineColor;Mix Diffuse in OutlineColor;98;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;729;-343.2987,2270.424;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;747;-574.5201,3420.971;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1137;329.1469,2177.831;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1138;126.1261,2240.13;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1132;-111.1925,2280.611;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1139;-8.873901,2363.13;Inherit;False;Property;_OutlineLightColor;OutlineLightColor;99;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;646;-2685.986,-1683.013;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;906;519.8942,1234.809;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;907;519.8942,1193.809;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;905;522.9616,1818.899;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;13;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;904;522.9616,1706.899;Float;False;True;-1;2;AmplifyShaderEditor.MaterialInspector;100;13;LCumashader/BaseArea;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;0;False;;0;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;903;886.2556,2252.555;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;13;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;False;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;True;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
WireConnection;1154;0;1151;1
WireConnection;1154;1;1151;2
WireConnection;1154;2;1151;3
WireConnection;1160;0;1159;1
WireConnection;1160;1;1159;2
WireConnection;1160;2;1159;3
WireConnection;1143;0;1141;0
WireConnection;1153;0;1154;0
WireConnection;1161;0;1160;0
WireConnection;1142;0;1143;0
WireConnection;1166;0;1167;0
WireConnection;1029;0;1028;0
WireConnection;1156;0;1153;0
WireConnection;1156;3;1151;4
WireConnection;1162;0;1161;0
WireConnection;1162;3;1159;4
WireConnection;1128;0;773;1
WireConnection;1128;1;825;0
WireConnection;1033;0;1029;0
WireConnection;1033;1;1035;0
WireConnection;1158;0;1150;0
WireConnection;1163;0;1162;0
WireConnection;1152;0;1156;0
WireConnection;1171;0;1172;0
WireConnection;1073;0;1128;0
WireConnection;1073;1;1033;0
WireConnection;1127;0;1158;0
WireConnection;1164;0;1152;0
WireConnection;1164;1;1163;0
WireConnection;1170;0;1171;1
WireConnection;1216;0;1171;2
WireConnection;1217;0;1171;0
WireConnection;1075;1;1128;0
WireConnection;1075;0;1073;0
WireConnection;1155;0;1127;0
WireConnection;1155;1;1164;0
WireConnection;1155;2;1157;0
WireConnection;1074;0;1073;0
WireConnection;1074;1;1075;0
WireConnection;1131;0;1155;0
WireConnection;1131;1;303;0
WireConnection;1173;0;1175;0
WireConnection;1173;2;1179;0
WireConnection;1174;0;1175;0
WireConnection;1174;2;1180;0
WireConnection;1177;0;1176;0
WireConnection;1177;2;1182;0
WireConnection;1178;0;1176;0
WireConnection;1178;2;1181;0
WireConnection;1184;0;1183;0
WireConnection;1184;2;1186;0
WireConnection;1185;0;1183;0
WireConnection;1185;2;1187;0
WireConnection;1129;0;1074;0
WireConnection;1129;1;826;0
WireConnection;1130;0;1131;0
WireConnection;1130;1;301;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;345;0;64;0
WireConnection;1188;0;1174;0
WireConnection;1188;1;1173;0
WireConnection;1188;2;1178;0
WireConnection;1188;3;1177;0
WireConnection;1188;4;1184;0
WireConnection;1188;5;1185;0
WireConnection;1005;0;1129;0
WireConnection;1005;1;1130;0
WireConnection;801;0;800;0
WireConnection;1189;0;1188;0
WireConnection;1095;0;1005;0
WireConnection;1067;0;1066;0
WireConnection;1190;0;1189;0
WireConnection;1193;0;1194;0
WireConnection;1193;1;1188;0
WireConnection;1096;0;1005;0
WireConnection;1096;1;1095;0
WireConnection;1096;2;1097;0
WireConnection;1068;0;1067;0
WireConnection;1068;1;1069;0
WireConnection;1068;2;1069;0
WireConnection;779;0;802;0
WireConnection;779;1;1149;0
WireConnection;330;0;65;0
WireConnection;1191;0;1194;0
WireConnection;1191;1;1193;0
WireConnection;1191;2;1190;0
WireConnection;1195;0;1197;0
WireConnection;1195;2;1205;0
WireConnection;1196;0;1197;0
WireConnection;1196;2;1204;0
WireConnection;1199;0;1198;0
WireConnection;1199;2;1207;0
WireConnection;1200;0;1198;0
WireConnection;1200;2;1206;0
WireConnection;1202;0;1201;0
WireConnection;1202;2;1208;0
WireConnection;1203;0;1201;0
WireConnection;1203;2;1209;0
WireConnection;208;0;1096;0
WireConnection;1122;0;1124;0
WireConnection;1122;2;1068;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;1210;0;1196;0
WireConnection;1210;1;1195;0
WireConnection;1210;2;1200;0
WireConnection;1210;3;1199;0
WireConnection;1210;4;1202;0
WireConnection;1210;5;1203;0
WireConnection;1192;0;1191;0
WireConnection;319;0;315;0
WireConnection;1119;0;1118;0
WireConnection;1070;0;1122;0
WireConnection;781;0;776;0
WireConnection;408;0;66;1
WireConnection;1213;0;1212;0
WireConnection;1213;1;1210;0
WireConnection;322;0;319;0
WireConnection;348;0;346;0
WireConnection;348;1;347;0
WireConnection;1214;0;1212;0
WireConnection;1214;1;1213;0
WireConnection;1214;2;1211;0
WireConnection;636;0;322;0
WireConnection;1009;0;346;0
WireConnection;1009;1;348;0
WireConnection;1009;2;1013;0
WireConnection;1038;0;331;0
WireConnection;1038;1;783;0
WireConnection;1038;2;1072;0
WireConnection;333;0;331;0
WireConnection;333;1;783;0
WireConnection;1215;0;1214;0
WireConnection;623;0;636;0
WireConnection;349;0;1009;0
WireConnection;1039;0;333;0
WireConnection;1039;1;1038;0
WireConnection;129;0;128;0
WireConnection;129;1;1145;0
WireConnection;1126;0;1039;0
WireConnection;1126;1;331;0
WireConnection;342;0;340;0
WireConnection;342;1;420;0
WireConnection;342;2;343;0
WireConnection;1140;0;340;0
WireConnection;1140;1;420;0
WireConnection;136;0;129;0
WireConnection;432;0;624;0
WireConnection;369;0;364;0
WireConnection;369;1;365;0
WireConnection;368;0;364;0
WireConnection;368;1;365;0
WireConnection;1008;0;1140;0
WireConnection;1008;1;342;0
WireConnection;1008;2;1012;0
WireConnection;1125;0;382;4
WireConnection;335;0;334;0
WireConnection;335;1;1126;0
WireConnection;433;0;432;0
WireConnection;428;0;429;0
WireConnection;366;1;364;4
WireConnection;366;2;368;0
WireConnection;366;3;369;0
WireConnection;344;0;1008;0
WireConnection;647;1;1125;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;430;0;428;0
WireConnection;430;1;433;0
WireConnection;371;0;647;0
WireConnection;371;2;366;0
WireConnection;371;3;372;0
WireConnection;338;0;337;0
WireConnection;436;0;66;2
WireConnection;434;0;430;0
WireConnection;483;0;477;0
WireConnection;873;0;872;0
WireConnection;387;0;375;0
WireConnection;387;1;386;0
WireConnection;394;0;375;0
WireConnection;394;1;386;0
WireConnection;370;0;371;0
WireConnection;339;0;338;0
WireConnection;484;0;483;0
WireConnection;435;0;434;0
WireConnection;435;1;437;0
WireConnection;435;2;873;0
WireConnection;381;1;375;4
WireConnection;381;2;387;0
WireConnection;381;3;394;0
WireConnection;648;0;647;0
WireConnection;481;0;486;0
WireConnection;481;1;473;0
WireConnection;481;2;477;0
WireConnection;489;0;478;0
WireConnection;485;0;484;0
WireConnection;485;1;465;0
WireConnection;438;0;435;0
WireConnection;405;0;393;0
WireConnection;405;1;381;0
WireConnection;405;2;392;0
WireConnection;518;0;520;0
WireConnection;518;1;1146;0
WireConnection;487;0;489;0
WireConnection;482;0;481;0
WireConnection;482;1;485;0
WireConnection;509;0;512;0
WireConnection;383;0;649;0
WireConnection;383;2;405;0
WireConnection;383;3;393;0
WireConnection;1011;0;1010;0
WireConnection;521;0;518;0
WireConnection;490;0;492;0
WireConnection;490;1;475;0
WireConnection;490;2;478;0
WireConnection;488;0;487;0
WireConnection;488;1;482;0
WireConnection;507;0;509;0
WireConnection;399;0;383;0
WireConnection;1017;0;442;0
WireConnection;1017;1;441;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;1220;0;1219;0
WireConnection;1220;1;1218;0
WireConnection;491;0;490;0
WireConnection;491;1;488;0
WireConnection;495;0;496;0
WireConnection;495;1;510;0
WireConnection;495;2;512;0
WireConnection;497;0;511;0
WireConnection;501;0;507;0
WireConnection;501;1;494;0
WireConnection;1016;0;1017;0
WireConnection;1016;1;444;0
WireConnection;1016;2;1015;0
WireConnection;559;1;67;2
WireConnection;1221;0;1220;0
WireConnection;449;0;448;0
WireConnection;449;1;527;0
WireConnection;463;0;491;0
WireConnection;463;1;1147;0
WireConnection;500;0;497;0
WireConnection;508;0;495;0
WireConnection;508;1;501;0
WireConnection;953;0;952;0
WireConnection;953;1;951;0
WireConnection;440;0;1016;0
WireConnection;440;1;439;0
WireConnection;350;0;559;0
WireConnection;355;0;67;3
WireConnection;450;0;449;0
WireConnection;450;1;451;0
WireConnection;493;0;463;0
WireConnection;498;0;499;0
WireConnection;498;1;502;0
WireConnection;498;2;511;0
WireConnection;503;0;500;0
WireConnection;503;1;508;0
WireConnection;954;0;953;0
WireConnection;954;1;955;0
WireConnection;445;0;440;0
WireConnection;852;0;530;0
WireConnection;1224;0;450;0
WireConnection;1224;1;1222;0
WireConnection;1224;2;1226;0
WireConnection;504;0;498;0
WireConnection;504;1;503;0
WireConnection;941;1;954;0
WireConnection;1001;0;958;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
WireConnection;531;0;852;0
WireConnection;531;1;529;0
WireConnection;871;0;537;0
WireConnection;528;1;1224;0
WireConnection;505;0;504;0
WireConnection;505;1;1148;0
WireConnection;981;0;941;1
WireConnection;981;1;983;0
WireConnection;992;0;941;2
WireConnection;992;1;1001;0
WireConnection;992;2;976;0
WireConnection;410;0;409;0
WireConnection;410;1;421;0
WireConnection;354;1;357;0
WireConnection;535;0;533;0
WireConnection;535;1;528;0
WireConnection;535;2;871;0
WireConnection;840;0;531;0
WireConnection;513;0;505;0
WireConnection;993;0;992;0
WireConnection;993;1;997;0
WireConnection;994;0;995;0
WireConnection;994;2;981;0
WireConnection;411;0;410;0
WireConnection;411;1;412;0
WireConnection;359;0;354;0
WireConnection;359;1;358;0
WireConnection;937;1;67;1
WireConnection;532;0;533;0
WireConnection;532;1;535;0
WireConnection;532;2;840;0
WireConnection;969;0;994;0
WireConnection;970;0;993;0
WireConnection;413;0;411;0
WireConnection;360;0;359;0
WireConnection;1076;0;1029;0
WireConnection;552;0;779;0
WireConnection;938;0;937;0
WireConnection;542;0;532;0
WireConnection;423;0;413;0
WireConnection;452;0;457;0
WireConnection;452;1;456;0
WireConnection;539;0;442;0
WireConnection;949;0;961;0
WireConnection;949;1;973;0
WireConnection;991;0;980;0
WireConnection;991;1;975;0
WireConnection;956;0;945;0
WireConnection;956;1;964;0
WireConnection;424;0;426;4
WireConnection;424;1;423;0
WireConnection;424;2;425;0
WireConnection;540;0;426;0
WireConnection;453;0;452;0
WireConnection;453;1;455;0
WireConnection;1078;0;573;0
WireConnection;1078;1;1077;0
WireConnection;979;0;949;0
WireConnection;979;1;991;0
WireConnection;957;0;956;0
WireConnection;427;0;424;0
WireConnection;454;0;453;0
WireConnection;1083;0;573;0
WireConnection;1083;1;1078;0
WireConnection;1083;2;1084;0
WireConnection;947;0;961;0
WireConnection;947;1;979;0
WireConnection;947;2;957;0
WireConnection;458;0;454;0
WireConnection;1093;0;1083;0
WireConnection;564;0;569;0
WireConnection;564;1;568;0
WireConnection;564;2;546;0
WireConnection;1089;0;1120;0
WireConnection;1089;1;558;0
WireConnection;1089;2;1090;0
WireConnection;946;0;947;0
WireConnection;461;0;460;4
WireConnection;461;1;458;0
WireConnection;461;2;459;0
WireConnection;541;0;460;0
WireConnection;565;0;564;0
WireConnection;565;1;566;0
WireConnection;1081;0;553;0
WireConnection;1081;1;1080;0
WireConnection;572;0;1093;0
WireConnection;572;1;556;0
WireConnection;1088;0;1089;0
WireConnection;1088;1;1091;0
WireConnection;620;0;401;0
WireConnection;462;0;461;0
WireConnection;563;0;572;0
WireConnection;563;1;565;0
WireConnection;563;2;1088;0
WireConnection;1085;0;553;0
WireConnection;1085;1;1081;0
WireConnection;1085;2;1086;0
WireConnection;580;0;621;0
WireConnection;580;1;579;0
WireConnection;570;0;560;0
WireConnection;570;1;563;0
WireConnection;1094;0;1085;0
WireConnection;543;0;545;0
WireConnection;543;1;544;0
WireConnection;543;2;567;0
WireConnection;582;0;580;0
WireConnection;562;0;570;0
WireConnection;578;0;563;0
WireConnection;555;0;1094;0
WireConnection;555;1;575;0
WireConnection;547;0;543;0
WireConnection;547;1;548;0
WireConnection;587;0;584;0
WireConnection;587;1;582;1
WireConnection;588;0;582;2
WireConnection;588;1;585;0
WireConnection;586;0;583;0
WireConnection;586;1;582;0
WireConnection;557;0;1088;0
WireConnection;557;1;547;0
WireConnection;557;2;555;0
WireConnection;589;0;586;0
WireConnection;589;1;587;0
WireConnection;589;2;588;0
WireConnection;592;0;591;0
WireConnection;561;0;557;0
WireConnection;561;1;576;0
WireConnection;590;0;589;0
WireConnection;593;0;592;0
WireConnection;593;1;592;1
WireConnection;593;2;592;2
WireConnection;924;0;926;0
WireConnection;924;1;928;0
WireConnection;927;0;928;0
WireConnection;927;1;925;0
WireConnection;577;0;561;0
WireConnection;594;1;593;0
WireConnection;594;2;595;0
WireConnection;594;3;596;0
WireConnection;923;0;924;0
WireConnection;923;1;927;0
WireConnection;597;0;598;0
WireConnection;597;1;594;0
WireConnection;597;2;599;0
WireConnection;922;1;923;0
WireConnection;601;0;597;0
WireConnection;918;1;922;0
WireConnection;600;0;68;0
WireConnection;916;0;918;0
WireConnection;917;0;919;0
WireConnection;608;0;607;0
WireConnection;930;0;929;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;1018;0;602;0
WireConnection;1018;1;605;0
WireConnection;1018;2;603;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;915;0
WireConnection;931;0;930;0
WireConnection;931;1;932;0
WireConnection;931;2;933;0
WireConnection;931;3;934;0
WireConnection;931;4;935;0
WireConnection;1021;0;604;0
WireConnection;1021;1;1018;0
WireConnection;1021;2;1020;0
WireConnection;606;0;1021;0
WireConnection;606;1;610;0
WireConnection;606;2;931;0
WireConnection;612;0;606;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;735;1;734;2
WireConnection;738;1;734;1
WireConnection;739;0;738;0
WireConnection;739;1;742;0
WireConnection;740;0;739;0
WireConnection;742;0;737;0
WireConnection;743;0;745;0
WireConnection;743;1;751;0
WireConnection;748;0;747;0
WireConnection;750;0;748;0
WireConnection;750;1;749;0
WireConnection;751;1;750;0
WireConnection;1106;1;1113;0
WireConnection;1113;0;1114;0
WireConnection;1113;3;1108;0
WireConnection;1113;4;1115;0
WireConnection;1114;0;1112;0
WireConnection;1112;0;1105;4
WireConnection;1112;1;1110;0
WireConnection;1112;2;1111;0
WireConnection;1105;0;1104;0
WireConnection;745;0;746;0
WireConnection;745;1;744;0
WireConnection;745;2;1106;0
WireConnection;913;0;1137;0
WireConnection;913;1;733;0
WireConnection;913;2;914;0
WireConnection;733;1;735;0
WireConnection;727;0;730;0
WireConnection;727;1;729;0
WireConnection;729;0;730;0
WireConnection;729;1;732;0
WireConnection;1137;0;727;0
WireConnection;1137;1;1138;0
WireConnection;1137;2;1139;0
WireConnection;1138;0;727;0
WireConnection;1138;1;1132;0
WireConnection;646;0;66;3
WireConnection;904;0;618;0
WireConnection;903;0;913;0
WireConnection;903;3;743;0
ASEEND*/
//CHKSM=3C1B3801E524E870E222ABCEB004B3652B92B746