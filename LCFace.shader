// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Face"
{
	Properties
	{
		[Header(Diffuse)]_MainTex("Diffuse Map (_diff)", 2D) = "white" {}
		[HDR]_ToonBrightColor("ToonBrightColor", Color) = (0,0,0,1)
		[Header(Shadow)]_ShadTex("Shaded Diffuse (_shad_c)", 2D) = "white" {}
		[Toggle]_UseShadowMaskVertexColorA("Use ShadowMask (VertexColorA)", Float) = 0
		[HDR]_ToonDarkColor("ToonDarkColor", Color) = (0,0,0,1)
		[Toggle]_OnlyPaintedShadow("Only Painted Shadow", Float) = 0
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[HDR]_GlobalShadowColor("GlobalShadowColor", Color) = (1,1,1,1)
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 1
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 1
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 1
		_BaseTex("TripleMaskMap (_base)", 2D) = "black" {}
		[HDR][Header(Specular)]_SpecularColor("SpecularColor", Color) = (1,1,1,1)
		_SpecularPower("SpecularPower", Range( 0 , 5)) = 0
		_SpecularBias("Specular Bias", Range( 0 , 10)) = 0
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
		_RimShadowRate2("RimShadowRate2", Range( 0 , 2)) = 2
		_RimAttenuation3("RimAttenuation2", Range( 0 , 1)) = 0
		_RimHorizonOffset2("RimHorizonOffset2", Range( -1 , 1)) = 0
		_RimVerticalOffset2("RimVerticalOffset2", Range( -1 , 1)) = 0
		[HDR]_GlobalRimColor("GlobalRimColor", Color) = (1,1,1,1)
		_CustomRimLightColor("CustomRimLightColor", Range( 0 , 1)) = 1
		_MinRimLightColor("MinRimLightColor", Range( 0 , 1)) = 0.2
		[Header(Metal)][Toggle]_Use_MetalMask("Use_MetalMask", Float) = 1
		_EnvTex("EnvironmentMap (_env)", 2D) = "white" {}
		_EnvRate("EnvRate", Range( 0 , 10)) = 1
		_EnvBias("EnvBias", Range( 0 , 10)) = 1
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
		[Toggle]_CastAdditionalFaceShadow("Cast AdditionalFaceShadow", Float) = 0
		[HDR]_FaceShadowColor("FaceShadowColor", Color) = (0.6,0.6,1,0)
		[Toggle]_FaceShadowWithObjectPos("FaceShadowWithObjectPos", Float) = 0
		_faceShadowEndY("faceShadowEndY", Float) = -0.3
		_faceShadowFeather("faceShadowFeather", Float) = 0.3
		_faceShadowAlpha("faceShadowAlpha", Float) = 1
		_Saturation("Saturation", Range( 0 , 1)) = 1
		[HDR]_UnsaturationColor("UnsaturationColor", Color) = (0.2117647,0.7137255,0.07058824,0)
		[Header(Light)]_MinDirectLight("MinDirectLight", Range( 0 , 1)) = 0
		_MaxDirectLight("MaxDirectLight", Range( 0 , 2)) = 1
		[Toggle]_UnifyIndirectDiffuseLight("Unify IndirectDiffuseLight", Float) = 1
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
		_OutlineWidth("OutlineWidth", Float) = 0
		[Toggle]_UseOutlineWidthMaskVertexColorR("Use OutlineWidthMask (VertexColorR)", Float) = 0
		[Toggle]_OutlineDistanceAdjust("Outline Distance Adjust", Float) = 0
		_MinDistance("MinDistance", Float) = 1
		_MaxDistance("MaxDistance", Float) = 2
		_MinDistanceRemap("MinDistanceRemap", Float) = 1
		_MaxDistanceRemap("MaxDistanceRemap", Float) = 10
		[Toggle]_OutlineZPushAdjust("Outline ZPush Adjust", Float) = 0
		_OutlineZPush("Outline ZPush", Float) = -0.001
		[Header(Normal Remap)][Toggle]_NormalRemap("Normal Remap", Float) = 0
		_FaceCenterPos("FaceCenterPos", Vector) = (0,0,0,0)
		_FaceUp("FaceUp", Vector) = (0,1,0,0)
		_CylinderBlend("CylinderBlend", Range( 0 , 1)) = 0.5
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
			#define ASE_NEEDS_VERT_POSITION

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
			uniform float _Outline;
			uniform float _UseOutlineMaskVertexColorG;
			uniform float _OutlineClip;


			
			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float OutlineWidth740 = ( (( _UseOutlineWidthMaskVertexColorR )?( v.ase_color.r ):( 1.0 )) * ( _OutlineWidth * 0.01 ) );
				float4 unityObjectToClipPos1085 = UnityObjectToClipPos( v.vertex.xyz );
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
				float3 vertexValue = ( float4( ( OutlineWidth740 * v.normal * (( _OutlineDistanceAdjust )?( (_MinDistanceRemap + (saturate( (0.0 + (unityObjectToClipPos1085.w - _MinDistance) * (1.0 - 0.0) / (_MaxDistance - _MinDistance)) ) - 0.0) * (_MaxDistanceRemap - _MinDistanceRemap) / (1.0 - 0.0)) ):( 1.0 )) ) , 0.0 ) + (( _OutlineZPushAdjust )?( ( transform748 * _OutlineZPush ) ):( float4( 0,0,0,0 ) )) ).xyz;
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
				clip( (( _Outline )?( (( _UseOutlineMaskVertexColorG )?( IN.ase_color.g ):( 1.0 )) ):( 0.0 )) - _OutlineClip);
				
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
			uniform float _CastAdditionalFaceShadow;
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
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _NormalRemap;
			uniform float _CylinderBlend;
			uniform float3 _FaceCenterPos;
			uniform float3 _FaceUp;
			uniform float _RimAttenuation3;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
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
			uniform float _FaceShadowWithObjectPos;
			uniform float _faceShadowEndY;
			uniform float _faceShadowFeather;
			uniform float _faceShadowAlpha;
			uniform float4 _FaceShadowColor;
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
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			
			float IsThereALight1094(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
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
				float4 ase_color : COLOR;
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
				o.ase_texcoord7 = v.vertex;
				
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

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1071 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1072 = clamp( lerpResult1071 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 objToWorld944 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult945 = normalize( ( ase_worldPos - objToWorld944 ) );
				float3 objToWorldDir1021 = mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz;
				float dotResult905 = dot( normalizeResult945 , objToWorldDir1021 );
				float3 normalizeResult946 = normalize( ( ase_worldPos - ( ( dotResult905 * objToWorldDir1021 ) + objToWorld944 ) ) );
				float dotResult912 = dot( normalizeResult946 , normalizeResult946 );
				float temp_output_913_0 = rsqrt( dotResult912 );
				float3 normalizeResult947 = normalize( ( ( i.ase_color.b * ( 1.0 - _CylinderBlend ) * ( ase_worldNormal + ( temp_output_913_0 * ( normalizeResult946 * -1 ) ) ) ) + ( temp_output_913_0 * normalizeResult946 ) ) );
				float3 fixed_worldnormal928 = (( _NormalRemap )?( normalizeResult947 ):( ase_worldNormal ));
				float dotResult551 = dot( LightDir801 , fixed_worldnormal928 );
				float LambertTerm552 = dotResult551;
				float3 worldPos1040 = ase_worldPos;
				float localPureLightAttenuation1040 = PureLightAttenuation( worldPos1040 );
				float RimAtten1057 = localPureLightAttenuation1040;
				float lerpResult1067 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation3);
				float dotResult129 = dot( ase_worldViewDir , fixed_worldnormal928 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 clampResult1091 = clamp( ase_lightColor.rgb , temp_cast_1 , float3( 2,2,2 ) );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1041_0 = ( clampResult1091 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1040 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1043 = temp_output_1041_0;
				#else
				float3 staticSwitch1043 = clampResult1091;
				#endif
				float3 temp_cast_2 = (_MaxDirectLight).xxx;
				float3 clampResult1018 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1043 ):( temp_output_1041_0 )) , float3( 0,0,0 ) , temp_cast_2 );
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
				float3 temp_cast_3 = (_MinIndirectLight).xxx;
				float3 temp_cast_4 = (_MaxIndirectLight).xxx;
				float3 clampResult1019 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_3 , temp_cast_4 );
				float3 temp_output_1020_0 = max( clampResult1018 , clampResult1019 );
				float grayscale1077 = dot(temp_output_1020_0, float3(0.299,0.587,0.114));
				float3 temp_cast_5 = (grayscale1077).xxx;
				float3 lerpResult1076 = lerp( temp_output_1020_0 , temp_cast_5 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1076;
				float GlobalLightFactor1023 = _GlobalLightFactor;
				float4 lerpResult1031 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float DiffuseLightFactor1093 = _DiffuseLightFactor;
				float4 lerpResult1025 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_diff349 = lerpResult1025;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1027 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_shad344 = lerpResult1027;
				float localIsThereALight1094 = IsThereALight1094();
				float HalfShadowAttenuation1048 = ( localIsThereALight1094 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float dotResult779 = dot( LightDir801 , fixed_worldnormal928 );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float ShadowMask408 = tex2DNode66.r;
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( HalfShadowAttenuation1048 * HalfLambertTerm781 * ShadowMask408 ) ):( ( HalfShadowAttenuation1048 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1031 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( fixed_worldnormal928 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1064 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1064 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1072 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1072 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1067 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1035 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime969 = _Time.y * 0.1;
				float2 appendResult964 = (float2(( _DynEmiScrollX * mulTime969 ) , ( mulTime969 * _DynEmiScrollY )));
				float2 texCoord963 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult964;
				float4 DynEmi957 = tex2D( _DynamicEmmisive_dyn_emi, texCoord963 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask958 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1035 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi957 * DynEmiMask958 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float FaceShadowMask646 = tex2DNode66.b;
				float2 appendResult1000 = (float2(0.0 , _faceShadowEndY));
				float2 texCoord999 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult1000;
				float FaceShadow1012 = (( _FaceShadowWithObjectPos )?( ( _faceShadowEndY + (mul( float4( i.ase_texcoord7.xyz , 0.0 ), float4x4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1) ).xyz).y ) ):( saturate( texCoord999.y ) ));
				float temp_output_983_0 = saturate( ( FaceShadow1012 / _faceShadowFeather ) );
				float4 Refined2_diff998 = (( _CastAdditionalFaceShadow )?( ( ( ( 1.0 - FaceShadowMask646 ) * Refined_diff612 ) + ( FaceShadowMask646 * Refined_diff612 * ( ( temp_output_983_0 * -1.0 * _faceShadowAlpha ) + 1.0 ) ) + ( temp_output_983_0 * _faceShadowAlpha * FaceShadowMask646 * Refined_diff612 * _FaceShadowColor ) ) ):( Refined_diff612 ));
				float dotResult614 = dot( _UnsaturationColor , Refined2_diff998 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined2_diff998 , _Saturation);
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
			uniform float _CastAdditionalFaceShadow;
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
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _NormalRemap;
			uniform float _CylinderBlend;
			uniform float3 _FaceCenterPos;
			uniform float3 _FaceUp;
			uniform float _RimAttenuation3;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
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
			uniform float _FaceShadowWithObjectPos;
			uniform float _faceShadowEndY;
			uniform float _faceShadowFeather;
			uniform float _faceShadowAlpha;
			uniform float4 _FaceShadowColor;
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
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			
			float IsThereALight1094(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
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
				float4 ase_color : COLOR;
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
				o.ase_texcoord7 = v.vertex;
				
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

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1071 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1072 = clamp( lerpResult1071 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 objToWorld944 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult945 = normalize( ( ase_worldPos - objToWorld944 ) );
				float3 objToWorldDir1021 = mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz;
				float dotResult905 = dot( normalizeResult945 , objToWorldDir1021 );
				float3 normalizeResult946 = normalize( ( ase_worldPos - ( ( dotResult905 * objToWorldDir1021 ) + objToWorld944 ) ) );
				float dotResult912 = dot( normalizeResult946 , normalizeResult946 );
				float temp_output_913_0 = rsqrt( dotResult912 );
				float3 normalizeResult947 = normalize( ( ( i.ase_color.b * ( 1.0 - _CylinderBlend ) * ( ase_worldNormal + ( temp_output_913_0 * ( normalizeResult946 * -1 ) ) ) ) + ( temp_output_913_0 * normalizeResult946 ) ) );
				float3 fixed_worldnormal928 = (( _NormalRemap )?( normalizeResult947 ):( ase_worldNormal ));
				float dotResult551 = dot( LightDir801 , fixed_worldnormal928 );
				float LambertTerm552 = dotResult551;
				float3 worldPos1040 = ase_worldPos;
				float localPureLightAttenuation1040 = PureLightAttenuation( worldPos1040 );
				float RimAtten1057 = localPureLightAttenuation1040;
				float lerpResult1067 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation3);
				float dotResult129 = dot( ase_worldViewDir , fixed_worldnormal928 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 clampResult1091 = clamp( ase_lightColor.rgb , temp_cast_1 , float3( 2,2,2 ) );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1041_0 = ( clampResult1091 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1040 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1043 = temp_output_1041_0;
				#else
				float3 staticSwitch1043 = clampResult1091;
				#endif
				float3 temp_cast_2 = (_MaxDirectLight).xxx;
				float3 clampResult1018 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1043 ):( temp_output_1041_0 )) , float3( 0,0,0 ) , temp_cast_2 );
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
				float3 temp_cast_3 = (_MinIndirectLight).xxx;
				float3 temp_cast_4 = (_MaxIndirectLight).xxx;
				float3 clampResult1019 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_3 , temp_cast_4 );
				float3 temp_output_1020_0 = max( clampResult1018 , clampResult1019 );
				float grayscale1077 = dot(temp_output_1020_0, float3(0.299,0.587,0.114));
				float3 temp_cast_5 = (grayscale1077).xxx;
				float3 lerpResult1076 = lerp( temp_output_1020_0 , temp_cast_5 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1076;
				float GlobalLightFactor1023 = _GlobalLightFactor;
				float4 lerpResult1031 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float DiffuseLightFactor1093 = _DiffuseLightFactor;
				float4 lerpResult1025 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_diff349 = lerpResult1025;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1027 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_shad344 = lerpResult1027;
				float localIsThereALight1094 = IsThereALight1094();
				float HalfShadowAttenuation1048 = ( localIsThereALight1094 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float dotResult779 = dot( LightDir801 , fixed_worldnormal928 );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float ShadowMask408 = tex2DNode66.r;
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( HalfShadowAttenuation1048 * HalfLambertTerm781 * ShadowMask408 ) ):( ( HalfShadowAttenuation1048 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1031 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( fixed_worldnormal928 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1064 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1064 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1072 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1072 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1067 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1035 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime969 = _Time.y * 0.1;
				float2 appendResult964 = (float2(( _DynEmiScrollX * mulTime969 ) , ( mulTime969 * _DynEmiScrollY )));
				float2 texCoord963 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult964;
				float4 DynEmi957 = tex2D( _DynamicEmmisive_dyn_emi, texCoord963 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask958 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1035 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi957 * DynEmiMask958 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float FaceShadowMask646 = tex2DNode66.b;
				float2 appendResult1000 = (float2(0.0 , _faceShadowEndY));
				float2 texCoord999 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult1000;
				float FaceShadow1012 = (( _FaceShadowWithObjectPos )?( ( _faceShadowEndY + (mul( float4( i.ase_texcoord7.xyz , 0.0 ), float4x4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1) ).xyz).y ) ):( saturate( texCoord999.y ) ));
				float temp_output_983_0 = saturate( ( FaceShadow1012 / _faceShadowFeather ) );
				float4 Refined2_diff998 = (( _CastAdditionalFaceShadow )?( ( ( ( 1.0 - FaceShadowMask646 ) * Refined_diff612 ) + ( FaceShadowMask646 * Refined_diff612 * ( ( temp_output_983_0 * -1.0 * _faceShadowAlpha ) + 1.0 ) ) + ( temp_output_983_0 * _faceShadowAlpha * FaceShadowMask646 * Refined_diff612 * _FaceShadowColor ) ) ):( Refined_diff612 ));
				float dotResult614 = dot( _UnsaturationColor , Refined2_diff998 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined2_diff998 , _Saturation);
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
			uniform float _CastAdditionalFaceShadow;
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
			uniform float _RimFeather2;
			uniform float _Use_DisRimMask;
			uniform sampler2D _CtrlTex;
			uniform float4 _CtrlTex_ST;
			uniform float _NormalRemap;
			uniform float _CylinderBlend;
			uniform float3 _FaceCenterPos;
			uniform float3 _FaceUp;
			uniform float _RimAttenuation3;
			uniform float _RimShadowRate2;
			uniform float _SpecularPower;
			uniform float _SpecularBias;
			uniform float _NoShadowinDirectionalLightColor;
			uniform float _MinDirectLight;
			uniform float _ShadowinLightColor;
			uniform float _MaxDirectLight;
			uniform float _UnifyIndirectDiffuseLight;
			uniform float _MinIndirectLight;
			uniform float _MaxIndirectLight;
			uniform float _LightColorGrayScale;
			uniform float _GlobalLightFactor;
			uniform float _UseShadowMaskVertexColorA;
			uniform float4 _ToonBrightColor;
			uniform sampler2D _MainTex;
			uniform float4 _MainTex_ST;
			uniform float _DiffuseLightFactor;
			uniform float4 _ToonDarkColor;
			uniform sampler2D _ShadTex;
			uniform float4 _ShadTex_ST;
			uniform float4 _GlobalShadowColor;
			uniform float _ShadowStep;
			uniform float _OnlyPaintedShadow;
			uniform float _ReceiveShadowLerp;
			uniform sampler2D _BaseTex;
			uniform float4 _BaseTex_ST;
			uniform float _ShadowFeather;
			uniform sampler2D _EnvTex;
			uniform float _EnvBias;
			uniform float _EnvRate;
			uniform float _Use_MetalMask;
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
			uniform float _FaceShadowWithObjectPos;
			uniform float _faceShadowEndY;
			uniform float _faceShadowFeather;
			uniform float _faceShadowAlpha;
			uniform float4 _FaceShadowColor;
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
			
			float3 MaxShadeSH9(  )
			{
				return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb);
			}
			
			float IsThereALight1094(  )
			{
				return any(_WorldSpaceLightPos0.xyz);
			}
			


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
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
				float4 ase_color : COLOR;
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
				o.ase_texcoord7 = v.vertex;
				
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

				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1071 = lerp( ase_lightColor , _GlobalRimColor , _CustomRimLightColor);
				float4 temp_cast_0 = (_MinRimLightColor).xxxx;
				float4 clampResult1072 = clamp( lerpResult1071 , temp_cast_0 , float4( 1,1,1,0 ) );
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
				float3 objToWorld944 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult945 = normalize( ( ase_worldPos - objToWorld944 ) );
				float3 objToWorldDir1021 = mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz;
				float dotResult905 = dot( normalizeResult945 , objToWorldDir1021 );
				float3 normalizeResult946 = normalize( ( ase_worldPos - ( ( dotResult905 * objToWorldDir1021 ) + objToWorld944 ) ) );
				float dotResult912 = dot( normalizeResult946 , normalizeResult946 );
				float temp_output_913_0 = rsqrt( dotResult912 );
				float3 normalizeResult947 = normalize( ( ( i.ase_color.b * ( 1.0 - _CylinderBlend ) * ( ase_worldNormal + ( temp_output_913_0 * ( normalizeResult946 * -1 ) ) ) ) + ( temp_output_913_0 * normalizeResult946 ) ) );
				float3 fixed_worldnormal928 = (( _NormalRemap )?( normalizeResult947 ):( ase_worldNormal ));
				float dotResult551 = dot( LightDir801 , fixed_worldnormal928 );
				float LambertTerm552 = dotResult551;
				float3 worldPos1040 = ase_worldPos;
				float localPureLightAttenuation1040 = PureLightAttenuation( worldPos1040 );
				float RimAtten1057 = localPureLightAttenuation1040;
				float lerpResult1067 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation3);
				float dotResult129 = dot( ase_worldViewDir , fixed_worldnormal928 );
				float Facing136 = dotResult129;
				float fixed_specpower623 = exp2( ( ( _SpecularPower * -10.0 ) + 11.0 ) );
				float SpecularPower438 = ( min( pow( max( Facing136 , 0.0 ) , ( ( fixed_specpower623 * 10.0 ) + 1.0 ) ) , 1.0 ) * (0.0 + (_SpecularBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) );
				float3 temp_cast_1 = (_MinDirectLight).xxx;
				float3 clampResult1091 = clamp( ase_lightColor.rgb , temp_cast_1 , float3( 2,2,2 ) );
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float3 temp_output_1041_0 = ( clampResult1091 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1040 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1043 = temp_output_1041_0;
				#else
				float3 staticSwitch1043 = clampResult1091;
				#endif
				float3 temp_cast_2 = (_MaxDirectLight).xxx;
				float3 clampResult1018 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1043 ):( temp_output_1041_0 )) , float3( 0,0,0 ) , temp_cast_2 );
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
				float3 temp_cast_3 = (_MinIndirectLight).xxx;
				float3 temp_cast_4 = (_MaxIndirectLight).xxx;
				float3 clampResult1019 = clamp( (( _UnifyIndirectDiffuseLight )?( localMaxShadeSH9876 ):( gi304.indirect.diffuse )) , temp_cast_3 , temp_cast_4 );
				float3 temp_output_1020_0 = max( clampResult1018 , clampResult1019 );
				float grayscale1077 = dot(temp_output_1020_0, float3(0.299,0.587,0.114));
				float3 temp_cast_5 = (grayscale1077).xxx;
				float3 lerpResult1076 = lerp( temp_output_1020_0 , temp_cast_5 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1076;
				float GlobalLightFactor1023 = _GlobalLightFactor;
				float4 lerpResult1031 = lerp( ( _SpecularColor * SpecularPower438 ) , ( _SpecularColor * SpecularPower438 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float VertexColorShadowMask648 = (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 ));
				float2 uv_MainTex = i.ase_texcoord3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float4 diff345 = tex2D( _MainTex, uv_MainTex );
				float DiffuseLightFactor1093 = _DiffuseLightFactor;
				float4 lerpResult1025 = lerp( diff345 , ( diff345 * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_diff349 = lerpResult1025;
				float4 toon_diff370 = ( (( _UseShadowMaskVertexColorA )?( i.ase_color.a ):( 1.0 )) == 1.0 ? ( 0.5 >= _ToonBrightColor.a ? ( _ToonBrightColor * lit_diff349 ) : ( _ToonBrightColor + lit_diff349 ) ) : lit_diff349 );
				float2 uv_ShadTex = i.ase_texcoord3.xy * _ShadTex_ST.xy + _ShadTex_ST.zw;
				float4 shad_c330 = tex2D( _ShadTex, uv_ShadTex );
				float4 lerpResult1027 = lerp( ( shad_c330 * _GlobalShadowColor ) , ( shad_c330 * _GlobalShadowColor * float4( LightColor208 , 0.0 ) ) , DiffuseLightFactor1093);
				float4 lit_shad344 = lerpResult1027;
				float localIsThereALight1094 = IsThereALight1094();
				float HalfShadowAttenuation1048 = ( localIsThereALight1094 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float dotResult779 = dot( LightDir801 , fixed_worldnormal928 );
				float HalfLambertTerm781 = (dotResult779*0.5 + 0.5);
				float2 uv_BaseTex = i.ase_texcoord3.xy * _BaseTex_ST.xy + _BaseTex_ST.zw;
				float4 tex2DNode66 = tex2D( _BaseTex, uv_BaseTex );
				float ShadowMask408 = tex2DNode66.r;
				float shad_lerp339 = saturate( ( ( _ShadowStep - (( _OnlyPaintedShadow )?( ShadowMask408 ):( (( _ReceiveShadowLerp )?( ( HalfShadowAttenuation1048 * HalfLambertTerm781 * ShadowMask408 ) ):( ( HalfShadowAttenuation1048 * HalfLambertTerm781 ) )) )) ) / _ShadowFeather ) );
				float4 lerpResult405 = lerp( toon_diff370 , ( 0.5 >= _ToonDarkColor.a ? ( _ToonDarkColor * lit_shad344 ) : ( _ToonDarkColor + lit_shad344 ) ) , shad_lerp339);
				float4 shaded_diff399 = ( VertexColorShadowMask648 == 1.0 ? lerpResult405 : toon_diff370 );
				float4 specshaded_diff445 = ( lerpResult1031 + shaded_diff399 );
				float3 normal2view521 = mul( UNITY_MATRIX_V, float4( fixed_worldnormal928 , 0.0 ) ).xyz;
				float MetalMask350 = (( _Use_MetalMask )?( tex2DNode67.g ):( 0.0 ));
				float4 lerpResult532 = lerp( specshaded_diff445 , ( specshaded_diff445 * tex2D( _EnvTex, ( ( float3( float2( 1,1 ) ,  0.0 ) + normal2view521 ) * 0.5 ).xy ) * (0.0 + (_EnvBias - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) ) , saturate( ( (0.0 + (_EnvRate - 0.0) * (100.0 - 0.0) / (10.0 - 0.0)) * MetalMask350 ) ));
				float4 EnvSpecShaded_diff542 = lerpResult532;
				float lerpResult1064 = lerp( LambertTerm552 , ( LambertTerm552 * RimAtten1057 ) , _RimAttenuation);
				float4 RimColor540 = _RimColor;
				float4 lerpResult564 = lerp( SpecularColor539 , RimColor540 , _RimSpecRate);
				float3 localv_bias475 = v_bias();
				float3 localh_bias473 = h_bias();
				float dotResult463 = dot( ( ( -1.0 * localv_bias475 * _RimVerticalOffset ) + ( ( 1.0 - abs( _RimVerticalOffset ) ) * ( ( -1.0 * localh_bias473 * _RimHorizonOffset ) + ( ( 1.0 - abs( _RimHorizonOffset ) ) * ase_worldViewDir ) ) ) ) , ase_worldNormal );
				float rimoffset_Facing493 = dotResult463;
				float RimStrength427 = ( _RimColor.a * pow( saturate( ( ( _RimStep - rimoffset_Facing493 ) / _RimFeather ) ) , 3.0 ) * dis_rim360 );
				float4 temp_output_563_0 = ( ( saturate( lerpResult1064 ) + _RimShadowRate ) * ( lerpResult564 * RimStrength427 ) * clampResult1072 );
				float4 RimEnvSpecShaded_diff562 = ( EnvSpecShaded_diff542 + temp_output_563_0 );
				float4 Rim2EnvSpecShaded_diff577 = ( ( clampResult1072 * ( lerpResult543 * RimStrength2462 ) * ( saturate( lerpResult1067 ) + _RimShadowRate2 ) ) + RimEnvSpecShaded_diff562 );
				float4 realRim578 = temp_output_563_0;
				float4 break592 = realRim578;
				float2 uv_DirtTex = i.ase_texcoord3.xy * _DirtTex_ST.xy + _DirtTex_ST.zw;
				float4 dirt620 = tex2D( _DirtTex, uv_DirtTex );
				float4 break582 = ( dirt620 * _DirtScale );
				float DirtPower590 = ( ( _DirtRateR * break582.r ) + ( _DirtRateG * break582.g ) + ( break582.b * _DirtRateB ) );
				float4 lerpResult597 = lerp( Rim2EnvSpecShaded_diff577 , ( 1E-05 >= ( break592.r + break592.g + break592.b ) ? _GlobalDirtColor : _GlobalDirtRimSpecularColor ) , DirtPower590);
				float4 DirtRim2EnvSpecShaded_diff601 = lerpResult597;
				float4 lerpResult1035 = lerp( ( _CharaColor * DirtRim2EnvSpecShaded_diff601 ) , ( _CharaColor * DirtRim2EnvSpecShaded_diff601 * float4( LightColor208 , 0.0 ) ) , GlobalLightFactor1023);
				float2 uv_EmiTex = i.ase_texcoord3.xy * _EmiTex_ST.xy + _EmiTex_ST.zw;
				float4 Emissive600 = tex2D( _EmiTex, uv_EmiTex );
				float mulTime969 = _Time.y * 0.1;
				float2 appendResult964 = (float2(( _DynEmiScrollX * mulTime969 ) , ( mulTime969 * _DynEmiScrollY )));
				float2 texCoord963 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult964;
				float4 DynEmi957 = tex2D( _DynamicEmmisive_dyn_emi, texCoord963 );
				float2 uv_DynamicEmmisiveMask_dyn_emi_mask = i.ase_texcoord3.xy * _DynamicEmmisiveMask_dyn_emi_mask_ST.xy + _DynamicEmmisiveMask_dyn_emi_mask_ST.zw;
				float4 DynEmiMask958 = tex2D( _DynamicEmmisiveMask_dyn_emi_mask, uv_DynamicEmmisiveMask_dyn_emi_mask );
				float4 Refined_diff612 = ( lerpResult1035 + ( ( 1.0 - DirtPower590 ) * Emissive600 * _EmissiveColor * _EmmisiveStrength ) + ( ( 1.0 - DirtPower590 ) * DynEmi957 * DynEmiMask958 * _DynEmissiveColor * _DynEmmisiveStrength ) );
				float FaceShadowMask646 = tex2DNode66.b;
				float2 appendResult1000 = (float2(0.0 , _faceShadowEndY));
				float2 texCoord999 = i.ase_texcoord3.xy * float2( 1,1 ) + appendResult1000;
				float FaceShadow1012 = (( _FaceShadowWithObjectPos )?( ( _faceShadowEndY + (mul( float4( i.ase_texcoord7.xyz , 0.0 ), float4x4(1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1) ).xyz).y ) ):( saturate( texCoord999.y ) ));
				float temp_output_983_0 = saturate( ( FaceShadow1012 / _faceShadowFeather ) );
				float4 Refined2_diff998 = (( _CastAdditionalFaceShadow )?( ( ( ( 1.0 - FaceShadowMask646 ) * Refined_diff612 ) + ( FaceShadowMask646 * Refined_diff612 * ( ( temp_output_983_0 * -1.0 * _faceShadowAlpha ) + 1.0 ) ) + ( temp_output_983_0 * _faceShadowAlpha * FaceShadowMask646 * Refined_diff612 * _FaceShadowColor ) ) ):( Refined_diff612 ));
				float dotResult614 = dot( _UnsaturationColor , Refined2_diff998 );
				float4 temp_cast_16 = (dotResult614).xxxx;
				float4 lerpResult616 = lerp( temp_cast_16 , Refined2_diff998 , _Saturation);
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
Node;AmplifyShaderEditor.CommentaryNode;1090;-576.694,2775.813;Inherit;False;1444.445;1585.73;;33;727;735;738;739;742;734;733;954;737;740;953;730;729;732;1080;1081;1082;1083;1084;1085;1086;1087;1088;1089;744;746;745;743;749;750;751;748;747;Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1079;-5147.759,1597.17;Inherit;False;2826.639;992.6941;;50;551;552;803;800;799;797;798;801;932;1020;304;876;875;303;301;779;781;776;802;933;778;773;825;1037;1041;1043;1042;1018;826;1019;1044;1045;1046;1047;1048;1039;1038;1040;1057;1076;1077;1078;208;1022;1023;1091;1092;1093;1094;1095;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1075;-2270.396,360.1814;Inherit;False;1544.724;2247.986;;73;410;411;413;423;425;424;427;421;409;412;540;452;453;454;458;459;461;455;462;457;456;541;359;358;564;565;570;563;566;546;562;357;356;360;578;354;460;426;568;569;572;1059;573;1058;1065;1064;1066;556;560;1070;1073;1074;558;1072;1071;557;561;576;577;555;1062;553;1068;1067;1069;575;1061;543;547;567;544;545;548;Rim Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1029;-2185.098,-3362.622;Inherit;False;1357.493;1955.51;;49;387;394;386;381;405;393;371;369;365;366;368;370;648;399;383;372;649;382;647;392;338;337;339;334;336;335;1015;783;333;340;343;346;347;348;349;1024;1025;342;1026;1028;1027;344;420;364;375;1050;1055;1052;1056;Shadow Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1014;-611.4337,351.8754;Inherit;False;1509.23;2326.222;;61;610;603;605;604;606;602;607;608;609;611;955;970;971;972;973;974;612;952;978;1001;1011;1010;1009;1008;1012;975;976;1000;999;1007;1006;951;988;990;997;984;982;983;991;993;992;996;986;987;994;985;979;1013;998;1003;1004;995;614;615;616;617;613;618;1036;1034;1035;Emissive and Other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;961;-3173.829,-2871.887;Inherit;False;798.2729;1836;;20;600;350;345;330;355;559;408;646;436;64;65;66;67;68;957;958;959;960;620;401;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;938;-5078.509,-904.3494;Inherit;False;2630.138;2408.807;;76;481;486;489;490;492;487;485;488;491;463;464;484;482;483;478;477;493;475;473;465;494;495;496;497;498;500;501;503;504;505;506;507;508;509;512;511;513;510;502;499;129;128;136;518;931;930;520;521;921;922;910;919;916;917;927;926;920;909;918;904;905;908;912;888;913;914;906;937;928;903;936;944;945;946;947;1021;Matrix and Vector;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;999.5461,1078.814;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;642;-586.7119,-886.787;Inherit;False;1479.274;1043.779;;22;579;580;582;584;587;588;586;583;585;589;590;621;592;593;596;595;594;597;598;601;599;591;Dirt Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;640;-2397.641,-273.1555;Inherit;False;1798.293;550.92;;17;531;535;529;449;450;527;528;537;448;451;533;530;542;532;840;852;871;Metal Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;639;-2146.74,-1298.209;Inherit;False;1231.752;918.1196;;27;444;440;439;442;539;432;433;428;430;435;624;429;441;443;445;315;319;322;636;623;438;434;872;873;1030;1031;1032;Specular Process;1,1,1,1;0;0
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
Node;AmplifyShaderEditor.RangedFloatNode;579;-536.7119,-548.8462;Inherit;False;Property;_DirtScale;DirtScale;44;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;580;-214.7119,-655.8467;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;582;-70.7123,-657.8467;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;587;365.8105,-661.7866;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;283.8108,-533.7861;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;268.811,-829.787;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;583;-14.18952,-836.787;Inherit;False;Property;_DirtRateR;DirtRateR;45;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;585;5.810593,-482.7861;Inherit;False;Property;_DirtRateB;DirtRateB;47;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
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
Node;AmplifyShaderEditor.RangedFloatNode;584;91.8107,-675.7864;Inherit;False;Property;_DirtRateG;DirtRateG;46;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;529;-1397.304,194.5587;Inherit;False;350;MetalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;530;-1869.739,98.6208;Inherit;False;Property;_EnvRate;EnvRate;39;0;Create;True;0;0;0;False;0;False;1;0.5;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;623;-1186.366,-1248.209;Inherit;False;fixed_specpower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;869;1085.99,1679.867;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;98;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;1084.7,1404.758;Inherit;False;Property;_StencilComparison;Stencil Comparison;95;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;1086.744,1498.823;Inherit;False;Property;_StencilPassFront;Stencil PassFront;96;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;1087.012,1590.98;Inherit;False;Property;_StencilFailFront;Stencil FailFront;97;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;1056.362,1306.95;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;94;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;1051.253,1218.063;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;93;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;863;1049.546,1128.814;Inherit;False;Property;_StencilReference;Stencil Reference;92;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-812.0917,-154.7128;Inherit;False;EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;532;-956.1152,-150.145;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;533;-1438.229,-234.6192;Inherit;False;445;specshaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;535;-1106.632,-114.7703;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCRemapNode;852;-1577.859,101.9896;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;448;-2373.739,-128.4854;Inherit;False;Constant;_11_;(1,1)_;16;0;Create;True;0;0;0;False;0;False;1,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;449;-2178.816,-90.8497;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;450;-2030.617,-83.05088;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;451;-2186.616,15.75184;Inherit;False;Constant;_05_;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;531;-1159.377,118.6153;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;840;-1025.533,21.63893;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;537;-1601.795,-35.68219;Inherit;False;Property;_EnvBias;EnvBias;40;0;Create;True;0;0;0;False;0;False;1;1;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;315;-1912.664,-1243.571;Inherit;False;Property;_SpecularPower;SpecularPower;14;0;Create;True;0;0;0;False;0;False;0;0;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;435;-1281.689,-1068.516;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;438;-1135.989,-1072.691;Inherit;False;SpecularPower;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;871;-1323.708,-35.64408;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;539;-1662.804,-797.59;Inherit;False;SpecularColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;441;-1881.781,-612.0898;Inherit;False;438;SpecularPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-1859.682,-527.5886;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;872;-1730.45,-883.5449;Inherit;False;Property;_SpecularBias;Specular Bias;15;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;527;-2387.119,20.51163;Inherit;False;521;normal2view;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;528;-1896.535,-118.0953;Inherit;True;Property;_EnvTex;EnvironmentMap (_env);38;0;Create;False;0;0;0;False;0;False;-1;None;88ec95f20d6a4df49806dc49e81c06d2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;481;-3957.968,443.6133;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;486;-4121.294,376.4572;Inherit;False;Constant;_1_;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;489;-3691.535,384.0116;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;490;-3574.296,236.0264;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;492;-3742.244,176.2127;Inherit;False;Constant;_1_1;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;487;-3574.237,394.5112;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;485;-3805.191,608.0878;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;488;-3422.816,396.6017;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;491;-3303.032,283.7118;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;463;-3114.861,312.3397;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;464;-3293.618,463.3268;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;484;-3956.617,583.8848;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;482;-3666.605,474.5986;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;483;-4071.612,588.3011;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3979.813,320.5179;Inherit;False;Property;_RimVerticalOffset;RimVerticalOffset;25;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;477;-4360.715,538.7189;Inherit;False;Property;_RimHorizonOffset;RimHorizonOffset;24;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2977.502,306.2054;Inherit;False;rimoffset_Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;475;-3713.196,262.1541;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;473;-4104.523,461.404;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;465;-3966.756,660.5709;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;494;-3955.994,1316.458;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;495;-3947.207,1099.499;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;496;-4110.53,1032.343;Inherit;False;Constant;_1_2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;497;-3680.772,1039.898;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;498;-3563.534,891.9113;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;500;-3563.475,1050.397;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;-3794.429,1263.975;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;503;-3412.055,1052.488;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;504;-3292.27,939.5972;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;505;-3104.099,968.2256;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;506;-3282.855,1119.213;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;507;-3945.856,1239.772;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;-3655.842,1130.485;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.AbsOpNode;509;-4060.849,1244.188;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;512;-4349.945,1194.606;Inherit;False;Property;_RimHorizonOffset2;RimHorizonOffset2;32;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;511;-3969.049,976.4039;Inherit;False;Property;_RimVerticalOffset2;RimVerticalOffset2;33;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;513;-2966.197,967.6563;Inherit;False;rimoffset_Facing2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;510;-4093.76,1117.29;Inherit;False;return float3(unity_MatrixV[0][0],unity_MatrixV[0][1],unity_MatrixV[0][2])@;3;Create;0;h_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;502;-3702.433,918.0392;Inherit;False;return float3(unity_MatrixV[0][1],unity_MatrixV[1][1],unity_MatrixV[2][1])@;3;Create;0;v_bias;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;499;-3719.923,832.0972;Inherit;False;Constant;__2;-1_;21;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;129;-3931.647,-0.9953241;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;128;-4146.374,-92.16234;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;136;-3792.323,-1.675385;Inherit;False;Facing;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;518;-3246.246,-2.988714;Inherit;False;2;2;0;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;931;-4159.962,81.71521;Inherit;False;928;fixed_worldnormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;930;-3485.584,42.61074;Inherit;False;928;fixed_worldnormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewMatrixNode;520;-3426.608,-46.58691;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;521;-3106.038,-4.872764;Inherit;False;normal2view;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;921;-3491.365,-682.4718;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;922;-3497.864,-859.2722;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;919;-3476.885,-345.9403;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;916;-3480.838,-446.3528;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;917;-3323.492,-521.119;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;926;-3203.938,-627.7843;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;920;-3778.668,-688.9721;Inherit;False;Property;_CylinderBlend;CylinderBlend;91;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;918;-3514.874,-601.3712;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;912;-3765.532,-513.7736;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RSqrtOpNode;913;-3638.424,-509.4397;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;914;-3654.067,-428.0106;Inherit;False;-1;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;910;-4049.662,-416.2159;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;909;-4188.392,-375.4783;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;908;-4322.43,-409.4459;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;904;-4707.283,-556.7749;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;945;-4577.534,-533.7701;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;905;-4431.099,-486.7522;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;888;-4888.997,-705.4983;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;946;-3917.482,-416.2383;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;927;-3108.495,-482.2249;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;947;-2991.374,-459.1726;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;937;-3039.955,-352.9778;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;936;-2839.272,-433.257;Inherit;False;Property;_NormalRemap;Normal Remap;88;0;Create;True;0;0;0;False;1;Header(Normal Remap);False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;928;-2648.371,-430.1859;Inherit;False;fixed_worldnormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-2803.353,-1902.347;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;350;-2599.556,-2120.494;Inherit;False;MetalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-2783.323,-2814.48;Inherit;False;diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;330;-2773.123,-2599.368;Inherit;False;shad_c;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;355;-2792.936,-2003.397;Inherit;False;RimMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;559;-2809.702,-2123.636;Inherit;False;Property;_Use_MetalMask;Use_MetalMask;37;0;Create;True;0;0;0;False;1;Header(Metal);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;957;-2797.9,-1677.937;Inherit;False;DynEmi;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;958;-2791.905,-1476.35;Inherit;False;DynEmiMask;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;620;-2791.002,-1266.541;Inherit;False;dirt;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;962;-3977.27,-1728.82;Inherit;False;785.9297;346.1168;;7;969;968;967;966;965;964;963;DynEmi UV Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;963;-3433.34,-1647.477;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;964;-3583.059,-1598.503;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;965;-3732.761,-1635.164;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;966;-3927.27,-1498.703;Inherit;False;Property;_DynEmiScrollY;DynEmi ScrollY;55;0;Create;True;0;0;0;False;0;False;-1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;967;-3919.069,-1678.82;Inherit;False;Property;_DynEmiScrollX;DynEmi ScrollX;54;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;968;-3732.76,-1529.254;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;969;-3921.174,-1585.239;Inherit;False;1;0;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;646;-2772.594,-2240.901;Inherit;False;FaceShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-2768.213,-2422.445;Inherit;False;ShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;873;-1441.568,-949.5085;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;10;False;3;FLOAT;0;False;4;FLOAT;100;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;436;-2765.922,-2333.258;Inherit;False;SDFMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;401;-3091.138,-1265.886;Inherit;True;Property;_DirtTex;DirtTex;41;1;[Header];Create;True;1;Dirt;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;960;-3110.301,-1479.338;Inherit;True;Property;_DynamicEmmisiveMask_dyn_emi_mask;DynamicEmmisiveMask (_dyn_emi_mask);52;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;959;-3102.233,-1681.118;Inherit;True;Property;_DynamicEmmisive_dyn_emi;DynamicEmmisive (_dyn_emi);51;0;Create;True;0;0;0;False;1;NoScaleOffset;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;68;-3105.365,-1898.699;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];48;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;67;-3123.829,-2135.302;Inherit;True;Property;_CtrlTex;OptionMaskMap (_ctrl);16;0;Create;False;0;0;0;False;0;False;-1;None;201ad45eeb9b1814983e4236fee69232;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;66;-3115.146,-2372.184;Inherit;True;Property;_BaseTex;TripleMaskMap (_base);12;0;Create;False;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;65;-3095.803,-2615.101;Inherit;True;Property;_ShadTex;Shaded Diffuse (_shad_c);2;1;[Header];Create;False;1;Shadow;0;0;False;0;False;-1;None;ceb81bf925c34a24ebbcaf9bd3b69644;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;64;-3093.824,-2821.887;Inherit;True;Property;_MainTex;Diffuse Map (_diff);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;-1;None;fad893ce3e4907245ae76bf2e4f48724;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-115.4956,813.1213;Inherit;False;4;4;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;607;-466.7417,745.6951;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;608;-293.742,747.6954;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;-347.1295,819.5925;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;955;-447.8504,1076.322;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;50;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;970;-468.1294,1160.983;Inherit;False;590;DirtPower;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;971;-295.1294,1164.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;972;-124.2297,1163.932;Inherit;False;5;5;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;973;-437.836,1241.08;Inherit;False;957;DynEmi;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;974;-447.836,1320.08;Inherit;False;958;DynEmiMask;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;952;600.074,1273.876;Float;False;False;-1;2;ASEMaterialInspector;100;1;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;978;-553.9064,1708.039;Inherit;False;Property;_faceShadowEndY;faceShadowEndY;61;0;Create;True;0;0;0;False;0;False;-0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1001;0.2866049,1686.521;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1011;138.1407,1707.147;Inherit;False;Property;_FaceShadowWithObjectPos;FaceShadowWithObjectPos;60;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;1010;-529.3536,1790.599;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1009;-267.7865,1814.544;Inherit;False;False;True;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1008;-8.208534,1764.405;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1012;401.9924,1707.522;Inherit;False;FaceShadow;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;976;-474.07,1579.959;Inherit;False;Property;_DynEmmisiveStrength;DynEmmisiveStrength;56;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1000;-348.5264,1667.054;Inherit;False;FLOAT2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;999;-207.9854,1643.553;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1007;-285.1329,1905.807;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4x4;0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Matrix4X4Node;1006;-553.46,1939.027;Inherit;False;Constant;faceShadowHeadMatrix;faceShadowHeadMatrix;82;0;Create;True;0;0;0;False;0;False;1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;951;368.6265,2455.299;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;988;-332.1024,2288.039;Inherit;False;646;FaceShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;990;-325.6563,2366.301;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;984;-324.9221,2202.989;Inherit;False;Property;_faceShadowAlpha;faceShadowAlpha;63;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;982;-350.4678,2101.616;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;983;-226.6997,2104.213;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;991;-140.0715,1928.07;Inherit;False;646;FaceShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;993;99.49871,1934.16;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;992;203.2861,2062.242;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;996;386.4753,2068.773;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;986;72.03584,2139.177;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;987;-67.26819,2244.765;Inherit;False;5;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;994;-71.04269,2011.31;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;985;-65.37427,2102.091;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;979;-561.4337,2191.056;Inherit;False;Property;_faceShadowFeather;faceShadowFeather;62;0;Create;True;0;0;0;False;0;False;0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1013;-548.3873,2097.188;Inherit;False;1012;FaceShadow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;998;560.2364,1842.194;Inherit;False;Refined2_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1003;106.7074,1840.086;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1004;299.7076,1841.086;Inherit;False;Property;_CastAdditionalFaceShadow;Cast AdditionalFaceShadow;58;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;995;244.92,1968.805;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;384.9269,2335.946;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;508.3775,2386.15;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;84.45419,2562.098;Inherit;False;Property;_Saturation;Saturation;64;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;136.0292,2474.749;Inherit;False;998;Refined2_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;673.7968,2386.715;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1016;1026.672,1927.438;Inherit;False;225;166;;1;1017;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1017;1076.672,1977.438;Inherit;False;Property;_CullMode;Cull Mode;99;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;950;1114.779,2487.295;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;949;1114.779,2377.295;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Face;fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;1;False;;0;1;False;;1;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;True;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.TransformPositionNode;944;-4866.601,-283.4554;Inherit;False;Object;World;False;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;903;-5053.37,-282.6543;Inherit;False;Property;_FaceCenterPos;FaceCenterPos;89;0;Create;True;1;Normal Remap;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1021;-4656.447,-447.6921;Inherit;False;Object;World;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;906;-4896.326,-450.6759;Inherit;False;Property;_FaceUp;FaceUp;90;0;Create;True;0;0;0;False;0;False;0,1,0;0,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;387;-1799.921,-1727.825;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-1788.638,-1587.721;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;386;-2075.28,-1542.295;Inherit;False;344;lit_shad;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;381;-1633.829,-1699.712;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;405;-1450.342,-1717.921;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;393;-1638.072,-1792.819;Inherit;False;370;toon_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;371;-1419.482,-2140.782;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;369;-1793.005,-1926.865;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;365;-2063.416,-1862.777;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;366;-1617.724,-2060.024;Inherit;False;3;4;0;FLOAT;0.5;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;368;-1809.005,-2059.865;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;370;-1227.474,-2134.728;Inherit;False;toon_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;648;-1441.148,-2234.404;Inherit;False;VertexColorShadowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;399;-1051.605,-1860.927;Inherit;False;shaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;383;-1213.784,-1864.771;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;372;-1628.409,-1904.783;Inherit;False;349;lit_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;649;-1456.748,-1869.105;Inherit;False;648;VertexColorShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;382;-1919.7,-2249.234;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;647;-1738.673,-2182.964;Inherit;False;Property;_UseShadowMaskVertexColorA;Use ShadowMask (VertexColorA);3;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;392;-1644.346,-1523.111;Inherit;False;339;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;340;-1744.842,-3026.725;Inherit;False;330;shad_c;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1720.233,-2750.345;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;346;-1754.872,-3312.622;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;347;-1757.571,-3223.522;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;348;-1564.878,-3241.14;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;349;-1251.951,-3304.549;Inherit;False;lit_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1024;-1527.583,-3021.164;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1025;-1404.375,-3300.584;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;342;-1524.377,-2920.927;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1026;-1601.975,-3140.684;Inherit;False;1093;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;344;-1205.27,-2957.788;Inherit;False;lit_shad;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;420;-1774.696,-2931.455;Inherit;False;Property;_GlobalShadowColor;GlobalShadowColor;8;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1028;-1512.46,-2783.429;Inherit;False;1093;DiffuseLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1027;-1357.266,-2952.59;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;444;-1639.804,-589.751;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1032;-1634.862,-701.0466;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;440;-1253.7,-587.5663;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;439;-1434.401,-496.2679;Inherit;False;399;shaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;445;-1130.993,-592.1199;Inherit;False;specshaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1030;-1655.902,-465.5425;Inherit;False;1023;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1031;-1478.962,-626.5486;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;605;-439.6343,585.6885;Inherit;False;601;DirtRim2EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;603;-344.0558,664.5634;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1036;-134.4942,436.1923;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-133.219,540.8168;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1034;-139.2212,667.6423;Inherit;False;1023;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1035;40.43554,510.7114;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;276.6344,789.454;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;414.7458,787.907;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;615;124.4282,2289.049;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;65;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;997;-323.4816,2451.484;Inherit;False;Property;_FaceShadowColor;FaceShadowColor;59;1;[HDR];Create;True;0;0;0;False;0;False;0.6,0.6,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;975;-446.9907,1402.202;Inherit;False;Property;_DynEmissiveColor;DynEmissiveColor;53;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;611;-396.0525,897.5765;Inherit;False;Property;_EmissiveColor;EmissiveColor;49;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;602;-399.1335,401.8754;Inherit;False;Property;_CharaColor;CharaColor;57;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;595;-414.527,-135.9775;Inherit;False;Property;_GlobalDirtColor;GlobalDirtColor;42;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;596;-209.2378,-55.00774;Inherit;False;Property;_GlobalDirtRimSpecularColor;GlobalDirtRimSpecularColor;43;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;442;-1898.68,-797.988;Inherit;False;Property;_SpecularColor;SpecularColor;13;2;[HDR];[Header];Create;True;1;Specular;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;375;-2090.408,-1741.772;Inherit;False;Property;_ToonDarkColor;ToonDarkColor;4;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;364;-2077.947,-2060.333;Inherit;False;Property;_ToonBrightColor;ToonBrightColor;1;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,1;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;334;-1769.775,-2668.78;Inherit;False;Property;_ShadowStep;ShadowStep;6;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;339;-1016.413,-2606.026;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;338;-1150.759,-2598.862;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;337;-1266.459,-2597.563;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;336;-1517.577,-2320.981;Inherit;False;Property;_ShadowFeather;ShadowFeather;7;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;335;-1401.353,-2606.086;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1015;-1619.047,-2427.577;Inherit;False;Property;_OnlyPaintedShadow;Only Painted Shadow;5;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;333;-1926.977,-2583.681;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1056;-1923.101,-2478.662;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1055;-1784.166,-2573.654;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;9;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;783;-2163.498,-2497.729;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1052;-2170.185,-2587.287;Inherit;False;1048;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1050;-2145.982,-2403.547;Inherit;False;408;ShadowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;410;-1874.24,729.0375;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;411;-1713.041,771.9364;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;413;-1585.206,772.4667;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;423;-1431.036,769.2894;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;425;-1440.61,875.3358;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;424;-1250.836,723.6898;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;427;-1110.161,716.8617;Inherit;False;RimStrength;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;421;-2072.006,766.9525;Inherit;False;493;rimoffset_Facing;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;409;-2171.938,675.7367;Inherit;False;Property;_RimStep;RimStep;19;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-1997.74,851.2338;Inherit;False;Property;_RimFeather;RimFeather;20;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;540;-1250.357,583.1389;Inherit;False;RimColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;452;-1858.526,1136.897;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;453;-1697.327,1179.795;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;454;-1569.491,1180.325;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;458;-1415.322,1177.148;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;3;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;459;-1424.897,1283.195;Inherit;False;360;dis_rim;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;461;-1235.123,1131.549;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;455;-1982.026,1259.093;Inherit;False;Property;_RimFeather2;RimFeather2;28;0;Create;True;0;0;0;False;0;False;0.3;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;462;-1094.447,1124.72;Inherit;False;RimStrength2;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;457;-2156.224,1083.595;Inherit;False;Property;_RimStep2;RimStep2;27;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;456;-2073.293,1176.812;Inherit;False;513;rimoffset_Facing2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;541;-1242.569,988.5107;Inherit;False;RimColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;359;-1532.415,429.3123;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;358;-2109.165,518.5994;Inherit;False;Constant;_05;0.5;9;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;564;-1803.136,1634.89;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;565;-1625.283,1691.887;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;570;-1131.816,1669.686;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;563;-1372.747,1686.098;Inherit;False;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;-1813.283,1787.887;Inherit;False;427;RimStrength;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;546;-2093.001,1738.93;Inherit;False;Property;_RimSpecRate;RimSpecRate;21;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;562;-1000.673,1666.133;Inherit;False;RimEnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;357;-1917.252,410.7591;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;356;-2110.646,410.4534;Inherit;False;355;RimMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;360;-1384.415,425.3123;Inherit;False;dis_rim;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;578;-1224.442,1789.024;Inherit;False;realRim;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;354;-1762.583,410.1814;Inherit;False;Property;_Use_DisRimMask;Use_DisRimMask;17;0;Create;True;0;0;0;False;1;Header(Rim);False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;460;-1457.768,990.1586;Inherit;False;Property;_RimColor2;RimColor2;26;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;426;-1473.482,582.2996;Inherit;False;Property;_RimColor;RimColor;18;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0.4;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;568;-2046.354,1664.596;Inherit;False;540;RimColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;569;-2062.09,1588.464;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;572;-1533.907,1425.14;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1059;-2039.996,1419.305;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;-2220.396,1350.164;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1065;-2128.024,1512.467;Inherit;False;Property;_RimAttenuation;RimAttenuation;23;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1064;-1855.029,1374.356;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1066;-1677.692,1405.272;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;556;-1819.514,1514.361;Inherit;False;Property;_RimShadowRate;RimShadowRate;22;0;Create;True;0;0;0;False;0;False;0;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;560;-1377.809,1584.442;Inherit;False;542;EnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;1070;-1952.864,1835.071;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1073;-1950.276,1977.282;Inherit;False;Property;_CustomRimLightColor;CustomRimLightColor;35;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1074;-1917.788,2054.304;Inherit;False;Property;_MinRimLightColor;MinRimLightColor;36;0;Create;True;0;0;0;False;0;False;0.2;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;558;-2142.193,1917.316;Inherit;False;Property;_GlobalRimColor;GlobalRimColor;34;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;1072;-1530.663,1861.777;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0.2,0.2,0.2,0;False;2;COLOR;1,1,1,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1071;-1683.876,1860.169;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;555;-1555.401,2360.451;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1062;-1987.931,2396.793;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;553;-2169.369,2329.266;Inherit;False;552;LambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1068;-2119.663,2492.168;Inherit;False;Property;_RimAttenuation3;RimAttenuation2;31;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1067;-1845.451,2343.783;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1069;-1696.067,2349.626;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;575;-1812.444,2486.032;Inherit;False;Property;_RimShadowRate2;RimShadowRate2;30;0;Create;True;0;0;0;False;0;False;2;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1061;-2155.103,2412.54;Inherit;False;1057;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;543;-1839.399,2131.321;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;547;-1661.547,2188.319;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;567;-2135.445,2251.567;Inherit;False;Property;_RimSpecRate2;RimSpecRate2;29;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;544;-2082.963,2175.744;Inherit;False;541;RimColor2;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;-2097.5,2104.491;Inherit;False;539;SpecularColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;548;-1846.278,2260.346;Inherit;False;462;RimStrength2;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;551;-4789.736,1989.649;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;552;-4654.267,1984.288;Inherit;False;LambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;803;-5020.375,1943.086;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;800;-4695.07,1684.267;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;799;-5076.389,1734.162;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CustomExpressionNode;797;-4855,1677.61;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;798;-4851.192,1803.225;Inherit;False;return normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz)@;3;Create;0;Default LightDir;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;801;-4529.514,1686.083;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;932;-5055.396,2030.683;Inherit;False;928;fixed_worldnormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1020;-3006.053,1924.77;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;779;-4859.615,2181.517;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-4509.562,2197.435;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-4705.289,2196.733;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;802;-5058.152,2120.053;Inherit;False;801;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;933;-5097.759,2224.342;Inherit;False;928;fixed_worldnormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-4896.084,2309.38;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1041;-3792.46,1844.376;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1043;-3724.892,1659.853;Inherit;False;Property;_Keyword1;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1042;-3455.669,1701.386;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;11;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-3469.248,1840.578;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;67;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1019;-3250.974,2187.032;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightAttenuation;1044;-5063.649,2392.661;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1045;-4879.708,2394.578;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1046;-4743.009,2425.633;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;-4899.597,2473.864;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1076;-2691.028,1925.562;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1077;-2892.122,1989.328;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1078;-2950.868,2068.379;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;71;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-2545.118,1921.471;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;557;-1385.965,2148.307;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;561;-1149.868,2161.045;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;-1019.671,2156.086;Inherit;False;Rim2EnvSpecShaded_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;576;-1392.814,2288.931;Inherit;False;562;RimEnvSpecShaded_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1058;-2208.548,1430.767;Inherit;False;1057;RimAtten;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;727;-47.23896,2930.052;Inherit;False;Property;_MixDiffuseinOutlineColor;Mix Diffuse in OutlineColor;78;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;735;-249.4203,3154.651;Inherit;False;Property;_UseOutlineMaskVertexColorG;Use OutlineMask (VertexColorG);76;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;738;-297.7791,3376.852;Inherit;False;Property;_UseOutlineWidthMaskVertexColorR;Use OutlineWidthMask (VertexColorR);80;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;739;-8.583156,3410.188;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleNode;742;-264.0738,3491.984;Inherit;False;0.01;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;734;-509.7226,3232.074;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;733;38.50896,3038.953;Inherit;False;Property;_Outline;Outline;74;0;Create;True;0;0;0;False;1;Header(Outline);False;0;True;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;954;349.9955,2925.696;Inherit;False;3;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;737;-479.3405,3535.139;Inherit;False;Property;_OutlineWidth;OutlineWidth;79;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;740;128.6081,3398.54;Inherit;False;OutlineWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;953;83.03419,3166.21;Inherit;False;Property;_OutlineClip;OutlineClip;75;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;730;-482.1916,2825.813;Inherit;False;Property;_OutlineColor;OutlineColor;77;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;729;-226.4289,2988.009;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;732;-460.6153,3004.447;Inherit;False;345;diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1080;342.6437,3698.941;Inherit;False;Property;_OutlineDistanceAdjust;Outline Distance Adjust;81;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1081;-345.5176,3880.959;Inherit;False;Property;_MaxDistance;MaxDistance;83;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1082;163.6465,3728.19;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1083;-145.3056,3982.537;Inherit;False;Property;_MaxDistanceRemap;MaxDistanceRemap;85;0;Create;True;0;0;0;False;0;False;10;5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1084;-143.2043,3901.575;Inherit;False;Property;_MinDistanceRemap;MinDistanceRemap;84;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;1085;-351.194,3633.447;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1086;-526.694,3634.748;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1087;-344.5176,3799.959;Inherit;False;Property;_MinDistance;MinDistance;82;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1088;26.73497,3729.407;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1089;-147.7896,3727.857;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;744;380.7765,3545.374;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;746;381.5177,3455.329;Inherit;False;740;OutlineWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;745;574.8859,3489.189;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;743;715.751,3587.406;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;749;-283.4229,4245.542;Inherit;False;Property;_OutlineZPush;Outline ZPush;87;0;Create;True;0;0;0;False;0;False;-0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;750;-70.18575,4068.717;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;751;80.48249,4035.872;Inherit;False;Property;_OutlineZPushAdjust;Outline ZPush Adjust;86;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WorldToObjectTransfNode;748;-279.5271,4069.576;Inherit;False;1;0;FLOAT4;0,0,0,1;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;747;-437.7762,4070.654;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;948;964.8134,2922.813;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ClampOpNode;1018;-3158.724,1772.861;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ClampOpNode;1091;-3950.794,1703.083;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;2,2,2;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;773;-4173.572,1661.378;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.WorldPosInputsNode;1037;-4405.981,1883.652;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;1039;-4014.028,1965.782;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;10;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1057;-4004.855,1876.492;Inherit;False;RimAtten;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1038;-4227.299,1959.89;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1040;-4231.267,1875.18;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-3561.03,2383.51;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;70;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3579.39,2297.428;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;69;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;304;-3794.634,2140.987;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;876;-3738.675,2223.475;Inherit;False;return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb)@;3;Create;0;MaxShadeSH9;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;875;-3573.155,2167.473;Inherit;False;Property;_UnifyIndirectDiffuseLight;Unify IndirectDiffuseLight;68;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-4254.726,1780.807;Inherit;False;Property;_MinDirectLight;MinDirectLight;66;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1022;-2847.571,2449.821;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;73;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1092;-2852.667,2355.267;Inherit;False;Property;_DiffuseLightFactor;DiffuseLightFactor;72;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1023;-2575.306,2448.756;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1093;-2574.667,2354.267;Inherit;False;DiffuseLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1094;-4680.74,2345.46;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;True;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1095;-4519.809,2369.116;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1048;-4357.633,2369.807;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
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
WireConnection;623;0;636;0
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
WireConnection;435;0;434;0
WireConnection;435;1;873;0
WireConnection;438;0;435;0
WireConnection;871;0;537;0
WireConnection;539;0;442;0
WireConnection;528;1;450;0
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
WireConnection;129;0;128;0
WireConnection;129;1;931;0
WireConnection;136;0;129;0
WireConnection;518;0;520;0
WireConnection;518;1;930;0
WireConnection;521;0;518;0
WireConnection;921;0;920;0
WireConnection;919;0;913;0
WireConnection;919;1;946;0
WireConnection;916;0;913;0
WireConnection;916;1;914;0
WireConnection;917;0;918;0
WireConnection;917;1;916;0
WireConnection;926;0;922;3
WireConnection;926;1;921;0
WireConnection;926;2;917;0
WireConnection;912;0;946;0
WireConnection;912;1;946;0
WireConnection;913;0;912;0
WireConnection;914;0;946;0
WireConnection;910;0;888;0
WireConnection;910;1;909;0
WireConnection;909;0;908;0
WireConnection;909;1;944;0
WireConnection;908;0;905;0
WireConnection;908;1;1021;0
WireConnection;904;0;888;0
WireConnection;904;1;944;0
WireConnection;945;0;904;0
WireConnection;905;0;945;0
WireConnection;905;1;1021;0
WireConnection;946;0;910;0
WireConnection;927;0;926;0
WireConnection;927;1;919;0
WireConnection;947;0;927;0
WireConnection;936;0;937;0
WireConnection;936;1;947;0
WireConnection;928;0;936;0
WireConnection;600;0;68;0
WireConnection;350;0;559;0
WireConnection;345;0;64;0
WireConnection;330;0;65;0
WireConnection;355;0;67;3
WireConnection;559;1;67;2
WireConnection;957;0;959;0
WireConnection;958;0;960;0
WireConnection;620;0;401;0
WireConnection;963;1;964;0
WireConnection;964;0;965;0
WireConnection;964;1;968;0
WireConnection;965;0;967;0
WireConnection;965;1;969;0
WireConnection;968;0;969;0
WireConnection;968;1;966;0
WireConnection;646;0;66;3
WireConnection;408;0;66;1
WireConnection;873;0;872;0
WireConnection;436;0;66;2
WireConnection;959;1;963;0
WireConnection;610;0;608;0
WireConnection;610;1;609;0
WireConnection;610;2;611;0
WireConnection;610;3;955;0
WireConnection;608;0;607;0
WireConnection;971;0;970;0
WireConnection;972;0;971;0
WireConnection;972;1;973;0
WireConnection;972;2;974;0
WireConnection;972;3;975;0
WireConnection;972;4;976;0
WireConnection;1001;0;999;2
WireConnection;1011;0;1001;0
WireConnection;1011;1;1008;0
WireConnection;1009;0;1007;0
WireConnection;1008;0;978;0
WireConnection;1008;1;1009;0
WireConnection;1012;0;1011;0
WireConnection;1000;1;978;0
WireConnection;999;1;1000;0
WireConnection;1007;0;1010;0
WireConnection;1007;1;1006;0
WireConnection;982;0;1013;0
WireConnection;982;1;979;0
WireConnection;983;0;982;0
WireConnection;993;0;991;0
WireConnection;992;0;991;0
WireConnection;992;1;994;0
WireConnection;992;2;986;0
WireConnection;996;0;995;0
WireConnection;996;1;992;0
WireConnection;996;2;987;0
WireConnection;986;0;985;0
WireConnection;987;0;983;0
WireConnection;987;1;984;0
WireConnection;987;2;988;0
WireConnection;987;3;990;0
WireConnection;987;4;997;0
WireConnection;985;0;983;0
WireConnection;985;2;984;0
WireConnection;998;0;1004;0
WireConnection;1004;0;1003;0
WireConnection;1004;1;996;0
WireConnection;995;0;993;0
WireConnection;995;1;994;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;949;0;618;0
WireConnection;944;0;903;0
WireConnection;1021;0;906;0
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
WireConnection;348;0;346;0
WireConnection;348;1;347;0
WireConnection;349;0;1025;0
WireConnection;1024;0;340;0
WireConnection;1024;1;420;0
WireConnection;1025;0;346;0
WireConnection;1025;1;348;0
WireConnection;1025;2;1026;0
WireConnection;342;0;340;0
WireConnection;342;1;420;0
WireConnection;342;2;343;0
WireConnection;344;0;1027;0
WireConnection;1027;0;1024;0
WireConnection;1027;1;342;0
WireConnection;1027;2;1028;0
WireConnection;444;0;442;0
WireConnection;444;1;441;0
WireConnection;444;2;443;0
WireConnection;1032;0;442;0
WireConnection;1032;1;441;0
WireConnection;440;0;1031;0
WireConnection;440;1;439;0
WireConnection;445;0;440;0
WireConnection;1031;0;1032;0
WireConnection;1031;1;444;0
WireConnection;1031;2;1030;0
WireConnection;1036;0;602;0
WireConnection;1036;1;605;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;603;0
WireConnection;1035;0;1036;0
WireConnection;1035;1;604;0
WireConnection;1035;2;1034;0
WireConnection;606;0;1035;0
WireConnection;606;1;610;0
WireConnection;606;2;972;0
WireConnection;612;0;606;0
WireConnection;339;0;338;0
WireConnection;338;0;337;0
WireConnection;337;0;335;0
WireConnection;337;1;336;0
WireConnection;335;0;334;0
WireConnection;335;1;1015;0
WireConnection;1015;0;1055;0
WireConnection;1015;1;1050;0
WireConnection;333;0;1052;0
WireConnection;333;1;783;0
WireConnection;1056;0;1052;0
WireConnection;1056;1;783;0
WireConnection;1056;2;1050;0
WireConnection;1055;0;333;0
WireConnection;1055;1;1056;0
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
WireConnection;563;2;1072;0
WireConnection;562;0;570;0
WireConnection;357;0;356;0
WireConnection;357;1;358;0
WireConnection;360;0;359;0
WireConnection;578;0;563;0
WireConnection;354;1;357;0
WireConnection;572;0;1066;0
WireConnection;572;1;556;0
WireConnection;1059;0;573;0
WireConnection;1059;1;1058;0
WireConnection;1064;0;573;0
WireConnection;1064;1;1059;0
WireConnection;1064;2;1065;0
WireConnection;1066;0;1064;0
WireConnection;1072;0;1071;0
WireConnection;1072;1;1074;0
WireConnection;1071;0;1070;0
WireConnection;1071;1;558;0
WireConnection;1071;2;1073;0
WireConnection;555;0;1069;0
WireConnection;555;1;575;0
WireConnection;1062;0;553;0
WireConnection;1062;1;1061;0
WireConnection;1067;0;553;0
WireConnection;1067;1;1062;0
WireConnection;1067;2;1068;0
WireConnection;1069;0;1067;0
WireConnection;543;0;545;0
WireConnection;543;1;544;0
WireConnection;543;2;567;0
WireConnection;547;0;543;0
WireConnection;547;1;548;0
WireConnection;551;0;803;0
WireConnection;551;1;932;0
WireConnection;552;0;551;0
WireConnection;800;0;797;0
WireConnection;800;2;799;0
WireConnection;800;3;798;0
WireConnection;801;0;800;0
WireConnection;1020;0;1018;0
WireConnection;1020;1;1019;0
WireConnection;779;0;802;0
WireConnection;779;1;933;0
WireConnection;781;0;776;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;1041;0;1091;0
WireConnection;1041;1;1039;0
WireConnection;1043;1;1091;0
WireConnection;1043;0;1041;0
WireConnection;1042;0;1041;0
WireConnection;1042;1;1043;0
WireConnection;1019;0;875;0
WireConnection;1019;1;303;0
WireConnection;1019;2;301;0
WireConnection;1045;0;1044;0
WireConnection;1046;0;1045;0
WireConnection;1046;1;1047;0
WireConnection;1046;2;1047;0
WireConnection;1076;0;1020;0
WireConnection;1076;1;1077;0
WireConnection;1076;2;1078;0
WireConnection;1077;0;1020;0
WireConnection;208;0;1076;0
WireConnection;557;0;1072;0
WireConnection;557;1;547;0
WireConnection;557;2;555;0
WireConnection;561;0;557;0
WireConnection;561;1;576;0
WireConnection;577;0;561;0
WireConnection;727;0;730;0
WireConnection;727;1;729;0
WireConnection;735;1;734;2
WireConnection;738;1;734;1
WireConnection;739;0;738;0
WireConnection;739;1;742;0
WireConnection;742;0;737;0
WireConnection;733;1;735;0
WireConnection;954;0;727;0
WireConnection;954;1;733;0
WireConnection;954;2;953;0
WireConnection;740;0;739;0
WireConnection;729;0;730;0
WireConnection;729;1;732;0
WireConnection;1080;1;1082;0
WireConnection;1082;0;1088;0
WireConnection;1082;3;1084;0
WireConnection;1082;4;1083;0
WireConnection;1085;0;1086;0
WireConnection;1088;0;1089;0
WireConnection;1089;0;1085;4
WireConnection;1089;1;1087;0
WireConnection;1089;2;1081;0
WireConnection;745;0;746;0
WireConnection;745;1;744;0
WireConnection;745;2;1080;0
WireConnection;743;0;745;0
WireConnection;743;1;751;0
WireConnection;750;0;748;0
WireConnection;750;1;749;0
WireConnection;751;1;750;0
WireConnection;748;0;747;0
WireConnection;948;0;954;0
WireConnection;948;3;743;0
WireConnection;1018;0;1042;0
WireConnection;1018;2;826;0
WireConnection;1091;0;773;1
WireConnection;1091;1;825;0
WireConnection;1039;0;1040;0
WireConnection;1039;1;1038;0
WireConnection;1057;0;1040;0
WireConnection;1040;0;1037;0
WireConnection;875;0;304;0
WireConnection;875;1;876;0
WireConnection;1023;0;1022;0
WireConnection;1093;0;1092;0
WireConnection;1095;0;1094;0
WireConnection;1095;2;1046;0
WireConnection;1048;0;1095;0
ASEEND*/
//CHKSM=A2DB247CFBC600D256D00B395D9A749F704FE794