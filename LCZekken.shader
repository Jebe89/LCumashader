// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Zekken"
{
	Properties
	{
		[Header(Diffuse)]_MainTex("Diffuse Map (_diff)", 2D) = "white" {}
		[NoScaleOffset]_DiffuseMap2("Diffuse Map2", 2D) = "black" {}
		[HDR]_Diffuse2Color("Diffuse2Color", Color) = (1,1,1,1)
		_Diffuse2TilingOffset1("Diffuse2Tiling&Offset1", Vector) = (1,1,0,0)
		_Diffuse2TilingOffset2("Diffuse2Tiling&Offset2", Vector) = (1,1,0,0)
		[NoScaleOffset]_DiffuseMap3("Diffuse Map3", 2D) = "black" {}
		[HDR]_Diffuse3Color("Diffuse3Color", Color) = (1,1,1,1)
		_Diffuse3TilingOffset1("Diffuse3Tiling&Offset1", Vector) = (1,1,0,0)
		_Diffuse3TilingOffset2("Diffuse3Tiling&Offset2", Vector) = (1,1,0,0)
		[HDR]_ToonBrightColor("ToonBrightColor", Color) = (1,1,1,0)
		[Header(Shadow)]_ShadTex("Shaded Diffuse (_shad_c)", 2D) = "gray" {}
		[Toggle]_UseShadowMaskVertexColorA("Use ShadowMask (VertexColorA)", Float) = 0
		[HDR]_Diffuse2ShadowColor("Diffuse2ShadowColor", Color) = (0.5,0.5,0.5,1)
		[HDR]_Diffuse3ShadowColor("Diffuse3ShadowColor", Color) = (0.5,0.5,0.5,1)
		[HDR]_ToonDarkColor("ToonDarkColor", Color) = (1,1,1,0)
		_BumpMap("Normal Map", 2D) = "bump" {}
		[Toggle]_OnlyPaintedShadow("Only Painted Shadow", Float) = 0
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[HDR]_GlobalShadowColor("GlobalShadowColor", Color) = (1,1,1,1)
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 1
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 1
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 1
		_BaseTex("TripleMaskMap (_base)", 2D) = "black" {}
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
		[Header(Outline)][Toggle]_Outline("Outline", Float) = 0
		_OutlineClip("OutlineClip", Range( 0 , 1)) = 0.5
		[Toggle]_UseOutlineMaskVertexColorG("Use OutlineMask (VertexColorG)", Float) = 0
		[HDR]_OutlineColor("OutlineColor", Color) = (0,0,0,0)
		[Toggle]_MixDiffuseinOutlineColor("Mix Diffuse in OutlineColor", Float) = 0
		_OutlineLightColor("OutlineLightColor", Range( 0 , 1)) = 1
		_OutlineWidth("OutlineWidth", Float) = 0
		[Toggle]_UseOutlineWidthMaskVertexColorR("Use OutlineWidthMask (VertexColorR)", Float) = 0
		[Toggle]_OutlineDistanceAdjust("Outline Distance Adjust", Float) = 0
		_MinDistance("MinDistance", Float) = 1
		_MaxDistance("MaxDistance", Float) = 2
		_MinDistanceRemap("MinDistanceRemap", Float) = 1
		_MaxDistanceRemap("MaxDistanceRemap", Float) = 10
		[Toggle]_OutlineZPushAdjust("Outline ZPush Adjust", Float) = 0
		_OutlineZPush("Outline ZPush", Float) = -0.001
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
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
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
			
			inline float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max( 0.001f , dot( inVec , inVec ) );
				return inVec* rsqrt( dp3);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float OutlineWidth740 = ( (( _UseOutlineWidthMaskVertexColorR )?( v.ase_color.r ):( 1.0 )) * ( _OutlineWidth * 0.01 ) );
				float4 unityObjectToClipPos1125 = UnityObjectToClipPos( v.vertex.xyz );
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float4 transform748 = mul(unity_WorldToObject,float4( ase_worldViewDir , 0.0 ));
				
				o.ase_texcoord8.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = ( float4( ( OutlineWidth740 * v.normal * (( _OutlineDistanceAdjust )?( (_MinDistanceRemap + (saturate( (0.0 + (unityObjectToClipPos1125.w - _MinDistance) * (1.0 - 0.0) / (_MaxDistance - _MinDistance)) ) - 0.0) * (_MaxDistanceRemap - _MinDistanceRemap) / (1.0 - 0.0)) ):( 1.0 )) ) , 0.0 ) + (( _OutlineZPushAdjust )?( ( transform748 * _OutlineZPush ) ):( float4( 0,0,0,0 ) )) ).xyz;
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
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_1164_0 = max( ase_lightColor.rgb , temp_cast_0 );
				float3 worldPos1045 = worldPos;
				float localPureLightAttenuation1045 = PureLightAttenuation( worldPos1045 );
				float3 temp_output_1046_0 = ( temp_output_1164_0 * (( _ShadowinLightColor )?( float4(atten,0,0,0) ):( localPureLightAttenuation1045 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1048 = temp_output_1046_0;
				#else
				float3 staticSwitch1048 = temp_output_1164_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float2 uv_BumpMap = IN.ase_texcoord8.xy * _BumpMap_ST.xy + _BumpMap_ST.zw;
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal1174 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1174 = normalize( float3(dot(tanToWorld0,tanNormal1174), dot(tanToWorld1,tanNormal1174), dot(tanToWorld2,tanNormal1174)) );
				float3 WorldNormal1173 = worldNormal1174;
				float4 appendResult1190 = (float4(WorldNormal1173 , 1.0));
				float4 Normal1188 = appendResult1190;
				float3 localShadeSH9out1188 = ShadeSH9out( Normal1188 );
				float3 appendResult1184 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1185 = ASESafeNormalize( appendResult1184 );
				float4 appendResult1189 = (float4(normalizeResult1185 , _IndirectLightBiasSample1.w));
				float4 Normal1186 = appendResult1189;
				float3 localShadeSH9out1186 = ShadeSH9out( Normal1186 );
				float3 appendResult1193 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1194 = ASESafeNormalize( appendResult1193 );
				float4 appendResult1196 = (float4(normalizeResult1194 , _IndirectLightBiasSample2.w));
				float4 Normal1195 = appendResult1196;
				float3 localShadeSH9out1195 = ShadeSH9out( Normal1195 );
				float3 lerpResult1182 = lerp( localShadeSH9out1188 , max( localShadeSH9out1186 , localShadeSH9out1195 ) , _IndirectBiasSampleRate);
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1048 ):( temp_output_1046_0 )) , temp_cast_3 ) , min( max( lerpResult1182 , temp_cast_4 ) , temp_cast_5 ) );
				float3 temp_cast_6 = (_MinDirectLight).xxx;
				float3 temp_cast_7 = (_MaxDirectLight).xxx;
				float3 temp_cast_8 = (_MinIndirectLight).xxx;
				float3 temp_cast_9 = (_MaxIndirectLight).xxx;
				float grayscale1083 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_10 = (grayscale1083).xxx;
				float3 lerpResult1082 = lerp( temp_output_1005_0 , temp_cast_10 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1082;
				float4 lerpResult1168 = lerp( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff345 ) ):( _OutlineColor )) , ( (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff345 ) ):( _OutlineColor )) * float4( LightColor208 , 0.0 ) ) , _OutlineLightColor);
				clip( (( _Outline )?( (( _UseOutlineMaskVertexColorG )?( IN.ase_color.g ):( 1.0 )) ):( 0.0 )) - _OutlineClip);
				
				float3 Color = lerpResult1168.rgb;
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
			uniform sampler2D _DiffuseMap2;
			uniform float4 _Diffuse2TilingOffset1;
			uniform float4 _Diffuse2Color;
			uniform float4 _Diffuse2TilingOffset2;
			uniform sampler2D _DiffuseMap3;
			uniform float4 _Diffuse3TilingOffset1;
			uniform float4 _Diffuse3Color;
			uniform float4 _Diffuse3TilingOffset2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _Diffuse2ShadowColor;
			uniform float4 _Diffuse3ShadowColor;
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
			
			float IsThereALight1160(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float vertexToFrag1161 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1161;
				
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
				float4 lerpResult1077 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1078 = clamp( lerpResult1077 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 tanNormal1174 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1174 = normalize( float3(dot(tanToWorld0,tanNormal1174), dot(tanToWorld1,tanNormal1174), dot(tanToWorld2,tanNormal1174)) );
				float3 WorldNormal1173 = worldNormal1174;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
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
				float dotResult779 = dot( LightDir801 , WorldNormal1173 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1045 = ase_worldPos;
				float localPureLightAttenuation1045 = PureLightAttenuation( worldPos1045 );
				float RimAtten1061 = localPureLightAttenuation1045;
				float lerpResult1073 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1173 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1164_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1046_0 = ( temp_output_1164_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1045 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1048 = temp_output_1046_0;
				#else
				float3 staticSwitch1048 = temp_output_1164_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1190 = (float4(WorldNormal1173 , 1.0));
				float4 Normal1188 = appendResult1190;
				float3 localShadeSH9out1188 = ShadeSH9out( Normal1188 );
				float3 appendResult1184 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1185 = ASESafeNormalize( appendResult1184 );
				float4 appendResult1189 = (float4(normalizeResult1185 , _IndirectLightBiasSample1.w));
				float4 Normal1186 = appendResult1189;
				float3 localShadeSH9out1186 = ShadeSH9out( Normal1186 );
				float3 appendResult1193 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1194 = ASESafeNormalize( appendResult1193 );
				float4 appendResult1196 = (float4(normalizeResult1194 , _IndirectLightBiasSample2.w));
				float4 Normal1195 = appendResult1196;
				float3 localShadeSH9out1195 = ShadeSH9out( Normal1195 );
				float3 lerpResult1182 = lerp( localShadeSH9out1188 , max( localShadeSH9out1186 , localShadeSH9out1195 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1048 ):( temp_output_1046_0 )) , temp_cast_4 ) , min( max( lerpResult1182 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1083 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1083).xxx;
				float3 lerpResult1082 = lerp( temp_output_1005_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1082;
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1161 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 appendResult1093 = (float2(_Diffuse2TilingOffset1.x , _Diffuse2TilingOffset1.y));
				float2 appendResult1094 = (float2(_Diffuse2TilingOffset1.z , _Diffuse2TilingOffset1.w));
				float2 texCoord1153 = i.ase_texcoord2.xy * appendResult1093 + appendResult1094;
				float2 appendResult1097 = (float2(_Diffuse2TilingOffset2.x , _Diffuse2TilingOffset2.y));
				float2 appendResult1098 = (float2(_Diffuse2TilingOffset2.z , _Diffuse2TilingOffset2.w));
				float2 texCoord1154 = i.ase_texcoord2.xy * appendResult1097 + appendResult1098;
				float4 diff21027 = saturate( ( ( tex2D( _DiffuseMap2, texCoord1153 ) * _Diffuse2Color ) + ( tex2D( _DiffuseMap2, texCoord1154 ) * _Diffuse2Color ) ) );
				float4 lerpResult1030 = lerp( diff345 , diff21027 , (diff21027).a);
				float2 appendResult1107 = (float2(_Diffuse3TilingOffset1.x , _Diffuse3TilingOffset1.y));
				float2 appendResult1108 = (float2(_Diffuse3TilingOffset1.z , _Diffuse3TilingOffset1.w));
				float2 texCoord1106 = i.ase_texcoord2.xy * appendResult1107 + appendResult1108;
				float2 appendResult1102 = (float2(_Diffuse3TilingOffset2.x , _Diffuse3TilingOffset2.y));
				float2 appendResult1103 = (float2(_Diffuse3TilingOffset2.z , _Diffuse3TilingOffset2.w));
				float2 texCoord1101 = i.ase_texcoord2.xy * appendResult1102 + appendResult1103;
				float4 diff31143 = saturate( ( ( tex2D( _DiffuseMap3, texCoord1106 ) * _Diffuse3Color ) + ( tex2D( _DiffuseMap3, texCoord1101 ) * _Diffuse3Color ) ) );
				float4 lerpResult1146 = lerp( lerpResult1030 , diff31143 , (diff31143).a);
				float DiffuseLightFactor1158 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( lerpResult1146 , ( lerpResult1146 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1158);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1035 = lerp( shad_c330 , ( diff21027 * _Diffuse2ShadowColor ) , (diff21027).a);
				float4 lerpResult1152 = lerp( lerpResult1035 , ( diff31143 * _Diffuse3ShadowColor ) , (diff31143).a);
				float4 lerpResult1008 = lerp( lerpResult1152 , ( lerpResult1152 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1158);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1160 = IsThereALight1160();
				float HalfShadowAttenuation1053 = ( localIsThereALight1160 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1053 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1173 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1070 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1070 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1078 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1078 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1073 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
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
			uniform sampler2D _DiffuseMap2;
			uniform float4 _Diffuse2TilingOffset1;
			uniform float4 _Diffuse2Color;
			uniform float4 _Diffuse2TilingOffset2;
			uniform sampler2D _DiffuseMap3;
			uniform float4 _Diffuse3TilingOffset1;
			uniform float4 _Diffuse3Color;
			uniform float4 _Diffuse3TilingOffset2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _Diffuse2ShadowColor;
			uniform float4 _Diffuse3ShadowColor;
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
			
			float IsThereALight1160(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float vertexToFrag1161 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1161;
				
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
				float4 lerpResult1077 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1078 = clamp( lerpResult1077 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 tanNormal1174 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1174 = normalize( float3(dot(tanToWorld0,tanNormal1174), dot(tanToWorld1,tanNormal1174), dot(tanToWorld2,tanNormal1174)) );
				float3 WorldNormal1173 = worldNormal1174;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
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
				float dotResult779 = dot( LightDir801 , WorldNormal1173 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1045 = ase_worldPos;
				float localPureLightAttenuation1045 = PureLightAttenuation( worldPos1045 );
				float RimAtten1061 = localPureLightAttenuation1045;
				float lerpResult1073 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1173 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1164_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1046_0 = ( temp_output_1164_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1045 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1048 = temp_output_1046_0;
				#else
				float3 staticSwitch1048 = temp_output_1164_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1190 = (float4(WorldNormal1173 , 1.0));
				float4 Normal1188 = appendResult1190;
				float3 localShadeSH9out1188 = ShadeSH9out( Normal1188 );
				float3 appendResult1184 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1185 = ASESafeNormalize( appendResult1184 );
				float4 appendResult1189 = (float4(normalizeResult1185 , _IndirectLightBiasSample1.w));
				float4 Normal1186 = appendResult1189;
				float3 localShadeSH9out1186 = ShadeSH9out( Normal1186 );
				float3 appendResult1193 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1194 = ASESafeNormalize( appendResult1193 );
				float4 appendResult1196 = (float4(normalizeResult1194 , _IndirectLightBiasSample2.w));
				float4 Normal1195 = appendResult1196;
				float3 localShadeSH9out1195 = ShadeSH9out( Normal1195 );
				float3 lerpResult1182 = lerp( localShadeSH9out1188 , max( localShadeSH9out1186 , localShadeSH9out1195 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1048 ):( temp_output_1046_0 )) , temp_cast_4 ) , min( max( lerpResult1182 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1083 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1083).xxx;
				float3 lerpResult1082 = lerp( temp_output_1005_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1082;
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1161 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 appendResult1093 = (float2(_Diffuse2TilingOffset1.x , _Diffuse2TilingOffset1.y));
				float2 appendResult1094 = (float2(_Diffuse2TilingOffset1.z , _Diffuse2TilingOffset1.w));
				float2 texCoord1153 = i.ase_texcoord2.xy * appendResult1093 + appendResult1094;
				float2 appendResult1097 = (float2(_Diffuse2TilingOffset2.x , _Diffuse2TilingOffset2.y));
				float2 appendResult1098 = (float2(_Diffuse2TilingOffset2.z , _Diffuse2TilingOffset2.w));
				float2 texCoord1154 = i.ase_texcoord2.xy * appendResult1097 + appendResult1098;
				float4 diff21027 = saturate( ( ( tex2D( _DiffuseMap2, texCoord1153 ) * _Diffuse2Color ) + ( tex2D( _DiffuseMap2, texCoord1154 ) * _Diffuse2Color ) ) );
				float4 lerpResult1030 = lerp( diff345 , diff21027 , (diff21027).a);
				float2 appendResult1107 = (float2(_Diffuse3TilingOffset1.x , _Diffuse3TilingOffset1.y));
				float2 appendResult1108 = (float2(_Diffuse3TilingOffset1.z , _Diffuse3TilingOffset1.w));
				float2 texCoord1106 = i.ase_texcoord2.xy * appendResult1107 + appendResult1108;
				float2 appendResult1102 = (float2(_Diffuse3TilingOffset2.x , _Diffuse3TilingOffset2.y));
				float2 appendResult1103 = (float2(_Diffuse3TilingOffset2.z , _Diffuse3TilingOffset2.w));
				float2 texCoord1101 = i.ase_texcoord2.xy * appendResult1102 + appendResult1103;
				float4 diff31143 = saturate( ( ( tex2D( _DiffuseMap3, texCoord1106 ) * _Diffuse3Color ) + ( tex2D( _DiffuseMap3, texCoord1101 ) * _Diffuse3Color ) ) );
				float4 lerpResult1146 = lerp( lerpResult1030 , diff31143 , (diff31143).a);
				float DiffuseLightFactor1158 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( lerpResult1146 , ( lerpResult1146 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1158);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1035 = lerp( shad_c330 , ( diff21027 * _Diffuse2ShadowColor ) , (diff21027).a);
				float4 lerpResult1152 = lerp( lerpResult1035 , ( diff31143 * _Diffuse3ShadowColor ) , (diff31143).a);
				float4 lerpResult1008 = lerp( lerpResult1152 , ( lerpResult1152 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1158);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1160 = IsThereALight1160();
				float HalfShadowAttenuation1053 = ( localIsThereALight1160 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1053 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1173 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1070 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1070 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1078 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1078 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1073 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
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
			uniform sampler2D _DiffuseMap2;
			uniform float4 _Diffuse2TilingOffset1;
			uniform float4 _Diffuse2Color;
			uniform float4 _Diffuse2TilingOffset2;
			uniform sampler2D _DiffuseMap3;
			uniform float4 _Diffuse3TilingOffset1;
			uniform float4 _Diffuse3Color;
			uniform float4 _Diffuse3TilingOffset2;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _Diffuse2ShadowColor;
			uniform float4 _Diffuse3ShadowColor;
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
			
			float IsThereALight1160(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
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
				float vertexToFrag1161 = v.ase_color.a;
				o.ase_texcoord1.w = vertexToFrag1161;
				
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
				float4 lerpResult1077 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1078 = clamp( lerpResult1077 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 tanNormal1174 = UnpackNormal( tex2D( _BumpMap, uv_BumpMap ) );
				float3 worldNormal1174 = normalize( float3(dot(tanToWorld0,tanNormal1174), dot(tanToWorld1,tanNormal1174), dot(tanToWorld2,tanNormal1174)) );
				float3 WorldNormal1173 = worldNormal1174;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
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
				float dotResult779 = dot( LightDir801 , WorldNormal1173 );
				float LambertTerm552 = dotResult779;
				float3 worldPos1045 = ase_worldPos;
				float localPureLightAttenuation1045 = PureLightAttenuation( worldPos1045 );
				float RimAtten1061 = localPureLightAttenuation1045;
				float lerpResult1073 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation2);
				float dotResult129 = dot( ase_worldViewDir , WorldNormal1173 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord2.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_output_1164_0 = max( ase_lightColor.rgb , temp_cast_1 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1046_0 = ( temp_output_1164_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1045 )) );
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				float3 temp_cast_3 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1048 = temp_output_1046_0;
				#else
				float3 staticSwitch1048 = temp_output_1164_0;
				#endif
				float3 temp_cast_4 = (_MaxDirectLight).xxx;
				float4 appendResult1190 = (float4(WorldNormal1173 , 1.0));
				float4 Normal1188 = appendResult1190;
				float3 localShadeSH9out1188 = ShadeSH9out( Normal1188 );
				float3 appendResult1184 = (float3(_IndirectLightBiasSample1.x , _IndirectLightBiasSample1.y , _IndirectLightBiasSample1.z));
				float3 normalizeResult1185 = ASESafeNormalize( appendResult1184 );
				float4 appendResult1189 = (float4(normalizeResult1185 , _IndirectLightBiasSample1.w));
				float4 Normal1186 = appendResult1189;
				float3 localShadeSH9out1186 = ShadeSH9out( Normal1186 );
				float3 appendResult1193 = (float3(_IndirectLightBiasSample2.x , _IndirectLightBiasSample2.y , _IndirectLightBiasSample2.z));
				float3 normalizeResult1194 = ASESafeNormalize( appendResult1193 );
				float4 appendResult1196 = (float4(normalizeResult1194 , _IndirectLightBiasSample2.w));
				float4 Normal1195 = appendResult1196;
				float3 localShadeSH9out1195 = ShadeSH9out( Normal1195 );
				float3 lerpResult1182 = lerp( localShadeSH9out1188 , max( localShadeSH9out1186 , localShadeSH9out1195 ) , _IndirectBiasSampleRate);
				float3 temp_cast_5 = (_MinIndirectLight).xxx;
				float3 temp_cast_6 = (_MaxIndirectLight).xxx;
				float3 temp_output_1005_0 = max( min( (( _NoShadowinDirectionalLightColor )?( staticSwitch1048 ):( temp_output_1046_0 )) , temp_cast_4 ) , min( max( lerpResult1182 , temp_cast_5 ) , temp_cast_6 ) );
				float3 temp_cast_7 = (_MinDirectLight).xxx;
				float3 temp_cast_8 = (_MaxDirectLight).xxx;
				float3 temp_cast_9 = (_MinIndirectLight).xxx;
				float3 temp_cast_10 = (_MaxIndirectLight).xxx;
				float grayscale1083 = dot(temp_output_1005_0, float3(0.299,0.587,0.114));
				float3 temp_cast_11 = (grayscale1083).xxx;
				float3 lerpResult1082 = lerp( temp_output_1005_0 , temp_cast_11 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1082;
				float GlobalLightFactor1011 = _GlobalLightFactor;
				float4 lerpResult1016 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float vertexToFrag1161 = i.ase_texcoord1.w;
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float2 appendResult1093 = (float2(_Diffuse2TilingOffset1.x , _Diffuse2TilingOffset1.y));
				float2 appendResult1094 = (float2(_Diffuse2TilingOffset1.z , _Diffuse2TilingOffset1.w));
				float2 texCoord1153 = i.ase_texcoord2.xy * appendResult1093 + appendResult1094;
				float2 appendResult1097 = (float2(_Diffuse2TilingOffset2.x , _Diffuse2TilingOffset2.y));
				float2 appendResult1098 = (float2(_Diffuse2TilingOffset2.z , _Diffuse2TilingOffset2.w));
				float2 texCoord1154 = i.ase_texcoord2.xy * appendResult1097 + appendResult1098;
				float4 diff21027 = saturate( ( ( tex2D( _DiffuseMap2, texCoord1153 ) * _Diffuse2Color ) + ( tex2D( _DiffuseMap2, texCoord1154 ) * _Diffuse2Color ) ) );
				float4 lerpResult1030 = lerp( diff345 , diff21027 , (diff21027).a);
				float2 appendResult1107 = (float2(_Diffuse3TilingOffset1.x , _Diffuse3TilingOffset1.y));
				float2 appendResult1108 = (float2(_Diffuse3TilingOffset1.z , _Diffuse3TilingOffset1.w));
				float2 texCoord1106 = i.ase_texcoord2.xy * appendResult1107 + appendResult1108;
				float2 appendResult1102 = (float2(_Diffuse3TilingOffset2.x , _Diffuse3TilingOffset2.y));
				float2 appendResult1103 = (float2(_Diffuse3TilingOffset2.z , _Diffuse3TilingOffset2.w));
				float2 texCoord1101 = i.ase_texcoord2.xy * appendResult1102 + appendResult1103;
				float4 diff31143 = saturate( ( ( tex2D( _DiffuseMap3, texCoord1106 ) * _Diffuse3Color ) + ( tex2D( _DiffuseMap3, texCoord1101 ) * _Diffuse3Color ) ) );
				float4 lerpResult1146 = lerp( lerpResult1030 , diff31143 , (diff31143).a);
				float DiffuseLightFactor1158 = _DiffuseLightFactor;
				float4 lerpResult1009 = lerp( lerpResult1146 , ( lerpResult1146 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1158);
				float4 lit_diff349 = lerpResult1009;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( vertexToFrag1161 ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord2.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1035 = lerp( shad_c330 , ( diff21027 * _Diffuse2ShadowColor ) , (diff21027).a);
				float4 lerpResult1152 = lerp( lerpResult1035 , ( diff31143 * _Diffuse3ShadowColor ) , (diff31143).a);
				float4 lerpResult1008 = lerp( lerpResult1152 , ( lerpResult1152 * float4( LightColor208 , 0.0 ) * _GlobalShadowColor ) , DiffuseLightFactor1158);
				float4 lit_shad344 = lerpResult1008;
				float ShadowMask408 = tex2DNode66.r;
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float localIsThereALight1160 = IsThereALight1160();
				float HalfShadowAttenuation1053 = ( localIsThereALight1160 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation1053 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1016 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( WorldNormal1173 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode941 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul970 = ( ( tex2DNode941.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd969 = ( _RflAddBias * 10.0 * pow( tex2DNode941.r , _RflAddPowVal ) );
				float ReflectionMask938 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult947 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul970 ) + ( RflAdd969 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask938 ) ));
				float4 Env2SpecShaded_diff946 = lerpResult947;
				float lerpResult1070 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1061 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , WorldNormal1173 );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1070 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1078 );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff946 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1078 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1073 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord2.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1021 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1011);
				float2 uv_EmiTex = i.ase_texcoord2.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime928 = _Time.y * 0.1;
				float2 appendResult923 = (float2(( _DynEmiScrollX * mulTime928 ) , ( mulTime928 * _DynEmiScrollY )));
				float2 texCoord922 = i.ase_texcoord2.xy * float2( 1,1 ) + appendResult923;
				float4 DynEmi916 = tex2D( _DynamicEmmisive_dyn_emi, texCoord922 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord2.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask917 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1021 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi916 * DynEmiMask917 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_22 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_22 , Refined_diff612 , _Saturation);
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
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;1198;-5848.829,1503.677;Inherit;False;3511.251;984.177;;61;1005;1046;1047;1048;1082;1083;1084;208;826;1010;1157;1011;825;773;1042;1043;1045;1044;1061;1158;1164;1165;1166;1167;1182;1050;1051;1160;1159;1053;1049;1052;802;779;781;778;776;552;1181;800;801;799;797;798;303;301;1187;1188;1191;1190;1184;1185;1186;1189;1193;1194;1195;1196;1192;1183;1197;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1175;-3504.677,-3671.877;Inherit;False;1277.977;3229.583;;43;600;620;916;917;350;355;559;408;646;436;938;937;66;67;68;918;919;401;1172;1173;1174;330;345;1039;1099;1100;1110;64;65;1139;1140;1040;1129;1144;1143;1088;1112;1111;1113;1090;1027;1086;1109;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1155;-2149.761,-3456.676;Inherit;False;1604.058;2011.704;;65;387;394;386;381;405;393;371;369;365;366;368;370;648;399;383;372;649;382;647;392;375;364;338;337;339;335;334;1059;1060;1055;1058;1057;1056;336;1033;340;1036;1037;1034;1148;1151;1035;1150;1152;342;1008;344;343;1012;420;1149;346;1029;1032;1030;348;1009;349;1013;347;1146;1145;1147;1161;1162;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1127;-600.0047,2088.607;Inherit;False;1427.902;1567.508;;37;727;735;737;738;739;740;742;734;729;732;733;914;913;730;1117;1118;1119;1120;1121;1122;1123;1124;1125;1126;744;746;745;743;747;748;749;750;751;1168;1169;1170;1171;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1116;-4267.763,-3484.107;Inherit;False;713.9761;1118.281;;16;1101;1102;1103;1104;1097;1098;1095;1093;1094;1092;1106;1107;1108;1105;1153;1154;Tiling&Offset;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1081;-2248.101,1754.914;Inherit;False;1542.444;2275.487;;73;410;411;413;423;425;424;427;421;409;412;540;452;453;454;458;459;461;455;462;457;456;541;359;358;564;565;570;563;566;546;562;357;356;360;578;354;560;460;426;568;569;1070;1064;1071;1063;573;1072;572;556;1076;1077;1078;1079;1080;558;557;543;547;548;561;576;577;567;544;545;1073;1067;1066;553;1074;1075;555;575;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;998;-2309.716,415.2763;Inherit;False;1544.887;1211.35;;31;951;952;953;954;955;941;981;983;994;995;969;946;947;961;976;970;958;997;992;993;973;949;979;991;975;980;956;964;945;957;1001;Reflection Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;936;-585.2881,290.5046;Inherit;False;949.0878;1702.382;;28;610;603;605;604;606;612;602;607;608;609;611;915;613;614;615;616;617;618;929;930;931;932;933;934;935;1018;1020;1021;Emmisive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;487.8755,371.5081;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;850;-4232.141,-313.5239;Inherit;False;1673.75;1710.115;;48;481;486;489;490;492;487;485;488;491;463;484;482;483;478;477;493;475;473;465;129;128;136;518;521;520;494;495;496;497;498;500;501;503;504;505;507;508;509;512;511;513;510;502;499;1177;1178;1179;1180;Matrix And Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;642;-586.7119,-886.787;Inherit;False;1479.274;1043.779;;22;579;580;582;584;587;588;586;583;585;589;590;621;592;593;596;595;594;597;598;601;599;591;Dirt Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;640;-2470.122,-258.7152;Inherit;False;1798.293;550.92;;17;531;535;529;449;450;527;528;537;448;451;533;530;542;532;840;852;871;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;28;444;440;439;442;539;432;433;428;437;430;435;624;429;441;443;445;315;319;322;636;623;438;434;872;873;1015;1016;1017;Specular Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;432;-1865.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;433;-1721.69,-989.317;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;428;-1759.332,-1107.791;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;-1583.632,-1107.891;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;624;-2096.74,-990.3093;Inherit;False;623;fixed_specpower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;429;-1949.934,-1107.891;Inherit;False;136;Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;319;-1591.851,-1243.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;322;-1449.967,-1244.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;11;False;1;FLOAT;0
Node;AmplifyShaderEditor.Exp2OpNode;636;-1314.541,-1240.271;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;434;-1424.889,-1108.316;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;579;-536.7119,-548.8462;Inherit;False;Property;_DirtScale;DirtScale;64;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;580;-214.7119,-655.8467;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;582;-70.7123,-657.8467;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;587;365.8105,-661.7866;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;283.8108,-533.7861;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;268.811,-829.787;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;583;-14.18952,-836.787;Inherit;False;Property;_DirtRateR;DirtRateR;65;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;585;5.810593,-482.7861;Inherit;False;Property;_DirtRateB;DirtRateB;67;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
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
Node;AmplifyShaderEditor.RangedFloatNode;584;91.8107,-675.7864;Inherit;False;Property;_DirtRateG;DirtRateG;66;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;481;-3773.483,344.0869;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-3936.808,276.9309;Inherit;False;Constant;_1_;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;489;-3507.05,284.4852;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;490;-3389.811,136.4999;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;492;-3557.759,76.68634;Inherit;False;Constant;_1_1;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;487;-3389.752,294.985;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;485;-3620.706,508.5616;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;488;-3238.331,297.0754;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;491;-3118.547,184.1854;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;463;-2930.376,212.8133;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;484;-3772.132,484.3584;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;482;-3482.12,375.0722;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;483;-3887.127,488.7747;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3795.328,220.9915;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;36;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;477;-4176.228,439.1925;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;35;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2793.017,206.679;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;475;-3528.711,162.6278;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;473;-3920.037,361.8777;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;465;-3782.271,561.0444;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;129;-3703.908,-172.3569;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;128;-3918.632,-263.524;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;136;-3564.584,-173.037;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;518;-3063.643,-136.7392;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;521;-2923.435,-138.6232;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;520;-3254.004,-185.3375;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;494;-3788.188,1208.591;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;495;-3779.401,991.6329;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;496;-3942.723,924.4769;Inherit;False;Constant;_1_2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;497;-3512.966,932.0314;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;498;-3395.728,784.0452;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;500;-3395.669,942.5309;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;-3626.623,1156.108;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;503;-3244.249,944.6212;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;504;-3124.464,831.731;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;505;-2936.293,860.3596;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;507;-3778.05,1131.905;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;-3488.036,1022.619;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;509;-3893.043,1136.321;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;512;-4182.141,1086.739;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;43;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;511;-3801.243,868.5377;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;44;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;513;-2798.391,859.7902;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;510;-3925.953,1009.424;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;502;-3534.627,810.173;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;499;-3552.117,724.231;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;869;574.3199,972.5614;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;111;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;573.0298,697.452;Inherit;False;Property;_StencilComparison;Stencil Comparison;108;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;575.0732,791.5167;Inherit;False;Property;_StencilPassFront;Stencil PassFront;109;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;575.3414,883.6737;Inherit;False;Property;_StencilFailFront;Stencil FailFront;110;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;544.6917,599.6441;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;107;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;539.5822,510.7573;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;106;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;537.8758,421.5081;Inherit;False;Property;_StencilReference;Stencil Reference;105;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-1912.664,-1243.571;Inherit;False;Property;_SpecularPower;SpecularPower;25;0;Create;True;0;0;0;False;0;False;1.2;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-1281.689,-1068.516;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;438;-1135.989,-1072.691;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;539;-1662.804,-797.59;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-1859.682,-527.5886;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;437;-1572.076,-1005.741;Inherit;False;436;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;873;-1445.568,-922.5085;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;872;-1730.45,-883.5449;Inherit;False;Property;_SpecularBias;Specular Bias;26;0;Create;True;0;0;0;False;0;False;0.2;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;921;-4344.181,-1126.246;Inherit;False;785.9297;346.1168;;7;928;927;926;925;924;923;922;DynEmi UV Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-180.452,751.7504;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;607;-530.7629,678.1381;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;608;-357.7633,680.1382;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;-420.3516,756.8454;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;915;-509.3508,1006.975;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;70;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-483.534,1789.538;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-234.6367,1650.734;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-111.1865,1700.939;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-535.1091,1876.887;Inherit;False;Property;_Saturation;Saturation;78;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;139.7997,1704.02;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;929;-529.3475,1095.718;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;930;-356.3478,1099.018;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;931;-185.4479,1098.667;Inherit;False;5;5;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;932;-499.0545,1175.815;Inherit;False;916;DynEmi;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;933;-509.0545,1254.815;Inherit;False;917;DynEmiMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;935;-535.2881,1514.694;Inherit;False;Property;_DynEmmisiveStrength;DynEmmisiveStrength;76;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;529;-1469.785,208.999;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-1942.22,113.0611;Inherit;False;Property;_EnvRate;EnvRate;50;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-884.5729,-140.2725;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;532;-1028.596,-135.7047;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;-1510.71,-220.1789;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1179.113,-100.33;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;852;-1650.34,116.4299;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;527;-2459.6,34.95194;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;448;-2446.219,-114.0451;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;449;-2251.297,-76.40938;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;450;-2103.098,-68.61056;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;451;-2259.097,30.19215;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-1231.858,133.0557;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;840;-1098.014,36.07924;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;537;-1674.276,-21.24188;Inherit;False;Property;_EnvBias;EnvBias;51;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;871;-1396.189,-21.20377;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;528;-1969.016,-103.655;Inherit;True;Property;_EnvTex;EnvironmentMap (_env);49;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;951;-2218.376,706.4171;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;952;-2204.996,557.4197;Inherit;False;Constant;_11_1;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;953;-2010.074,595.0557;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;954;-1861.875,602.8546;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;955;-2017.874,701.6572;Inherit;False;Constant;_05_1;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;981;-1418.065,559.0818;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;995;-1458.651,465.2763;Inherit;False;Property;_RflAddBias;RflAddBias;58;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;969;-1044.316,546.5311;Inherit;False;RflAdd;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;946;-1320.412,991.369;Inherit;False;Env2SpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;947;-1466.457,995.937;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;961;-2259.716,987.0363;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;970;-988.8291,657.3665;Inherit;False;RflMul;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;958;-1719.391,758.9619;Inherit;False;Property;_RflMulBias;RflMulBias;59;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;973;-2226.928,1075.024;Inherit;False;970;RflMul;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;949;-2019.576,1062.029;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;979;-1715.086,1146.964;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;991;-1868.632,1208.619;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;980;-2038.952,1162.754;Inherit;False;969;RflAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;956;-1807.585,1439.007;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;964;-2022.054,1510.627;Inherit;False;938;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;945;-2088.001,1425.217;Inherit;False;Property;_RflRate;RflRate;56;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;957;-1661.144,1436.049;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;983;-1728.274,465.8071;Inherit;False;Property;_RflAddPowVal;RflAddPowVal;57;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;997;-1434.621,875.3804;Inherit;False;Property;_RflMulOffset;RflMulOffset;60;0;Create;True;0;0;0;False;0;False;0.5;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;993;-1118.825,677.0558;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.490566;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;941;-1728.045,566.4398;Inherit;True;Property;_RflTex;ReflectionMap (_rfl);53;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;994;-1182.594,537.0715;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;10;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;992;-1271.873,663.473;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScaleNode;1001;-1440.431,708.86;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1003;533.9971,1187.993;Inherit;False;225;166;;1;1004;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;905;461.9754,1821.229;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;906;519.8942,1234.809;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;907;519.8942,1193.809;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;1004;583.9971,1237.993;Inherit;False;Property;_CullMode;Cull Mode;112;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;934;-508.2091,1336.936;Inherit;False;Property;_DynEmissiveColor;DynEmissiveColor;73;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;611;-444.1928,835.6896;Inherit;False;Property;_EmissiveColor;EmissiveColor;69;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;596;-209.2378,-55.00774;Inherit;False;Property;_GlobalDirtRimSpecularColor;GlobalDirtRimSpecularColor;63;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;595;-414.527,-135.9775;Inherit;False;Property;_GlobalDirtColor;GlobalDirtColor;62;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;442;-1898.68,-797.988;Inherit;False;Property;_SpecularColor;SpecularColor;24;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;976;-1704.694,835.7731;Inherit;False;Property;_ReflectionMulColor;ReflectionMulColor;55;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;441;-1894.259,-615.4928;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1016;-1434.189,-656.3539;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1017;-1643.274,-713.0028;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;444;-1643.881,-609.2066;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1015;-1670.869,-473.9094;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-1444.733,-512.2018;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;440;-1258.359,-605.7688;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-1138.669,-608.9738;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;58.26269,649.2629;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;180.2853,646.3752;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;602;-513.6968,331.1195;Inherit;False;Property;_CharaColor;CharaColor;77;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;605;-571.7874,506.5549;Inherit;False;601;DirtRim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;603;-489.9157,584.6661;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-267.8757,360.3331;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1018;-268.2223,481.1762;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1020;-285.7105,603.3796;Inherit;False;1011;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1021;-122.5304,443.265;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;615;-495.1351,1603.838;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;79;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;975;-2074.579,1246.669;Inherit;False;Property;_ReflectionAddColor;ReflectionAddColor;54;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;410;-1854.224,2123.771;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;411;-1693.025,2166.669;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;413;-1565.19,2167.199;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;423;-1411.02,2164.022;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;425;-1420.594,2270.069;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-1230.82,2118.423;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;427;-1090.145,2111.595;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;421;-2051.992,2161.686;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;-2151.923,2070.469;Inherit;False;Property;_RimStep;RimStep;30;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-1977.724,2245.968;Inherit;False;Property;_RimFeather;RimFeather;31;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;540;-1230.341,1977.872;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;452;-1838.51,2531.63;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;453;-1677.311,2574.529;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;454;-1549.475,2575.058;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;458;-1395.306,2571.881;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;459;-1404.881,2677.929;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-1215.107,2526.283;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;455;-1962.01,2653.826;Inherit;False;Property;_RimFeather2;RimFeather2;39;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;462;-1074.431,2519.453;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;457;-2136.208,2478.328;Inherit;False;Property;_RimStep2;RimStep2;38;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;456;-2053.278,2571.545;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;-1222.553,2383.244;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;359;-1512.399,1824.047;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-2089.151,1913.333;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;564;-1783.12,3029.624;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1605.267,3086.62;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1111.8,3064.419;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1352.731,3080.832;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;-1793.267,3182.62;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;546;-2072.986,3133.664;Inherit;False;Property;_RimSpecRate;RimSpecRate;32;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-980.6567,3060.866;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;357;-1897.236,1805.492;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;356;-2090.631,1805.188;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;360;-1364.399,1820.047;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;578;-1204.426,3183.758;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;354;-1742.567,1804.914;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;28;0;Create;True;0;0;0;False;1;Header(Rim);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;560;-1371.96,2980.265;Inherit;False;946;Env2SpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;460;-1437.752,2384.891;Inherit;False;Property;_RimColor2;RimColor2;37;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;426;-1453.466,1977.033;Inherit;False;Property;_RimColor;RimColor;29;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2024.014,3055.645;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;569;-2036.596,2979.398;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1070;-1818.117,2752.735;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1064;-1963.331,2807.686;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1071;-2087.009,2899.64;Inherit;False;Property;_RimAttenuation;RimAttenuation;34;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1063;-2142.839,2825.433;Inherit;False;1061;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;-2163.229,2743.493;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1072;-1651.31,2791.913;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-1508.434,2799.817;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1786.193,2906.162;Inherit;False;Property;_RimShadowRate;RimShadowRate;33;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;1076;-1940.238,3233.038;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp;1077;-1671.25,3258.136;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1078;-1518.037,3259.744;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0.2,0.2,0.2,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1079;-1937.65,3375.249;Inherit;False;Property;_CustomRimLightColor;CustomRimLightColor;46;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1080;-1905.162,3452.272;Inherit;False;Property;_MinRimLightColor;MinRimLightColor;47;0;Create;True;0;0;0;False;0;False;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;558;-2137.17,3315.444;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;45;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1406.494,3562.933;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;543;-1832.084,3530.922;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1654.232,3587.92;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-1842.232,3683.92;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;561;-1160.763,3565.719;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-1411.394,3690.531;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;-1030.568,3560.76;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;567;-2128.133,3651.168;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;40;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2080.493,3575.727;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;-2087.44,3497.602;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1073;-1842.7,3762.833;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1067;-1997.293,3821.627;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1066;-2171.452,3837.012;Inherit;False;1061;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;553;-2198.101,3756.773;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1074;-2131.773,3914.402;Inherit;False;Property;_RimAttenuation2;RimAttenuation2;42;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1075;-1683.011,3765.061;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1542.385,3766.053;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;575;-1818.585,3888.46;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;41;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;922;-3800.245,-1044.903;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;923;-3949.964,-995.9297;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;924;-4099.671,-1032.59;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;925;-4294.18,-896.1294;Inherit;False;Property;_DynEmiScrollY;DynEmi ScrollY;75;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;926;-4285.979,-1076.246;Inherit;False;Property;_DynEmiScrollX;DynEmi ScrollX;74;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;927;-4099.67,-926.6805;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;928;-4288.084,-982.6653;Inherit;False;1;0;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;735;-289.7021,2467.446;Inherit;False;Property;_UseOutlineMaskVertexColorG;Use OutlineMask (VertexColorG);92;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;737;-519.6225,2847.935;Inherit;False;Property;_OutlineWidth;OutlineWidth;96;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;738;-338.061,2689.646;Inherit;False;Property;_UseOutlineWidthMaskVertexColorR;Use OutlineWidthMask (VertexColorR);97;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;739;-48.8651,2722.983;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;740;88.32621,2711.334;Inherit;False;OutlineWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;742;-304.3557,2804.78;Inherit;False;0.01;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;734;-550.0047,2544.87;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1117;321.2654,2992.299;Inherit;False;Property;_OutlineDistanceAdjust;Outline Distance Adjust;98;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1118;-366.8959,3174.317;Inherit;False;Property;_MaxDistance;MaxDistance;100;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1119;142.2683,3021.548;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1120;-166.6838,3275.895;Inherit;False;Property;_MaxDistanceRemap;MaxDistanceRemap;102;0;Create;True;0;0;0;False;0;False;10;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1121;-164.5825,3194.933;Inherit;False;Property;_MinDistanceRemap;MinDistanceRemap;101;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1122;-365.8959,3093.317;Inherit;False;Property;_MinDistance;MinDistance;99;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1123;5.356708,3022.765;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1124;-169.1678,3021.215;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;1125;-372.5723,2926.805;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1126;-548.0723,2928.106;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalVertexDataNode;744;360.3689,2841.143;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;746;355.6645,2749.284;Inherit;False;740;OutlineWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;745;547.996,2816.648;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;743;675.8975,2935.957;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;747;-468.6016,3366.225;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldToObjectTransfNode;748;-314.3525,3364.148;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;749;-318.2483,3540.115;Inherit;False;Property;_OutlineZPush;Outline ZPush;104;0;Create;True;0;0;0;False;0;False;-0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;750;-105.0111,3363.289;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;751;45.65714,3330.445;Inherit;False;Property;_OutlineZPushAdjust;Outline ZPush Adjust;103;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;904;461.9754,1709.229;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Zekken;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;0;False;;0;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-1777.65,-1765.685;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-1766.367,-1625.581;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;386;-2053.009,-1580.155;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;381;-1611.558,-1737.572;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;405;-1428.071,-1755.781;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;393;-1615.801,-1830.679;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;371;-1397.211,-2178.643;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;369;-1770.734,-1964.725;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;365;-2041.145,-1900.637;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;366;-1595.453,-2097.885;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;368;-1786.734,-2097.726;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;370;-1205.203,-2172.589;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;399;-1029.334,-1898.787;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;383;-1191.513,-1902.631;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;372;-1606.138,-1942.643;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;649;-1434.477,-1906.965;Inherit;False;648;VertexColorShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;392;-1622.075,-1560.971;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;375;-2068.137,-1779.632;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;14;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;364;-2055.676,-2098.194;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;9;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1058;-2099.761,-2439.931;Inherit;False;1053;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1057;-2083.682,-2531.195;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1033;-2037.944,-3058.835;Inherit;False;1027;diff2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-2034.632,-3143.726;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1036;-2076.765,-2969.252;Inherit;False;Property;_Diffuse2ShadowColor;Diffuse2ShadowColor;12;1;[HDR];Create;True;0;0;0;False;0;False;0.5,0.5,0.5,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1037;-1842.554,-3058.336;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ComponentMaskNode;1034;-1847.781,-2958.538;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1148;-1660.099,-3011.218;Inherit;False;1143;diff3;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ComponentMaskNode;1151;-1508.75,-2917.418;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1035;-1697.283,-3131.486;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1150;-1489.75,-3019.418;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1152;-1348.674,-3116.989;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;342;-1084.756,-3042.579;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1008;-924.0526,-3103.754;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;344;-769.7027,-3106.888;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1296.158,-2993.124;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1012;-1080.213,-2912.347;Inherit;False;1158;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;420;-1308.611,-2910.032;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;19;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1149;-1770.549,-2879.019;Inherit;False;Property;_Diffuse3ShadowColor;Diffuse3ShadowColor;13;1;[HDR];Create;True;0;0;0;False;0;False;0.5,0.5,0.5,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;346;-2018.981,-3406.676;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1029;-2025.364,-3321.979;Inherit;False;1027;diff2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ComponentMaskNode;1032;-1864.378,-3247.941;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1030;-1689.024,-3405.328;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;348;-1099.491,-3340.614;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1009;-953.5312,-3397.866;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;349;-795.7634,-3403.723;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1013;-1122.958,-3233.246;Inherit;False;1158;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;347;-1305.584,-3277.194;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1146;-1351.665,-3397.762;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1145;-1672.148,-3285.682;Inherit;False;1143;diff3;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ComponentMaskNode;1147;-1513.43,-3223.285;Inherit;False;False;False;False;True;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;382;-2130.429,-2290.095;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;648;-1421.877,-2270.265;Inherit;False;VertexColorShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexToFragmentNode;1161;-1972.25,-2200.182;Inherit;False;False;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;647;-1750.402,-2230.825;Inherit;False;Property;_UseShadowMaskVertexColorA;Use ShadowMask (VertexColorA);11;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;338;-903.5883,-2570.022;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;337;-1038.288,-2569.723;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;339;-747.2423,-2577.187;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;335;-1207.505,-2573.24;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1305.806,-2437.24;Inherit;False;Property;_ShadowFeather;ShadowFeather;18;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-1486.504,-2711.141;Inherit;False;Property;_ShadowStep;ShadowStep;17;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1059;-1829.89,-2433.952;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1060;-1830.259,-2540.648;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1056;-2064.684,-2641.63;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1055;-1696.39,-2476.95;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;20;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1162;-1481.719,-2607.088;Inherit;False;Property;_OnlyPaintedShadow;Only Painted Shadow;16;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;913;625.9871,2238.674;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;914;355.4079,2542.73;Inherit;False;Property;_OutlineClip;OutlineClip;91;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;733;356.8368,2431.825;Inherit;False;Property;_Outline;Outline;90;0;Create;True;0;0;0;False;1;Header(Outline);False;0;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;732;-544.8004,2331.575;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;730;-559.0311,2140.348;Inherit;False;Property;_OutlineColor;OutlineColor;93;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;727;-155.4131,2162.771;Inherit;False;Property;_MixDiffuseinOutlineColor;Mix Diffuse in OutlineColor;94;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;729;-317.1455,2293.84;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1168;391.3377,2175.577;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1169;188.3168,2237.875;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1170;-49.00173,2278.357;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1171;53.31686,2360.875;Inherit;False;Property;_OutlineLightColor;OutlineLightColor;95;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1101;-3811.155,-2561.386;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1102;-3961.223,-2595.825;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1103;-3960.223,-2500.825;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;1104;-4217.763,-2601.64;Inherit;False;Property;_Diffuse3TilingOffset2;Diffuse3Tiling&Offset2;8;0;Create;True;0;0;0;False;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1107;-3953.772,-2848.465;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1108;-3952.772,-2753.465;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector4Node;1105;-4210.14,-2849.026;Inherit;False;Property;_Diffuse3TilingOffset1;Diffuse3Tiling&Offset1;7;0;Create;True;0;0;0;False;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1106;-3803.705,-2814.026;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1092;-4229.105,-3404.297;Inherit;False;Property;_Diffuse2TilingOffset1;Diffuse2Tiling&Offset1;3;0;Create;True;0;0;0;False;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1095;-4231.153,-3204.199;Inherit;False;Property;_Diffuse2TilingOffset2;Diffuse2Tiling&Offset2;4;0;Create;True;0;0;0;False;0;False;1,1,0,0;1,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1098;-3973.273,-3101.947;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1093;-3975.07,-3400.964;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1094;-3974.07,-3305.964;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;1097;-3972.973,-3202.146;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1153;-3787.602,-3410.688;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1154;-3797.444,-3164.471;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2926.403,-1275.077;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;620;-2909.533,-669.9489;Inherit;False;dirt;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;916;-2922.858,-1070.734;Inherit;False;DynEmi;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;917;-2916.863,-869.1469;Inherit;False;DynEmiMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;350;-2687.01,-1487.376;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;355;-2880.39,-1370.28;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;559;-2897.156,-1490.518;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;48;0;Create;True;0;0;0;False;1;Header(Metal);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-2867.672,-1885.522;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;646;-2867.054,-1693.978;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;436;-2862.676,-1784.009;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;938;-2684.567,-1596.615;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;937;-2910.867,-1598.915;Inherit;False;Property;_Use_ReflectionMask;Use_ReflectionMask;52;0;Create;True;0;0;0;False;1;Header(Reflection);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;67;-3216.64,-1520.683;Inherit;True;Property;_CtrlTex;OptionMaskMap (_ctrl);27;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;68;-3228.415,-1271.429;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];68;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;918;-3227.191,-1073.915;Inherit;True;Property;_DynamicEmmisive_dyn_emi;DynamicEmmisive (_dyn_emi);71;0;Create;True;0;0;0;False;1;NoScaleOffset;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;919;-3235.259,-872.1345;Inherit;True;Property;_DynamicEmmisiveMask_dyn_emi_mask;DynamicEmmisiveMask (_dyn_emi_mask);72;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;401;-3213.081,-669.2936;Inherit;True;Property;_DirtTex;DirtTex;61;1;[Header];Create;True;1;Dirt;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1172;-3208.312,-2040.035;Inherit;True;Property;_BumpMap;Normal Map;15;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1173;-2734.762,-2037.477;Inherit;False;WorldNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;1174;-2918.949,-2035.232;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;330;-2879.892,-2231.32;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2893.969,-3619.669;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1039;-3129.715,-3020.191;Inherit;False;Property;_Diffuse2Color;Diffuse2Color;2;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1099;-3195.268,-2638.365;Inherit;True;Property;_MainTex4;Diffuse2 Front;1;0;Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1100;-3197.022,-2837.73;Inherit;True;Property;_MainTex5;Diffuse2 Front;1;0;Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1110;-3137.375,-2432.012;Inherit;False;Property;_Diffuse3Color;Diffuse3Color;6;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;64;-3199.27,-3621.877;Inherit;True;Property;_MainTex;Diffuse Map (_diff);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;65;-3202.572,-2247.053;Inherit;True;Property;_ShadTex;Shaded Diffuse (_shad_c);10;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;None;True;0;False;gray;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1139;-3200.143,-3422.781;Inherit;True;Property;_TextureSample0;Texture Sample 0;107;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1140;-3199.058,-3223.361;Inherit;True;Property;_TextureSample1;Texture Sample 1;106;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1040;-2880.182,-3268.117;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1129;-2737.164,-2662.943;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1144;-2615.394,-2660.87;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1143;-2468.7,-2665.061;Inherit;False;diff3;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1088;-2880.135,-3124.55;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1112;-2871.07,-2566.355;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1111;-2876.602,-2697.192;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1113;-2743.936,-3190.037;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1090;-2622.673,-3188.899;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1027;-2473.716,-3196.256;Inherit;False;diff2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;1086;-3454.677,-3340.059;Inherit;True;Property;_DiffuseMap2;Diffuse Map2;1;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;None;None;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;1109;-3451.258,-2749.918;Inherit;True;Property;_DiffuseMap3;Diffuse Map3;5;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;None;None;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;903;887.7802,2236.247;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;False;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1177;-3902.795,-104.6986;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1178;-3288.795,-86.69861;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1179;-3081.893,334.5416;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1180;-3087.02,989.0427;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;66;-3212.868,-1833.657;Inherit;True;Property;_BaseTex;TripleMaskMap (_base);23;0;Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMaxOpNode;1005;-3051.02,1789.782;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1046;-3817.36,1728.658;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1047;-3469.136,1585.187;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;22;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1048;-3755.542,1553.677;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1082;-2726.254,1791.953;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1083;-2927.348,1855.719;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1084;-2986.094,1934.77;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;87;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-2579.578,1788.83;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-3474.793,1716.143;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;81;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1010;-2888.374,2374.854;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;89;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1157;-2884.93,2283.257;Inherit;False;Property;_DiffuseLightFactor;DiffuseLightFactor;88;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1011;-2616.109,2373.789;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-4293.023,1687.982;Inherit;False;Property;_MinDirectLight;MinDirectLight;80;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;773;-4213.27,1556.056;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldPosInputsNode;1042;-4440.831,1815.833;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;1043;-4265.149,1883.07;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1045;-4269.118,1798.36;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1044;-4061.991,1882.736;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;21;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1061;-4041.463,1802.888;Inherit;False;RimAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1158;-2607.93,2281.257;Inherit;False;DiffuseLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1164;-3983.405,1617.765;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1165;-3155.585,1648.871;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1166;-3299.521,2186.827;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1167;-3155.532,2226.446;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1182;-3609.557,2080.415;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1050;-5577.989,2278.973;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1051;-5441.29,2310.027;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1160;-5390.443,2236.838;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1159;-5230.513,2243.495;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1053;-5069.074,2241.116;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1049;-5798.829,2267.398;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1052;-5626.417,2366.187;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-5726.948,1965.411;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;779;-5517.41,2007.874;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-5188.356,2031.792;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-5557.67,2123.322;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-5390.083,2032.091;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-5386.762,1951.383;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1181;-5718.604,2049.34;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;800;-5363.442,1662.523;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-5195.408,1661.864;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-5744.759,1712.417;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;797;-5523.371,1655.865;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;798;-5519.564,1781.481;Inherit;False;return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz)@;3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3580.376,2282.975;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;85;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-3581.55,2364.996;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;86;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1187;-3865.324,2370.872;Inherit;False;Property;_IndirectBiasSampleRate;Indirect Bias Sample Rate;84;0;Create;True;0;0;0;False;0;False;1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1188;-3825.261,1988.224;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1191;-4194.149,1987.913;Inherit;False;1173;WorldNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1190;-3996.855,1990.912;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1184;-4437.366,2080.313;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1185;-4286.36,2078.313;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1186;-3960.721,2097.673;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1189;-4120.41,2125.173;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1193;-4432.694,2258.138;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1194;-4281.689,2256.138;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1195;-3956.055,2275.497;Inherit;False;return ShadeSH9(Normal)@;3;Create;1;True;Normal;FLOAT4;0,0,0,0;In;;Half;False;ShadeSH9out;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1196;-4115.738,2302.997;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;1192;-4703.062,2238.897;Inherit;False;Property;_IndirectLightBiasSample2;Indirect Light Bias Sample2;83;0;Create;True;0;0;0;False;0;False;0,1,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1183;-4709.028,2064.973;Inherit;False;Property;_IndirectLightBiasSample1;Indirect Light Bias Sample1;82;0;Create;True;0;0;0;False;0;False;0,0,0,1;0,1,0,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMaxOpNode;1197;-3739.628,2106.43;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
WireConnection;432;0;624;0
WireConnection;433;0;432;0
WireConnection;428;0;429;0
WireConnection;430;0;428;0
WireConnection;430;1;433;0
WireConnection;319;0;315;0
WireConnection;322;0;319;0
WireConnection;636;0;322;0
WireConnection;434;0;430;0
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
WireConnection;463;1;1179;0
WireConnection;484;0;483;0
WireConnection;482;0;481;0
WireConnection;482;1;485;0
WireConnection;483;0;477;0
WireConnection;493;0;463;0
WireConnection;129;0;128;0
WireConnection;129;1;1177;0
WireConnection;136;0;129;0
WireConnection;518;0;520;0
WireConnection;518;1;1178;0
WireConnection;521;0;518;0
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
WireConnection;505;1;1180;0
WireConnection;507;0;509;0
WireConnection;508;0;495;0
WireConnection;508;1;501;0
WireConnection;509;0;512;0
WireConnection;513;0;505;0
WireConnection;623;0;636;0
WireConnection;435;0;434;0
WireConnection;435;1;437;0
WireConnection;435;2;873;0
WireConnection;438;0;435;0
WireConnection;539;0;442;0
WireConnection;873;0;872;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;915;0
WireConnection;608;0;607;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;930;0;929;0
WireConnection;931;0;930;0
WireConnection;931;1;932;0
WireConnection;931;2;933;0
WireConnection;931;3;934;0
WireConnection;931;4;935;0
WireConnection;542;0;532;0
WireConnection;532;0;533;0
WireConnection;532;1;535;0
WireConnection;532;2;840;0
WireConnection;535;0;533;0
WireConnection;535;1;528;0
WireConnection;535;2;871;0
WireConnection;852;0;530;0
WireConnection;449;0;448;0
WireConnection;449;1;527;0
WireConnection;450;0;449;0
WireConnection;450;1;451;0
WireConnection;531;0;852;0
WireConnection;531;1;529;0
WireConnection;840;0;531;0
WireConnection;871;0;537;0
WireConnection;528;1;450;0
WireConnection;953;0;952;0
WireConnection;953;1;951;0
WireConnection;954;0;953;0
WireConnection;954;1;955;0
WireConnection;981;0;941;1
WireConnection;981;1;983;0
WireConnection;969;0;994;0
WireConnection;946;0;947;0
WireConnection;947;0;961;0
WireConnection;947;1;979;0
WireConnection;947;2;957;0
WireConnection;970;0;993;0
WireConnection;949;0;961;0
WireConnection;949;1;973;0
WireConnection;979;0;949;0
WireConnection;979;1;991;0
WireConnection;991;0;980;0
WireConnection;991;1;975;0
WireConnection;956;0;945;0
WireConnection;956;1;964;0
WireConnection;957;0;956;0
WireConnection;993;0;992;0
WireConnection;993;1;997;0
WireConnection;941;1;954;0
WireConnection;994;0;995;0
WireConnection;994;2;981;0
WireConnection;992;0;941;2
WireConnection;992;1;1001;0
WireConnection;992;2;976;0
WireConnection;1001;0;958;0
WireConnection;1016;0;1017;0
WireConnection;1016;1;444;0
WireConnection;1016;2;1015;0
WireConnection;1017;0;442;0
WireConnection;1017;1;441;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;440;0;1016;0
WireConnection;440;1;439;0
WireConnection;445;0;440;0
WireConnection;606;0;1021;0
WireConnection;606;1;610;0
WireConnection;606;2;931;0
WireConnection;612;0;606;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;1018;0;602;0
WireConnection;1018;1;605;0
WireConnection;1018;2;603;0
WireConnection;1021;0;604;0
WireConnection;1021;1;1018;0
WireConnection;1021;2;1020;0
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
WireConnection;563;2;1078;0
WireConnection;562;0;570;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
WireConnection;360;0;359;0
WireConnection;578;0;563;0
WireConnection;354;1;357;0
WireConnection;1070;0;573;0
WireConnection;1070;1;1064;0
WireConnection;1070;2;1071;0
WireConnection;1064;0;573;0
WireConnection;1064;1;1063;0
WireConnection;1072;0;1070;0
WireConnection;572;0;1072;0
WireConnection;572;1;556;0
WireConnection;1077;0;1076;0
WireConnection;1077;1;558;0
WireConnection;1077;2;1079;0
WireConnection;1078;0;1077;0
WireConnection;1078;1;1080;0
WireConnection;557;0;1078;0
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
WireConnection;1073;0;553;0
WireConnection;1073;1;1067;0
WireConnection;1073;2;1074;0
WireConnection;1067;0;553;0
WireConnection;1067;1;1066;0
WireConnection;1075;0;1073;0
WireConnection;555;0;1075;0
WireConnection;555;1;575;0
WireConnection;922;1;923;0
WireConnection;923;0;924;0
WireConnection;923;1;927;0
WireConnection;924;0;926;0
WireConnection;924;1;928;0
WireConnection;927;0;928;0
WireConnection;927;1;925;0
WireConnection;735;1;734;2
WireConnection;738;1;734;1
WireConnection;739;0;738;0
WireConnection;739;1;742;0
WireConnection;740;0;739;0
WireConnection;742;0;737;0
WireConnection;1117;1;1119;0
WireConnection;1119;0;1123;0
WireConnection;1119;3;1121;0
WireConnection;1119;4;1120;0
WireConnection;1123;0;1124;0
WireConnection;1124;0;1125;4
WireConnection;1124;1;1122;0
WireConnection;1124;2;1118;0
WireConnection;1125;0;1126;0
WireConnection;745;0;746;0
WireConnection;745;1;744;0
WireConnection;745;2;1117;0
WireConnection;743;0;745;0
WireConnection;743;1;751;0
WireConnection;748;0;747;0
WireConnection;750;0;748;0
WireConnection;750;1;749;0
WireConnection;751;1;750;0
WireConnection;904;0;618;0
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
WireConnection;1037;0;1033;0
WireConnection;1037;1;1036;0
WireConnection;1034;0;1033;0
WireConnection;1151;0;1148;0
WireConnection;1035;0;340;0
WireConnection;1035;1;1037;0
WireConnection;1035;2;1034;0
WireConnection;1150;0;1148;0
WireConnection;1150;1;1149;0
WireConnection;1152;0;1035;0
WireConnection;1152;1;1150;0
WireConnection;1152;2;1151;0
WireConnection;342;0;1152;0
WireConnection;342;1;343;0
WireConnection;342;2;420;0
WireConnection;1008;0;1152;0
WireConnection;1008;1;342;0
WireConnection;1008;2;1012;0
WireConnection;344;0;1008;0
WireConnection;1032;0;1029;0
WireConnection;1030;0;346;0
WireConnection;1030;1;1029;0
WireConnection;1030;2;1032;0
WireConnection;348;0;1146;0
WireConnection;348;1;347;0
WireConnection;1009;0;1146;0
WireConnection;1009;1;348;0
WireConnection;1009;2;1013;0
WireConnection;349;0;1009;0
WireConnection;1146;0;1030;0
WireConnection;1146;1;1145;0
WireConnection;1146;2;1147;0
WireConnection;1147;0;1145;0
WireConnection;648;0;647;0
WireConnection;1161;0;382;4
WireConnection;647;1;1161;0
WireConnection;338;0;337;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;339;0;338;0
WireConnection;335;0;334;0
WireConnection;335;1;1162;0
WireConnection;1059;0;1056;0
WireConnection;1059;1;1057;0
WireConnection;1059;2;1058;0
WireConnection;1060;0;1056;0
WireConnection;1060;1;1057;0
WireConnection;1055;0;1060;0
WireConnection;1055;1;1059;0
WireConnection;1162;0;1055;0
WireConnection;1162;1;1056;0
WireConnection;913;0;1168;0
WireConnection;913;1;733;0
WireConnection;913;2;914;0
WireConnection;733;1;735;0
WireConnection;727;0;730;0
WireConnection;727;1;729;0
WireConnection;729;0;730;0
WireConnection;729;1;732;0
WireConnection;1168;0;727;0
WireConnection;1168;1;1169;0
WireConnection;1168;2;1171;0
WireConnection;1169;0;727;0
WireConnection;1169;1;1170;0
WireConnection;1101;0;1102;0
WireConnection;1101;1;1103;0
WireConnection;1102;0;1104;1
WireConnection;1102;1;1104;2
WireConnection;1103;0;1104;3
WireConnection;1103;1;1104;4
WireConnection;1107;0;1105;1
WireConnection;1107;1;1105;2
WireConnection;1108;0;1105;3
WireConnection;1108;1;1105;4
WireConnection;1106;0;1107;0
WireConnection;1106;1;1108;0
WireConnection;1098;0;1095;3
WireConnection;1098;1;1095;4
WireConnection;1093;0;1092;1
WireConnection;1093;1;1092;2
WireConnection;1094;0;1092;3
WireConnection;1094;1;1092;4
WireConnection;1097;0;1095;1
WireConnection;1097;1;1095;2
WireConnection;1153;0;1093;0
WireConnection;1153;1;1094;0
WireConnection;1154;0;1097;0
WireConnection;1154;1;1098;0
WireConnection;600;0;68;0
WireConnection;620;0;401;0
WireConnection;916;0;918;0
WireConnection;917;0;919;0
WireConnection;350;0;559;0
WireConnection;355;0;67;3
WireConnection;559;1;67;2
WireConnection;408;0;66;1
WireConnection;646;0;66;3
WireConnection;436;0;66;2
WireConnection;938;0;937;0
WireConnection;937;1;67;1
WireConnection;918;1;922;0
WireConnection;1173;0;1174;0
WireConnection;1174;0;1172;0
WireConnection;330;0;65;0
WireConnection;345;0;64;0
WireConnection;1099;0;1109;0
WireConnection;1099;1;1101;0
WireConnection;1100;0;1109;0
WireConnection;1100;1;1106;0
WireConnection;1139;0;1086;0
WireConnection;1139;1;1153;0
WireConnection;1140;0;1086;0
WireConnection;1140;1;1154;0
WireConnection;1040;0;1139;0
WireConnection;1040;1;1039;0
WireConnection;1129;0;1111;0
WireConnection;1129;1;1112;0
WireConnection;1144;0;1129;0
WireConnection;1143;0;1144;0
WireConnection;1088;0;1140;0
WireConnection;1088;1;1039;0
WireConnection;1112;0;1099;0
WireConnection;1112;1;1110;0
WireConnection;1111;0;1100;0
WireConnection;1111;1;1110;0
WireConnection;1113;0;1040;0
WireConnection;1113;1;1088;0
WireConnection;1090;0;1113;0
WireConnection;1027;0;1090;0
WireConnection;903;0;913;0
WireConnection;903;3;743;0
WireConnection;1005;0;1165;0
WireConnection;1005;1;1167;0
WireConnection;1046;0;1164;0
WireConnection;1046;1;1044;0
WireConnection;1047;0;1046;0
WireConnection;1047;1;1048;0
WireConnection;1048;1;1164;0
WireConnection;1048;0;1046;0
WireConnection;1082;0;1005;0
WireConnection;1082;1;1083;0
WireConnection;1082;2;1084;0
WireConnection;1083;0;1005;0
WireConnection;208;0;1082;0
WireConnection;1011;0;1010;0
WireConnection;1045;0;1042;0
WireConnection;1044;0;1045;0
WireConnection;1044;1;1043;0
WireConnection;1061;0;1045;0
WireConnection;1158;0;1157;0
WireConnection;1164;0;773;1
WireConnection;1164;1;825;0
WireConnection;1165;0;1047;0
WireConnection;1165;1;826;0
WireConnection;1166;0;1182;0
WireConnection;1166;1;303;0
WireConnection;1167;0;1166;0
WireConnection;1167;1;301;0
WireConnection;1182;0;1188;0
WireConnection;1182;1;1197;0
WireConnection;1182;2;1187;0
WireConnection;1050;0;1049;0
WireConnection;1051;0;1050;0
WireConnection;1051;1;1052;0
WireConnection;1051;2;1052;0
WireConnection;1159;0;1160;0
WireConnection;1159;2;1051;0
WireConnection;1053;0;1159;0
WireConnection;779;0;802;0
WireConnection;779;1;1181;0
WireConnection;781;0;776;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;552;0;779;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;801;0;800;0
WireConnection;1188;0;1190;0
WireConnection;1190;0;1191;0
WireConnection;1184;0;1183;1
WireConnection;1184;1;1183;2
WireConnection;1184;2;1183;3
WireConnection;1185;0;1184;0
WireConnection;1186;0;1189;0
WireConnection;1189;0;1185;0
WireConnection;1189;3;1183;4
WireConnection;1193;0;1192;1
WireConnection;1193;1;1192;2
WireConnection;1193;2;1192;3
WireConnection;1194;0;1193;0
WireConnection;1195;0;1196;0
WireConnection;1196;0;1194;0
WireConnection;1196;3;1192;4
WireConnection;1197;0;1186;0
WireConnection;1197;1;1195;0
ASEEND*/
//CHKSM=503A5D0C776F254D0E002CEEA63F0289E94D221D