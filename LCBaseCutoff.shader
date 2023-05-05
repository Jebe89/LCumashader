// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/BaseCutoff"
{
	Properties
	{
		_ClipValue("Clip Value", Range( 0 , 1)) = 0.5
		[Header(Diffuse)]_MainTex("Diffuse Map (_diff)", 2D) = "white" {}
		[HDR]_ToonBrightColor("ToonBrightColor", Color) = (0,0,0,1)
		[Header(Shadow)]_ShadTex("Shaded Diffuse (_shad_c)", 2D) = "white" {}
		[Toggle]_UseShadowMaskVertexColorA("Use ShadowMask (VertexColorA)", Float) = 0
		[HDR]_ToonDarkColor("ToonDarkColor", Color) = (0,0,0,1)
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[HDR]_GlobalShadowColor("GlobalShadowColor", Color) = (1,1,1,1)
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 1
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 1
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 0
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
		_RimHorizonOffset("RimHorizonOffset", Range( -1 , 1)) = 0
		_RimVerticalOffset("RimVerticalOffset", Range( -1 , 1)) = 0
		[HDR]_RimColor2("RimColor2", Color) = (0,0,0,0)
		_RimStep2("RimStep2", Range( 0 , 1)) = 0.5
		_RimFeather2("RimFeather2", Range( 0 , 1)) = 0.3
		_RimSpecRate2("RimSpecRate2", Range( 0 , 1)) = 0.5
		_RimShadowRate2("RimShadowRate2", Range( 0 , 2)) = 0
		_RimHorizonOffset2("RimHorizonOffset2", Range( -1 , 1)) = 0
		_RimVerticalOffset2("RimVerticalOffset2", Range( -1 , 1)) = 0
		[HDR]_GlobalRimColor("GlobalRimColor", Color) = (1,1,1,1)
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
		[Toggle]_UnifyIndirectDiffuseLight("Unify IndirectDiffuseLight", Float) = 1
		_MinIndirectLight("MinIndirectLight", Range( 0 , 1)) = 0.3
		_MaxIndirectLight("MaxIndirectLight", Range( 0 , 2)) = 1
		_LightFactor("LightFactor", Range( 0 , 1)) = 1
		[Header(Outline)][Toggle]_Outline("Outline", Float) = 0
		_OutlineClip("OutlineClip", Range( 0 , 1)) = 0.5
		[Toggle]_UseOutlineMaskVertexColorG("Use OutlineMask (VertexColorG)", Float) = 0
		[HDR]_OutlineColor("OutlineColor", Color) = (0,0,0,0)
		[Toggle]_MixDiffuseinOutlineColor("Mix Diffuse in OutlineColor", Float) = 0
		_OutlineWidth("OutlineWidth", Float) = 0
		[Toggle]_UseOutlineWidthMaskVertexColorR("Use OutlineWidthMask (VertexColorR)", Float) = 0
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
		Tags { "RenderType"="TransparentCutout" "Queue"="AlphaTest" }
	LOD 100

		Cull Back
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
			uniform float _OutlineZPushAdjust;
			uniform float _OutlineZPush;
			uniform float _MixDiffuseinOutlineColor;
			uniform float4 _OutlineColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _Outline;
			uniform float _UseOutlineMaskVertexColorG;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _OutlineClip;


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float OutlineWidth740 = ( (( _UseOutlineWidthMaskVertexColorR )?( v.ase_color.r ):( 1.0 )) * ( _OutlineWidth * 0.01 ) );
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
				float3 vertexValue = ( float4( ( OutlineWidth740 * v.normal ) , 0.0 ) + (( _OutlineZPushAdjust )?( ( transform748 * _OutlineZPush ) ):( float4( 0,0,0,0 ) )) ).xyz;
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
				float2 uv_BaseTex = IN.ase_texcoord8.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float Alpha646 = tex2DNode66.b;
				clip( (( _Outline )?( (( _UseOutlineMaskVertexColorG )?( ( Alpha646 * IN.ase_color.g ) ):( Alpha646 )) ):( 0.0 )) - _OutlineClip);
				
				float3 Color = (( _MixDiffuseinOutlineColor )?( ( _OutlineColor * diff345 ) ):( _OutlineColor )).rgb;
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
			Blend One Zero, One OneMinusSrcAlpha
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
			#define ASE_NEEDS_FRAG_COLOR

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
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
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
			uniform float _ClipValue;
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
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_color : COLOR;
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
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
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
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_sh.w = 0;
				
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

				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float grayscale880 = Luminance(ase_lightColor.rgb);
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_881_0 = ( grayscale880 >= _MinDirectLight ? ase_lightColor.rgb : (temp_cast_0 + (ase_lightColor.rgb - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_0) / (float3( 1,1,1 ) - float3( 0,0,0 ))) );
				float3 worldPos985 = ase_worldPos;
				float localPureLightAttenuation985 = PureLightAttenuation( worldPos985 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_313_0 = ( temp_output_881_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation985 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch998 = temp_output_313_0;
				#else
				float3 staticSwitch998 = temp_output_881_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float3 clampResult980 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch998 ):( temp_output_313_0 )) , float3( 0,0,0 ) , temp_cast_3 );
				UnityGIInput data877;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data877 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm877
				data877.lightmapUV = i.ase_lmap;
				#endif //dylm877
				#if UNITY_SHOULD_SAMPLE_SH //fsh877
				data877.ambient = i.ase_sh;
				#endif //fsh877
				UnityGI gi877 = UnityGI_Base(data877, 1, ase_worldNormal);
				float3 localMaxShadeSH9878 = MaxShadeSH9();
				float grayscale862 = Luminance((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )));
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 clampResult981 = clamp( ( grayscale862 >= _MinIndirectLight ? (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) : (temp_cast_4 + ((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_4) / (float3( 1,1,1 ) - float3( 0,0,0 ))) ) , float3( 0,0,0 ) , temp_cast_5 );
				float3 LightColor208 = max( clampResult980 , clampResult981 );
				float LightFactor966 = _LightFactor;
				float4 lerpResult973 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float4 lerpResult969 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_diff349 = lerpResult969;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult968 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_shad344 = lerpResult968;
				float ShadowMask408 = tex2DNode66.r;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float HalfShadowAttenuation990 = (saturate( ase_atten )*0.5 + 0.5);
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation990 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult973 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode958 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul943 = ( ( tex2DNode958.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd938 = ( _RflAddBias * 10.0 * pow( tex2DNode958.r , _RflAddPowVal ) );
				float ReflectionMask927 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult940 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul943 ) + ( RflAdd938 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask927 ) ));
				float4 Env2SpecShaded_diff939 = lerpResult940;
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( max( LambertTerm552 , 0.0 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * _GlobalRimColor );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff939 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( _GlobalRimColor * ( lerpResult543 * RimStrength2462 ) * ( max( LambertTerm552 , 0.0 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult978 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime914 = _Time.y * 0.1;
				float2 appendResult920 = (float2(( _DynEmiScrollX * mulTime914 ) , ( mulTime914 * _DynEmiScrollY )));
				float2 texCoord913 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult920;
				float4 DynEmi907 = tex2D( _DynamicEmmisive_dyn_emi, texCoord913 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask908 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult978 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi907 * DynEmiMask908 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				clip( Alpha646 - _ClipValue);
				
				
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
			#define ASE_NEEDS_FRAG_COLOR

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
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
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
			uniform float _ClipValue;
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
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_color : COLOR;
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
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
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
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_sh.w = 0;
				
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

				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float grayscale880 = Luminance(ase_lightColor.rgb);
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_881_0 = ( grayscale880 >= _MinDirectLight ? ase_lightColor.rgb : (temp_cast_0 + (ase_lightColor.rgb - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_0) / (float3( 1,1,1 ) - float3( 0,0,0 ))) );
				float3 worldPos985 = ase_worldPos;
				float localPureLightAttenuation985 = PureLightAttenuation( worldPos985 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_313_0 = ( temp_output_881_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation985 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch998 = temp_output_313_0;
				#else
				float3 staticSwitch998 = temp_output_881_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float3 clampResult980 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch998 ):( temp_output_313_0 )) , float3( 0,0,0 ) , temp_cast_3 );
				UnityGIInput data877;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data877 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm877
				data877.lightmapUV = i.ase_lmap;
				#endif //dylm877
				#if UNITY_SHOULD_SAMPLE_SH //fsh877
				data877.ambient = i.ase_sh;
				#endif //fsh877
				UnityGI gi877 = UnityGI_Base(data877, 1, ase_worldNormal);
				float3 localMaxShadeSH9878 = MaxShadeSH9();
				float grayscale862 = Luminance((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )));
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 clampResult981 = clamp( ( grayscale862 >= _MinIndirectLight ? (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) : (temp_cast_4 + ((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_4) / (float3( 1,1,1 ) - float3( 0,0,0 ))) ) , float3( 0,0,0 ) , temp_cast_5 );
				float3 LightColor208 = max( clampResult980 , clampResult981 );
				float LightFactor966 = _LightFactor;
				float4 lerpResult973 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float4 lerpResult969 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_diff349 = lerpResult969;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult968 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_shad344 = lerpResult968;
				float ShadowMask408 = tex2DNode66.r;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float HalfShadowAttenuation990 = (saturate( ase_atten )*0.5 + 0.5);
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation990 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult973 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode958 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul943 = ( ( tex2DNode958.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd938 = ( _RflAddBias * 10.0 * pow( tex2DNode958.r , _RflAddPowVal ) );
				float ReflectionMask927 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult940 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul943 ) + ( RflAdd938 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask927 ) ));
				float4 Env2SpecShaded_diff939 = lerpResult940;
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( max( LambertTerm552 , 0.0 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * _GlobalRimColor );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff939 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( _GlobalRimColor * ( lerpResult543 * RimStrength2462 ) * ( max( LambertTerm552 , 0.0 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult978 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime914 = _Time.y * 0.1;
				float2 appendResult920 = (float2(( _DynEmiScrollX * mulTime914 ) , ( mulTime914 * _DynEmiScrollY )));
				float2 texCoord913 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult920;
				float4 DynEmi907 = tex2D( _DynamicEmmisive_dyn_emi, texCoord913 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask908 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult978 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi907 * DynEmiMask908 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				clip( Alpha646 - _ClipValue);
				
				
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
			#define ASE_NEEDS_FRAG_COLOR

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
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
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
			uniform float _ClipValue;
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
				UNITY_SHADOW_COORDS(4)
				float4 ase_lmap : TEXCOORD5;
				float4 ase_sh : TEXCOORD6;
				float4 ase_color : COLOR;
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
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
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
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float4 SpecularColor539 = _SpecularColor;
				float4 RimColor2541 = _RimColor2;
				float4 lerpResult543 = lerp( SpecularColor539 , RimColor2541 , _RimSpecRate2);
				float3 localv_bias502 = v_bias();
				float3 localh_bias510 = h_bias();
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float dotResult505 = dot( ( ( -1.0 * localv_bias502 * _RimVerticalOffset2 ) + ( ( 1.0 - abs( _RimVerticalOffset2 ) ) * ( ( -1.0 * localh_bias510 * _RimHorizonOffset2 ) + ( ( 1.0 - abs( _RimHorizonOffset2 ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing2513 = dotResult505;
				float2 uv_CtrlTex = i.ase_texcoord3.xy * _CtrlTex_ST.xy + _CtrlTex_ST.zw;
				float4 tex2DNode67 = tex2D( _CtrlTex, uv_CtrlTex );
				float RimMask355 = tex2DNode67.b;
				float dis_rim360 = ( (( _Use_DisRimMask )?( ( RimMask355 - 0.5 ) ):( 0.0 )) + 0.5 );
				float RimStrength2462 = ( _RimColor2.a * pow( saturate( ( ( _RimStep2 - rimoffset_Facing2513 ) / _RimFeather2 ) ) , 3.0 ) * dis_rim360 );
				float localIsThereALight797 = IsThereALight797();
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float3 localDefaultLightDir798 = DefaultLightDir();
				float3 LightDir801 = ( localIsThereALight797 == 1.0 ? worldSpaceLightDir : localDefaultLightDir798 );
				float dotResult551 = dot( LightDir801 , ase_worldNormal );
				float LambertTerm552 = dotResult551;
				float dotResult129 = dot( ase_worldViewDir , ase_worldNormal );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float SpecularMask436 = tex2DNode66.g;
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * SpecularMask436 * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float grayscale880 = Luminance(ase_lightColor.rgb);
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 temp_output_881_0 = ( grayscale880 >= _MinDirectLight ? ase_lightColor.rgb : (temp_cast_0 + (ase_lightColor.rgb - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_0) / (float3( 1,1,1 ) - float3( 0,0,0 ))) );
				float3 worldPos985 = ase_worldPos;
				float localPureLightAttenuation985 = PureLightAttenuation( worldPos985 );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_313_0 = ( temp_output_881_0 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation985 )) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 temp_cast_2 = (_MinDirectLight).xxx;
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch998 = temp_output_313_0;
				#else
				float3 staticSwitch998 = temp_output_881_0;
				#endif
				float3 temp_cast_3 = (_MaxDirectLight).xxx;
				float3 clampResult980 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch998 ):( temp_output_313_0 )) , float3( 0,0,0 ) , temp_cast_3 );
				UnityGIInput data877;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data877 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm877
				data877.lightmapUV = i.ase_lmap;
				#endif //dylm877
				#if UNITY_SHOULD_SAMPLE_SH //fsh877
				data877.ambient = i.ase_sh;
				#endif //fsh877
				UnityGI gi877 = UnityGI_Base(data877, 1, ase_worldNormal);
				float3 localMaxShadeSH9878 = MaxShadeSH9();
				float grayscale862 = Luminance((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )));
				float3 temp_cast_4 = (_MinIndirectLight).xxx;
				float3 temp_cast_5 = (_MaxIndirectLight).xxx;
				float3 clampResult981 = clamp( ( grayscale862 >= _MinIndirectLight ? (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) : (temp_cast_4 + ((( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9878 ):( gi877.indirect.diffuse )) - float3( 0,0,0 )) * (float3( 1,1,1 ) - temp_cast_4) / (float3( 1,1,1 ) - float3( 0,0,0 ))) ) , float3( 0,0,0 ) , temp_cast_5 );
				float3 LightColor208 = max( clampResult980 , clampResult981 );
				float LightFactor966 = _LightFactor;
				float4 lerpResult973 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float4 lerpResult969 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_diff349 = lerpResult969;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult968 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float4 lit_shad344 = lerpResult968;
				float ShadowMask408 = tex2DNode66.r;
				float dotResult779 = dot( LightDir801 , ase_worldNormal );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float HalfShadowAttenuation990 = (saturate( ase_atten )*0.5 + 0.5);
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( ShadowMask408 * HalfLambertTerm781 * HalfShadowAttenuation990 ) ):( ( ShadowMask408 * HalfLambertTerm781 ) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult973 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float4 tex2DNode958 = tex2D( _RflTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy );
				float4 RflMul943 = ( ( tex2DNode958.g * ( _RflMulBias * 10 ) * _ReflectionMulColor ) + _RflMulOffset );
				float RflAdd938 = ( _RflAddBias * 10.0 * pow( tex2DNode958.r , _RflAddPowVal ) );
				float ReflectionMask927 = (( _Use_ReflectionMask )?( tex2DNode67.r ):( 0.0 ));
				float4 lerpResult940 = lerp( EnvSpecShaded_diff542 , ( ( EnvSpecShaded_diff542 * RflMul943 ) + ( RflAdd938 * _ReflectionAddColor ) ) , saturate( ( _RflRate * ReflectionMask927 ) ));
				float4 Env2SpecShaded_diff939 = lerpResult940;
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( max( LambertTerm552 , 0.0 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * _GlobalRimColor );
				float4 RimEnvSpecShaded_diff562 = ( Env2SpecShaded_diff939 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( _GlobalRimColor * ( lerpResult543 * RimStrength2462 ) * ( max( LambertTerm552 , 0.0 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult978 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , LightFactor966);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime914 = _Time.y * 0.1;
				float2 appendResult920 = (float2(( _DynEmiScrollX * mulTime914 ) , ( mulTime914 * _DynEmiScrollY )));
				float2 texCoord913 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult920;
				float4 DynEmi907 = tex2D( _DynamicEmmisive_dyn_emi, texCoord913 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask908 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult978 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi907 * DynEmiMask908 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float dotResult614 = dot( _UnsaturationColor , Refined_diff612 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined_diff612 , _Saturation);
				float4 output_diff618 = lerpResult616;
				float Alpha646 = tex2DNode66.b;
				clip( Alpha646 - _ClipValue);
				
				
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
Node;AmplifyShaderEditor.CommentaryNode;991;-4846.164,1517.223;Inherit;False;2406.24;997.6198;;47;550;551;552;803;802;780;779;778;776;800;801;799;797;798;881;773;880;964;825;208;882;980;826;781;877;878;879;303;862;860;856;301;981;982;983;984;985;965;966;313;986;987;988;989;990;998;999;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;972;-2155.103,-3355.5;Inherit;False;1312.803;1918.691;;48;338;337;339;334;336;335;387;394;386;381;392;405;393;371;369;365;366;368;370;648;399;383;372;649;382;647;340;343;420;967;342;968;344;971;346;347;970;348;969;349;364;375;992;993;994;997;996;995;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;929;-3123.355,-2326.732;Inherit;False;812.2275;1865.961;;22;600;355;620;907;908;68;905;906;401;350;559;927;928;345;330;408;436;646;66;64;65;67;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;926;-597.0533,255.1348;Inherit;False;1086.413;1724.994;;31;603;605;604;606;612;602;609;607;608;910;911;610;912;611;904;916;917;918;919;613;614;615;616;617;618;871;894;895;977;978;979;Emmisive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;925;-3929.153,-1142.86;Inherit;False;785.9297;346.1168;;7;913;920;921;922;915;923;914;DynEmi UV Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;540.9749,304.4357;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;850;-4119.219,-264.2387;Inherit;False;1673.75;1710.115;;48;481;486;489;490;492;487;485;488;491;463;464;484;482;483;478;477;493;475;473;465;129;128;127;136;518;521;519;520;494;495;496;497;498;500;501;503;504;505;506;507;508;509;512;511;513;510;502;499;Matrix And Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;752;-590.0684,2104.935;Inherit;False;1170.698;1409.597;;25;727;729;730;732;733;734;735;737;738;739;740;742;743;744;745;746;747;748;749;750;751;872;873;900;903;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;642;-586.7119,-886.787;Inherit;False;1479.274;1043.779;;22;579;580;582;584;587;588;586;583;585;589;590;621;592;593;596;595;594;597;598;601;599;591;Dirt Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;641;-2236.926,1713.355;Inherit;False;1496.265;2180.397;;60;410;411;413;423;425;424;427;421;409;412;426;540;452;453;454;458;459;461;455;462;460;457;456;541;359;358;354;557;543;547;548;544;545;561;554;555;553;564;565;568;569;570;563;571;572;573;566;558;560;576;577;578;546;567;575;556;562;360;357;356;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;640;-2397.641,-273.1555;Inherit;False;1798.293;550.92;;17;531;535;449;450;527;528;537;448;451;533;530;542;532;840;852;874;529;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;28;444;440;439;442;539;432;433;428;437;430;435;624;429;441;443;445;315;319;322;636;623;438;434;875;876;973;974;975;Specular Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-1896.664,-1247.571;Inherit;False;Property;_SpecularPower;SpecularPower;14;0;Create;True;0;0;0;False;0;False;1.2;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;319;-1591.851,-1243.356;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;-10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;322;-1449.967,-1244.762;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;11;False;1;FLOAT;0
Node;AmplifyShaderEditor.Exp2OpNode;636;-1314.541,-1240.271;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;410;-1889.229,2082.212;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;411;-1728.03,2125.111;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;413;-1600.194,2125.641;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;423;-1446.025,2122.464;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;425;-1455.599,2228.511;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-1265.824,2076.865;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;427;-1125.15,2070.036;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;421;-2086.994,2120.127;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;-2186.926,2028.912;Inherit;False;Property;_RimStep;RimStep;19;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-2012.729,2204.409;Inherit;False;Property;_RimFeather;RimFeather;20;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;540;-1265.345,1936.313;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;452;-1873.515,2490.072;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;453;-1712.316,2532.97;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;454;-1584.479,2533.5;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;458;-1430.311,2530.323;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;459;-1439.885,2636.369;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-1250.111,2484.724;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;455;-1997.015,2612.268;Inherit;False;Property;_RimFeather2;RimFeather2;27;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;462;-1109.436,2477.895;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;457;-2171.212,2436.77;Inherit;False;Property;_RimStep2;RimStep2;26;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;456;-2088.281,2529.987;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;-1257.557,2341.686;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;359;-1547.403,1782.486;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-2124.153,1871.773;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1409.594,3463.722;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;543;-1835.183,3431.71;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1657.332,3488.708;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-1845.332,3584.708;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2102.373,3448.341;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;-2122.469,3364.581;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;561;-1163.863,3466.508;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;554;-1773.2,3669.603;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1619.2,3681.603;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;553;-1989.816,3670.056;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;564;-1818.125,2988.064;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1640.271,3045.062;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2085.315,3004.693;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;569;-2105.41,2920.934;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1146.804,3022.86;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1387.735,3039.272;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;571;-1773.743,2771.552;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-1619.743,2783.552;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;-1990.358,2772.004;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;-1828.271,3141.062;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;560;-1406.964,2938.707;Inherit;False;939;Env2SpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-1414.494,3591.32;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;-1033.666,3461.549;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;546;-2107.989,3092.104;Inherit;False;Property;_RimSpecRate;RimSpecRate;21;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;567;-2131.23,3551.957;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;28;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;575;-1898.042,3777.752;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;29;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1897.501,2884.104;Inherit;False;Property;_RimShadowRate;RimShadowRate;22;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-1015.661,3019.308;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;357;-1932.24,1763.933;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;579;-536.7119,-548.8462;Inherit;False;Property;_DirtScale;DirtScale;49;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;580;-214.7119,-655.8467;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;582;-70.7123,-657.8467;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;587;365.8105,-661.7866;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;283.8108,-533.7861;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;268.811,-829.787;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;583;-14.18952,-836.787;Inherit;False;Property;_DirtRateR;DirtRateR;50;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;585;5.810593,-482.7861;Inherit;False;Property;_DirtRateB;DirtRateB;52;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
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
Node;AmplifyShaderEditor.GetLocalVarNode;356;-2125.634,1763.627;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;584;91.8107,-675.7864;Inherit;False;Property;_DirtRateG;DirtRateG;51;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;360;-1399.403,1778.486;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;727;-46.7717,2261.176;Inherit;False;Property;_MixDiffuseinOutlineColor;Mix Diffuse in OutlineColor;75;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;737;-478.8733,2866.261;Inherit;False;Property;_OutlineWidth;OutlineWidth;76;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;738;-297.312,2707.973;Inherit;False;Property;_UseOutlineWidthMaskVertexColorR;Use OutlineWidthMask (VertexColorR);77;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;739;-8.115923,2741.31;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;740;129.0755,2729.661;Inherit;False;OutlineWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;742;-263.6067,2823.106;Inherit;False;0.01;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;743;222.9612,3093.951;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.NormalVertexDataNode;744;-474.027,3059.672;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;745;-269.0272,3001.672;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;746;-478.7314,2967.813;Inherit;False;740;OutlineWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;747;-540.0684,3224.644;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldToObjectTransfNode;748;-385.8197,3222.566;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;749;-389.7155,3398.533;Inherit;False;Property;_OutlineZPush;Outline ZPush;79;0;Create;True;0;0;0;False;0;False;-0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;750;-176.4781,3221.708;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;751;-25.80991,3188.863;Inherit;False;Property;_OutlineZPushAdjust;Outline ZPush Adjust;78;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;578;-1239.431,3142.198;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
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
Node;AmplifyShaderEditor.WorldNormalVector;464;-2996.211,413.0856;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;484;-3659.21,533.6436;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;482;-3369.198,424.3574;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;483;-3774.205,538.0598;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3682.406,270.2767;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;24;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;477;-4063.306,488.4777;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;23;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2680.095,255.9642;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;475;-3415.789,211.913;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;473;-3807.115,411.1628;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;465;-3669.349,610.3295;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;129;-3590.986,-123.0717;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;128;-3805.71,-214.2388;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;127;-3813.406,-47.22759;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;136;-3451.662,-123.7518;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;518;-2950.721,-87.45399;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;521;-2810.513,-89.33804;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;519;-3184.604,-52.3022;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
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
Node;AmplifyShaderEditor.WorldNormalVector;506;-3002.127,1060.632;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;507;-3665.128,1181.19;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;-3375.114,1071.904;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;509;-3780.121,1185.606;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;512;-4069.219,1136.024;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;30;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;511;-3688.321,917.8228;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;31;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;513;-2685.469,909.0754;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;510;-3813.031,1058.709;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;502;-3421.705,859.4582;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;499;-3439.195,773.5162;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-1869.739,98.6208;Inherit;False;Property;_EnvRate;EnvRate;35;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;852;-1577.859,101.9896;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;729;-215.4674,2319.13;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;732;-467.494,2348.161;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;869;627.4192,905.4891;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;86;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;626.1292,630.3798;Inherit;False;Property;_StencilComparison;Stencil Comparison;83;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;628.1725,724.4445;Inherit;False;Property;_StencilPassFront;Stencil PassFront;84;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;628.4407,816.6014;Inherit;False;Property;_StencilFailFront;Stencil FailFront;85;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;597.791,532.5718;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;82;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;592.6815,443.685;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;81;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;354;-1777.572,1763.355;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;17;0;Create;True;0;0;0;False;1;Header(Rim);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;590.9751,354.4357;Inherit;False;Property;_StencilReference;Stencil Reference;80;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;872;-532.23,2469.284;Inherit;False;646;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;734;-530.5479,2559.141;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;735;-177.9776,2487.801;Inherit;False;Property;_UseOutlineMaskVertexColorG;Use OutlineMask (VertexColorG);73;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;873;-331.9849,2551.504;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;532;-952.6732,-157.945;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;449;-2138.814,-88.15416;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;450;-1990.615,-80.35534;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;528;-1853.901,-106.1883;Inherit;True;Property;_EnvTex;EnvironmentMap (_env);34;0;Create;False;0;0;0;False;0;False;-1;None;88ec95f20d6a4df49806dc49e81c06d2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;451;-2146.614,18.44738;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;527;-2390.542,20.57532;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;448;-2340.317,-131.0536;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TFHCRemapNode;874;-1297.687,-35.23993;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-1167.51,137.9083;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;840;-1021.871,50.39815;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1122.171,-137.8862;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;-1331.586,-225.3555;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;537;-1571.83,-23.71595;Inherit;False;Property;_EnvBias;EnvBias;36;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;539;-1678.893,-797.263;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-1897.869,-611.7628;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;432;-1874.761,-1020.419;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;10;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;433;-1730.761,-1020.419;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;428;-1768.403,-1138.893;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;-1592.703,-1138.993;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-1292.76,-1092.618;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;624;-2105.811,-1021.411;Inherit;False;623;fixed_specpower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;429;-1959.005,-1138.993;Inherit;False;136;Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;438;-1149.06,-1086.793;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;434;-1433.96,-1139.418;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;437;-1565.089,-1032.872;Inherit;False;436;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;875;-1462.83,-945.3937;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;876;-1747.712,-906.4302;Inherit;False;Property;_SpecularBias;Specular Bias;15;0;Create;True;0;0;0;False;0;False;0.2;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;893;544.374,1246.576;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;892;3079.376,1291.313;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;733;128.4376,2371.089;Inherit;False;Property;_Outline;Outline;71;0;Create;True;0;0;0;False;1;Header(Outline);False;0;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;900;375.7388,2258.309;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;903;134.8948,2502.076;Inherit;False;Property;_OutlineClip;OutlineClip;72;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;-431.4806,720.7504;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;607;-524.626,644.7486;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;608;-351.6265,648.0487;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-170.427,702.8492;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;904;-470.5385,980.6189;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;55;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-495.4783,1768.734;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-246.581,1629.931;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-123.1308,1680.135;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-547.0533,1856.083;Inherit;False;Property;_Saturation;Saturation;63;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;28.75534,1682.217;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;871;48.2202,1776.122;Inherit;False;646;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;894;274.3598,1750.219;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;895;-47.05523,1864.129;Inherit;False;Property;_ClipValue;Clip Value;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;913;-3385.223,-1061.518;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;920;-3534.942,-1012.544;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;921;-3684.644,-1049.205;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;922;-3879.153,-912.7435;Inherit;False;Property;_DynEmiScrollY;DynEmi ScrollY;60;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;915;-3870.952,-1092.86;Inherit;False;Property;_DynEmiScrollX;DynEmi ScrollX;59;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;-3684.643,-943.2947;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;914;-3873.057,-999.2795;Inherit;False;1;0;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;910;-532.8012,1071.293;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;911;-359.8017,1074.593;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;912;-188.9017,1074.242;Inherit;False;5;5;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;916;-502.5084,1151.39;Inherit;False;907;DynEmi;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;919;-538.7418,1490.269;Inherit;False;Property;_DynEmmisiveStrength;DynEmmisiveStrength;61;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2758.859,-1291.576;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;355;-2748.442,-1392.626;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;620;-2744.791,-691.4266;Inherit;False;dirt;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;907;-2757.005,-1088.618;Inherit;False;DynEmi;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;908;-2751.01,-887.0301;Inherit;False;DynEmiMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;68;-3064.549,-1298.962;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];53;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;905;-3061.338,-1091.799;Inherit;True;Property;_DynamicEmmisive_dyn_emi;DynamicEmmisive (_dyn_emi);56;0;Create;True;0;0;0;False;1;NoScaleOffset;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;906;-3069.406,-890.0177;Inherit;True;Property;_DynamicEmmisiveMask_dyn_emi_mask;DynamicEmmisiveMask (_dyn_emi_mask);57;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;401;-3048.339,-690.7714;Inherit;True;Property;_DirtTex;DirtTex;46;1;[Header];Create;True;1;Dirt;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;350;-2542.523,-1495.091;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;559;-2752.668,-1498.233;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;33;0;Create;True;0;0;0;False;1;Header(Metal);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;927;-2538.127,-1604.757;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;928;-2764.427,-1607.057;Inherit;False;Property;_Use_ReflectionMask;Use_ReflectionMask;37;0;Create;True;0;0;0;False;1;Header(Reflection);False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2754.565,-2269.325;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;330;-2744.365,-2054.213;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-2747.826,-1876.661;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;436;-2739.614,-1787.895;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;646;-2738.304,-1701.915;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;66;-3072.651,-1842.426;Inherit;True;Property;_BaseTex;TripleMaskMap (_base);12;0;Create;False;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;64;-3065.066,-2276.732;Inherit;True;Property;_MainTex;Diffuse Map (_diff);1;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;fad893ce3e4907245ae76bf2e4f48724;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;65;-3067.045,-2069.947;Inherit;True;Property;_ShadTex;Shaded Diffuse (_shad_c);3;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;ceb81bf925c34a24ebbcaf9bd3b69644;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;67;-3073.355,-1554.429;Inherit;True;Property;_CtrlTex;OptionMaskMap (_ctrl);16;0;Create;False;0;0;0;False;0;False;-1;None;201ad45eeb9b1814983e4236fee69232;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;930;-2311.151,388.8023;Inherit;False;1544.887;1211.35;;31;961;960;959;958;957;956;955;954;953;952;951;950;949;948;947;946;945;944;943;942;941;940;939;938;937;936;935;934;933;932;931;Reflection Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;931;-2219.811,679.9429;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;932;-2206.431,530.9457;Inherit;False;Constant;_11_1;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;933;-2011.509,568.5817;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;934;-1863.31,576.3806;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;935;-2019.309,675.183;Inherit;False;Constant;_05_1;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;936;-1419.5,532.6078;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;937;-1460.086,438.8024;Inherit;False;Property;_RflAddBias;RflAddBias;43;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;938;-1045.751,520.0571;Inherit;False;RflAdd;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;939;-1321.847,964.8948;Inherit;False;Env2SpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;940;-1467.892,969.4628;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;941;-2261.151,960.5621;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;944;-1720.826,732.4877;Inherit;False;Property;_RflMulBias;RflMulBias;44;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;945;-2228.363,1048.55;Inherit;False;943;RflMul;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;946;-2021.011,1035.555;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;947;-1716.521,1120.49;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;948;-1870.067,1182.145;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;950;-2040.387,1136.28;Inherit;False;938;RflAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;951;-1809.02,1412.533;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;953;-2089.436,1398.743;Inherit;False;Property;_RflRate;RflRate;41;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;954;-1662.579,1409.575;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;955;-1729.709,439.3331;Inherit;False;Property;_RflAddPowVal;RflAddPowVal;42;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;956;-1436.056,848.9062;Inherit;False;Property;_RflMulOffset;RflMulOffset;45;0;Create;True;0;0;0;False;0;False;0.5;1;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;957;-1120.26,650.5816;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.490566;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;958;-1729.48,539.9658;Inherit;True;Property;_RflTex;ReflectionMap (_rfl);38;0;Create;False;0;0;0;False;0;False;-1;None;88ec95f20d6a4df49806dc49e81c06d2;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;959;-1184.029,510.5975;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;10;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;960;-1273.308,636.9988;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScaleNode;961;-1441.866,682.3858;Inherit;False;10;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;529;-1387.781,190.6427;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-803.4828,-149.6331;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;943;-990.2646,630.8923;Inherit;False;RflMul;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;952;-2023.489,1484.153;Inherit;False;927;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;889;687.1699,2231;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;917;-512.5084,1230.39;Inherit;False;908;DynEmiMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;962;593.1373,1103.615;Inherit;False;225;166;;1;963;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;963;643.1373,1153.615;Inherit;False;Property;_CullMode;Cull Mode;87;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;890;557.7748,1800.713;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/BaseCutoff;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;0;False;_CullMode;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;3;1;False;;10;False;;True;1;False;;1;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;891;557.7748,1910.713;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ColorNode;942;-1706.129,809.2989;Inherit;False;Property;_ReflectionMulColor;ReflectionMulColor;40;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;949;-2076.014,1220.195;Inherit;False;Property;_ReflectionAddColor;ReflectionAddColor;39;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;442;-1914.769,-797.661;Inherit;False;Property;_SpecularColor;SpecularColor;13;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;460;-1472.756,2343.333;Inherit;False;Property;_RimColor2;RimColor2;25;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;558;-1821.417,3239.53;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;32;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;426;-1488.47,1935.474;Inherit;False;Property;_RimColor;RimColor;18;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;730;-481.7245,2156.935;Inherit;False;Property;_OutlineColor;OutlineColor;74;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-507.0794,1583.034;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;64;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;918;-511.663,1312.511;Inherit;False;Property;_DynEmissiveColor;DynEmissiveColor;58;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;611;-442.3809,802.4489;Inherit;False;Property;_EmissiveColor;EmissiveColor;54;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;602;-450.4012,305.1348;Inherit;False;Property;_CharaColor;CharaColor;62;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;595;-414.527,-135.9775;Inherit;False;Property;_GlobalDirtColor;GlobalDirtColor;47;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;596;-209.2378,-55.00774;Inherit;False;Property;_GlobalDirtRimSpecularColor;GlobalDirtRimSpecularColor;48;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-1814.617,-1754.723;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-1803.334,-1614.619;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;386;-2089.975,-1569.193;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;381;-1648.525,-1726.61;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;392;-1652.842,-1552.809;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;405;-1465.038,-1744.819;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;393;-1652.768,-1819.717;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;371;-1434.178,-2167.68;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;369;-1807.701,-1953.763;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;365;-2078.111,-1889.675;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;366;-1632.42,-2086.922;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;368;-1823.701,-2086.763;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;370;-1242.17,-2161.626;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;648;-1455.844,-2261.302;Inherit;False;VertexColorShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;399;-1066.301,-1887.825;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;383;-1228.48,-1891.669;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;372;-1643.105,-1931.681;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;649;-1471.444,-1896.003;Inherit;False;648;VertexColorShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;382;-1934.396,-2276.132;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;647;-1753.369,-2209.862;Inherit;False;Property;_UseShadowMaskVertexColorA;Use ShadowMask (VertexColorA);4;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-1853.887,-3048.328;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1855.278,-2778.128;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;420;-1883.627,-2959.824;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;8;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;967;-1651.215,-2901.003;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;342;-1644.302,-3010.459;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;344;-1341.719,-2957.818;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;346;-1851.718,-3305.5;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;347;-1853.117,-3207.3;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;348;-1658.529,-3229.996;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;349;-1344.194,-3300.637;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;364;-2092.642,-2087.231;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;2;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;375;-2105.103,-1768.67;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;5;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;968;-1494.588,-2953.639;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;971;-1655.247,-2775.292;Inherit;False;966;LightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;975;-1659.739,-711.5776;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;444;-1665.4,-608.4719;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;974;-1695.274,-475.802;Inherit;False;966;LightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;973;-1508.824,-662.2935;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;440;-1305.347,-608.9159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-1165.148,-614.4149;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-1487.404,-521.6906;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-1875.771,-527.2616;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;970;-1682.286,-3133.442;Inherit;False;966;LightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;969;-1507.343,-3296.17;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-504.7276,487.9777;Inherit;False;601;DirtRim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;603;-433.8424,565.2012;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-207.1284,461.977;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;979;-199.9878,357.7089;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;977;-212.8758,582.5367;Inherit;False;966;LightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;978;-52.33276,415.0086;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;113.4999,566.2341;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;251.6113,564.6871;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.WorldNormalVector;550;-4701.578,1900.545;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;551;-4465.376,1866.281;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-4334.922,1867.941;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;803;-4688.591,1811.058;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-4780.187,2058.552;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;780;-4795.687,2150.976;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-4570.65,2101.017;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-4610.91,2216.465;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-4443.323,2125.233;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;800;-4411.534,1594.04;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-4243.504,1593.382;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-4792.851,1643.935;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;797;-4571.466,1587.383;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;798;-4567.657,1712.998;Inherit;False;return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz)@;3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;881;-3514.996,1603.5;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;773;-4016.89,1567.223;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.TFHCGrayscale;880;-3750.517,1576.085;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-4077.531,1698.095;Inherit;False;Property;_MinDirectLight;MinDirectLight;65;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;882;-3738.706,1733.547;Inherit;False;5;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;3;FLOAT3;0,0,0;False;4;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-4260.725,2118.559;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;877;-4021.689,2096.659;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;878;-3965.729,2179.144;Inherit;False;return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb)@;3;Create;0;MaxShadeSH9;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;879;-3800.212,2123.145;Inherit;False;Property;_UnifyIndirectDiffuseLight;Unify IndirectDiffuseLight;67;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3838.36,2269.167;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;68;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCGrayscale;862;-3476.221,2110.818;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;860;-3252.398,2160.125;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;856;-3452.629,2307.843;Inherit;False;5;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,1,1;False;3;FLOAT3;0,0,0;False;4;FLOAT3;1,1,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-3242.783,2325.026;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;69;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;981;-2973.624,2166.583;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;965;-2936.188,2349.25;Inherit;False;Property;_LightFactor;LightFactor;70;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;966;-2663.924,2348.185;Inherit;False;LightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;338;-1204.087,-2626.976;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;337;-1338.787,-2626.677;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;339;-1047.741,-2634.14;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;335;-1508.004,-2630.194;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-3301.499,2012.461;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;66;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-2629.454,1914.437;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;964;-2752.263,1916.111;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;980;-2896.667,1859.259;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;982;-3958.839,1923.014;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;983;-3783.156,1990.252;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;984;-3589.678,1938.293;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;10;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;985;-3787.125,1905.541;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;986;-4796.164,2312.514;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;987;-4612.222,2314.431;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;988;-4475.524,2345.486;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;989;-4632.111,2393.717;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;990;-4291.148,2340.66;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;992;-2121.455,-2614.509;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;993;-2126.153,-2524.875;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;994;-2142.658,-2430.249;Inherit;False;990;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;997;-1900.526,-2602.466;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;996;-1890.302,-2493.856;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;995;-1740.639,-2553.616;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;9;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1642.487,-2435.943;Inherit;False;Property;_ShadowFeather;ShadowFeather;7;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;334;-1779.776,-2671.535;Inherit;False;Property;_ShadowStep;ShadowStep;6;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;313;-3366.011,1784.65;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;999;-3049.265,1635.933;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;11;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;998;-3335.671,1604.423;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
WireConnection;319;0;315;0
WireConnection;322;0;319;0
WireConnection;636;0;322;0
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
WireConnection;557;0;558;0
WireConnection;557;1;547;0
WireConnection;557;2;555;0
WireConnection;543;0;545;0
WireConnection;543;1;544;0
WireConnection;543;2;567;0
WireConnection;547;0;543;0
WireConnection;547;1;548;0
WireConnection;561;0;557;0
WireConnection;561;1;576;0
WireConnection;554;0;553;0
WireConnection;555;0;554;0
WireConnection;555;1;575;0
WireConnection;564;0;569;0
WireConnection;564;1;568;0
WireConnection;564;2;546;0
WireConnection;565;0;564;0
WireConnection;565;1;566;0
WireConnection;570;0;560;0
WireConnection;570;1;563;0
WireConnection;563;0;572;0
WireConnection;563;1;565;0
WireConnection;563;2;558;0
WireConnection;571;0;573;0
WireConnection;572;0;571;0
WireConnection;572;1;556;0
WireConnection;577;0;561;0
WireConnection;562;0;570;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
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
WireConnection;360;0;359;0
WireConnection;727;0;730;0
WireConnection;727;1;729;0
WireConnection;738;1;734;1
WireConnection;739;0;738;0
WireConnection;739;1;742;0
WireConnection;740;0;739;0
WireConnection;742;0;737;0
WireConnection;743;0;745;0
WireConnection;743;1;751;0
WireConnection;745;0;746;0
WireConnection;745;1;744;0
WireConnection;748;0;747;0
WireConnection;750;0;748;0
WireConnection;750;1;749;0
WireConnection;751;1;750;0
WireConnection;578;0;563;0
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
WireConnection;463;1;464;0
WireConnection;484;0;483;0
WireConnection;482;0;481;0
WireConnection;482;1;485;0
WireConnection;483;0;477;0
WireConnection;493;0;463;0
WireConnection;129;0;128;0
WireConnection;129;1;127;0
WireConnection;136;0;129;0
WireConnection;518;0;520;0
WireConnection;518;1;519;0
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
WireConnection;505;1;506;0
WireConnection;507;0;509;0
WireConnection;508;0;495;0
WireConnection;508;1;501;0
WireConnection;509;0;512;0
WireConnection;513;0;505;0
WireConnection;852;0;530;0
WireConnection;729;0;730;0
WireConnection;729;1;732;0
WireConnection;623;0;636;0
WireConnection;354;1;357;0
WireConnection;735;0;872;0
WireConnection;735;1;873;0
WireConnection;873;0;872;0
WireConnection;873;1;734;2
WireConnection;532;0;533;0
WireConnection;532;1;535;0
WireConnection;532;2;840;0
WireConnection;449;0;448;0
WireConnection;449;1;527;0
WireConnection;450;0;449;0
WireConnection;450;1;451;0
WireConnection;528;1;450;0
WireConnection;874;0;537;0
WireConnection;531;0;852;0
WireConnection;531;1;529;0
WireConnection;840;0;531;0
WireConnection;535;0;533;0
WireConnection;535;1;528;0
WireConnection;535;2;874;0
WireConnection;539;0;442;0
WireConnection;432;0;624;0
WireConnection;433;0;432;0
WireConnection;428;0;429;0
WireConnection;430;0;428;0
WireConnection;430;1;433;0
WireConnection;435;0;434;0
WireConnection;435;1;437;0
WireConnection;435;2;875;0
WireConnection;438;0;435;0
WireConnection;434;0;430;0
WireConnection;875;0;876;0
WireConnection;733;1;735;0
WireConnection;900;0;727;0
WireConnection;900;1;733;0
WireConnection;900;2;903;0
WireConnection;608;0;607;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;904;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;894;0;618;0
WireConnection;894;1;871;0
WireConnection;894;2;895;0
WireConnection;913;1;920;0
WireConnection;920;0;921;0
WireConnection;920;1;923;0
WireConnection;921;0;915;0
WireConnection;921;1;914;0
WireConnection;923;0;914;0
WireConnection;923;1;922;0
WireConnection;911;0;910;0
WireConnection;912;0;911;0
WireConnection;912;1;916;0
WireConnection;912;2;917;0
WireConnection;912;3;918;0
WireConnection;912;4;919;0
WireConnection;600;0;68;0
WireConnection;355;0;67;3
WireConnection;620;0;401;0
WireConnection;907;0;905;0
WireConnection;908;0;906;0
WireConnection;905;1;913;0
WireConnection;350;0;559;0
WireConnection;559;1;67;2
WireConnection;927;0;928;0
WireConnection;928;1;67;1
WireConnection;345;0;64;0
WireConnection;330;0;65;0
WireConnection;408;0;66;1
WireConnection;436;0;66;2
WireConnection;646;0;66;3
WireConnection;933;0;932;0
WireConnection;933;1;931;0
WireConnection;934;0;933;0
WireConnection;934;1;935;0
WireConnection;936;0;958;1
WireConnection;936;1;955;0
WireConnection;938;0;959;0
WireConnection;939;0;940;0
WireConnection;940;0;941;0
WireConnection;940;1;947;0
WireConnection;940;2;954;0
WireConnection;946;0;941;0
WireConnection;946;1;945;0
WireConnection;947;0;946;0
WireConnection;947;1;948;0
WireConnection;948;0;950;0
WireConnection;948;1;949;0
WireConnection;951;0;953;0
WireConnection;951;1;952;0
WireConnection;954;0;951;0
WireConnection;957;0;960;0
WireConnection;957;1;956;0
WireConnection;958;1;934;0
WireConnection;959;0;937;0
WireConnection;959;2;936;0
WireConnection;960;0;958;2
WireConnection;960;1;961;0
WireConnection;960;2;942;0
WireConnection;961;0;944;0
WireConnection;542;0;532;0
WireConnection;943;0;957;0
WireConnection;889;0;900;0
WireConnection;889;3;743;0
WireConnection;890;0;894;0
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
WireConnection;648;0;647;0
WireConnection;399;0;383;0
WireConnection;383;0;649;0
WireConnection;383;2;405;0
WireConnection;383;3;393;0
WireConnection;647;1;382;4
WireConnection;967;0;340;0
WireConnection;967;1;420;0
WireConnection;967;2;343;0
WireConnection;342;0;340;0
WireConnection;342;1;420;0
WireConnection;344;0;968;0
WireConnection;348;0;346;0
WireConnection;348;1;347;0
WireConnection;349;0;969;0
WireConnection;968;0;342;0
WireConnection;968;1;967;0
WireConnection;968;2;971;0
WireConnection;975;0;442;0
WireConnection;975;1;441;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;973;0;975;0
WireConnection;973;1;444;0
WireConnection;973;2;974;0
WireConnection;440;0;973;0
WireConnection;440;1;439;0
WireConnection;445;0;440;0
WireConnection;969;0;346;0
WireConnection;969;1;348;0
WireConnection;969;2;970;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;603;0
WireConnection;979;0;602;0
WireConnection;979;1;605;0
WireConnection;978;0;979;0
WireConnection;978;1;604;0
WireConnection;978;2;977;0
WireConnection;606;0;978;0
WireConnection;606;1;610;0
WireConnection;606;2;912;0
WireConnection;612;0;606;0
WireConnection;551;0;803;0
WireConnection;551;1;550;0
WireConnection;552;0;551;0
WireConnection;779;0;802;0
WireConnection;779;1;780;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;801;0;800;0
WireConnection;881;0;880;0
WireConnection;881;1;825;0
WireConnection;881;2;773;1
WireConnection;881;3;882;0
WireConnection;880;0;773;1
WireConnection;882;0;773;1
WireConnection;882;3;825;0
WireConnection;781;0;776;0
WireConnection;879;0;877;0
WireConnection;879;1;878;0
WireConnection;862;0;879;0
WireConnection;860;0;862;0
WireConnection;860;1;303;0
WireConnection;860;2;879;0
WireConnection;860;3;856;0
WireConnection;856;0;879;0
WireConnection;856;3;303;0
WireConnection;981;0;860;0
WireConnection;981;2;301;0
WireConnection;966;0;965;0
WireConnection;338;0;337;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;339;0;338;0
WireConnection;335;0;334;0
WireConnection;335;1;995;0
WireConnection;208;0;964;0
WireConnection;964;0;980;0
WireConnection;964;1;981;0
WireConnection;980;0;999;0
WireConnection;980;2;826;0
WireConnection;984;0;985;0
WireConnection;984;1;983;0
WireConnection;985;0;982;0
WireConnection;987;0;986;0
WireConnection;988;0;987;0
WireConnection;988;1;989;0
WireConnection;988;2;989;0
WireConnection;990;0;988;0
WireConnection;997;0;992;0
WireConnection;997;1;993;0
WireConnection;996;0;992;0
WireConnection;996;1;993;0
WireConnection;996;2;994;0
WireConnection;995;0;997;0
WireConnection;995;1;996;0
WireConnection;313;0;881;0
WireConnection;313;1;984;0
WireConnection;999;0;313;0
WireConnection;999;1;998;0
WireConnection;998;1;881;0
WireConnection;998;0;313;0
ASEEND*/
//CHKSM=492ACF10A0BEDC2F63464710052C1E700B25C630