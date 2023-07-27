// Made with Amplify Shader Editor v1.9.1.5
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "LCumashader/Eye(AS)"
{
	Properties
	{
		[Header(Diffuse)]_MainTex("Diffuse Map (_eye)", 2D) = "white" {}
		[HDR]_AdditionalDiffuseColor("AdditionalDiffuseColor", Color) = (1,1,1,1)
		[Toggle]_EyeShadow("EyeShadow", Float) = 1
		[Toggle]_HighLightShadow("HighLightShadow", Float) = 0
		[HDR]_Shadow("Shadow", Color) = (0.699,0.699,0.699,0)
		_ShadowStep("ShadowStep", Range( 0 , 1)) = 0.3
		_ShadowFeather("ShadowFeather", Range( 0 , 1)) = 0.01
		[Toggle]_ReceiveShadowLerp("ReceiveShadowLerp", Float) = 0
		[Toggle]_ShadowinLightColor("Shadow in LightColor", Float) = 0
		[Toggle]_NoShadowinDirectionalLightColor("NoShadow in DirectionalLightColor", Float) = 0
		[Header(HighLight00)][Toggle]_hi00Toggle("hi00 Toggle", Float) = 1
		_hi00("HighLight0 (_hi00)", 2D) = "black" {}
		_hi00Step("hi00Step", Range( 0 , 1)) = 0
		_hi00StepFeather("hi00StepFeather", Range( 0 , 1)) = 1
		_hi00Strength("hi00 Strength", Range( 0 , 2)) = 1
		[Header(HighLight01)][Toggle]_hi01Toggle("hi01 Toggle", Float) = 1
		_hi01("HighLight01 (_hi01)", 2D) = "black" {}
		_hi01Step("hi01Step", Range( 0 , 1)) = 0
		_hi01StepFeather("hi01StepFeather", Range( 0 , 1)) = 1
		_hi01Strength("hi01 Strength", Range( 0 , 2)) = 1
		[Header(HighLight02)][Toggle]_hi02Toggle("hi02 Toggle", Float) = 0
		_hi02("HighLight02 (_hi02)", 2D) = "black" {}
		_hi02Step("hi02Step", Range( 0 , 1)) = 0
		_hi02StepFeather("hi02StepFeather", Range( 0 , 1)) = 1
		_hi02Strength("hi02 Strength", Range( 0 , 2)) = 1
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
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
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
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = objToWorldDir1408;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = objToWorldDir1409;
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - objToWorld1423 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = objToWorld1423;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
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
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
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
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1915 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( clampResult1915 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = float3( 0,0,0 );
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , float3( 0,0,0 ) , temp_cast_1 );
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
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
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
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
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
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = objToWorldDir1408;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = objToWorldDir1409;
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - objToWorld1423 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = objToWorld1423;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
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
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
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
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1915 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( clampResult1915 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = float3( 0,0,0 );
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , float3( 0,0,0 ) , temp_cast_1 );
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
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
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
			uniform float4 _hi00_ST;
			uniform float _hi00Step;
			uniform float _hi00StepFeather;
			uniform float _hi01Toggle;
			uniform sampler2D _hi01;
			uniform float4 _hi01_ST;
			uniform float _hi01Step;
			uniform float _hi01StepFeather;
			uniform float _hi02Toggle;
			uniform sampler2D _hi02;
			uniform float4 _hi02_ST;
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
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 objToWorldDir1408 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceForward, 0 ) ).xyz );
				float3 Forward1412 = objToWorldDir1408;
				float3 objToWorldDir1409 = ASESafeNormalize( mul( unity_ObjectToWorld, float4( _FaceUp, 0 ) ).xyz );
				float3 Up1413 = objToWorldDir1409;
				float3 normalizeResult1447 = normalize( cross( Forward1412 , Up1413 ) );
				float3 Left1411 = normalizeResult1447;
				float3 objToWorld1423 = mul( unity_ObjectToWorld, float4( _FaceCenterPos, 1 ) ).xyz;
				float3 normalizeResult1448 = normalize( ( _WorldSpaceCameraPos - objToWorld1423 ) );
				float3 Center2Cam1429 = normalizeResult1448;
				float dotResult1419 = dot( (Left1411).xz , (Center2Cam1429).xz );
				float Xsign1853 = sign( dotResult1419 );
				float3 FCenterPos1479 = objToWorld1423;
				float3 temp_output_1499_0 = ( _WorldSpaceCameraPos - FCenterPos1479 );
				float3 normalizeResult1500 = normalize( temp_output_1499_0 );
				float dotResult1503 = dot( normalizeResult1500 , Up1413 );
				float3 normalizeResult1512 = normalize( ( _WorldSpaceCameraPos - ( ( dotResult1503 * length( temp_output_1499_0 ) * Up1413 ) + FCenterPos1479 ) ) );
				float3 Cylinder1675 = normalizeResult1512;
				float dotResult1450 = dot( Forward1412 , Cylinder1675 );
				float Xvalue1856 = acos( dotResult1450 );
				float dotResult1465 = dot( Up1413 , Center2Cam1429 );
				float Ysign1863 = sign( dotResult1465 );
				float dotResult1794 = dot( Center2Cam1429 , Cylinder1675 );
				float Yvalue1859 = acos( dotResult1794 );
				float3 appendResult1441 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleLxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleLxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeLxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1741 = (float3(-_XAxisVectorL.x , _XAxisVectorL.z , -_XAxisVectorL.y));
				float3 normalizeResult1747 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1741 : _XAxisVectorL ) );
				float3 appendResult1742 = (float3(-_YAxisVectorL.x , _YAxisVectorL.z , -_YAxisVectorL.y));
				float3 normalizeResult1748 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1742 : _YAxisVectorL ) );
				float3 normalizeResult1749 = ASESafeNormalize( cross( normalizeResult1747 , normalizeResult1748 ) );
				float3x3 CustomMatrixL1745 = float3x3(normalizeResult1747, normalizeResult1748, normalizeResult1749);
				float3 appendResult1849 = (float3(( Xsign1853 <= 0.0 ? (0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.x ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.x - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Xvalue1856 - 0.0) * (( 180.0 / _WorkingAngleRxxyy.y ) - 0.0) / (UNITY_PI - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.y - 0.0) / (1.0 - 0.0)) ) , ( Ysign1863 >= 0.0 ? (0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.z ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.z - 0.0) / (1.0 - 0.0)) : -(0.0 + (saturate( (0.0 + (Yvalue1859 - 0.0) * (( 90.0 / _WorkingAngleRxxyy.w ) - 0.0) / (( 0.5 * UNITY_PI ) - 0.0)) ) - 0.0) * (_MoveRangeRxxyy.w - 0.0) / (1.0 - 0.0)) ) , 0.0));
				float3 appendResult1752 = (float3(-_XAxisVectorR.x , _XAxisVectorR.z , -_XAxisVectorR.y));
				float3 normalizeResult1758 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1752 : _XAxisVectorR ) );
				float3 break1765 = -_YAxisVectorR;
				float3 appendResult1756 = (float3(-break1765.x , break1765.z , -break1765.y));
				float3 normalizeResult1757 = ASESafeNormalize( ( _IsBlenderCoordinateSystem == 1.0 ? appendResult1756 : -_YAxisVectorR ) );
				float3 normalizeResult1762 = ASESafeNormalize( cross( normalizeResult1758 , normalizeResult1757 ) );
				float3x3 CustomMatrixR1760 = float3x3(normalizeResult1758, normalizeResult1757, normalizeResult1762);
				
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
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_sh.w = 0;
				
				v.vertex.xyz += ( v.ase_texcoord.y >= 0.5 ? ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )), CustomMatrixL1745 ) : (( _FakeEyeTrackingL )?( ( _VertexOffsetL + appendResult1441 ) ):( _VertexOffsetL )) ) : ( _UseCustomTransform == 1.0 ? mul( (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )), CustomMatrixR1760 ) : (( _FakeEyeTrackingR )?( ( _VertexOffsetR + appendResult1849 ) ):( _VertexOffsetR )) ) );
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
				float localIsThereALight1917 = IsThereALight();
				UNITY_LIGHT_ATTENUATION(ase_atten, i, ase_worldPos)
				float HalfShadowAttenuation1911 = ( localIsThereALight1917 == 1.0 ? (saturate( ase_atten )*0.5 + 0.5) : 1.0 );
				float shad_lerp1312 = saturate( ( ( _ShadowStep - (( _ReceiveShadowLerp )?( ( HalfLambertTerm781 * HalfShadowAttenuation1911 ) ):( HalfLambertTerm781 )) ) / _ShadowFeather ) );
				float4 lerpResult1325 = lerp( temp_output_1425_0 , ( temp_output_1425_0 * Shadow1322 ) , shad_lerp1312);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 temp_cast_0 = (_MinDirectLight).xxx;
				float3 clampResult1915 = clamp( ase_lightColor.rgb , temp_cast_0 , float3( 2,2,2 ) );
				float3 worldPos1898 = ase_worldPos;
				float localPureLightAttenuation1898 = PureLightAttenuation( worldPos1898 );
				float3 temp_output_1899_0 = ( clampResult1915 * (( _ShadowinLightColor )?( ase_atten ):( localPureLightAttenuation1898 )) );
				#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch1901 = temp_output_1899_0;
				#else
				float3 staticSwitch1901 = float3( 0,0,0 );
				#endif
				float3 temp_cast_1 = (_MaxDirectLight).xxx;
				float3 clampResult1704 = clamp( (( _NoShadowinDirectionalLightColor )?( staticSwitch1901 ):( temp_output_1899_0 )) , float3( 0,0,0 ) , temp_cast_1 );
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
				float grayscale1904 = dot(temp_output_1706_0, float3(0.299,0.587,0.114));
				float3 temp_cast_4 = (grayscale1904).xxx;
				float3 lerpResult1903 = lerp( temp_output_1706_0 , temp_cast_4 , _LightColorGrayScale);
				float3 LightColor208 = lerpResult1903;
				float EyeLightFactor1707 = _EyeLightFactor;
				float4 lerpResult1711 = lerp( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) , ( (( _EyeShadow )?( lerpResult1325 ):( temp_output_1425_0 )) * float4( LightColor208 , 0.0 ) ) , EyeLightFactor1707);
				float3 appendResult1304 = (float3(_hi00Strength , _hi01Strength , _hi02Strength));
				float2 uv_hi00 = i.ase_texcoord1.xy * _hi00_ST.xy + _hi00_ST.zw;
				float4 temp_cast_6 = (_hi00Step).xxxx;
				float2 uv_hi01 = i.ase_texcoord1.xy * _hi01_ST.xy + _hi01_ST.zw;
				float4 temp_cast_7 = (_hi01Step).xxxx;
				float2 uv_hi02 = i.ase_texcoord1.xy * _hi02_ST.xy + _hi02_ST.zw;
				float4 temp_cast_8 = (_hi02Step).xxxx;
				float3 weightedBlendVar1307 = appendResult1304;
				float4 weightedBlend1307 = ( weightedBlendVar1307.x*(( _hi00Toggle )?( saturate( ( ( tex2D( _hi00, uv_hi00 ) - temp_cast_6 ) / _hi00StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.y*(( _hi01Toggle )?( saturate( ( ( tex2D( _hi01, uv_hi01 ) - temp_cast_7 ) / _hi01StepFeather ) ) ):( float4( 0,0,0,0 ) )) + weightedBlendVar1307.z*(( _hi02Toggle )?( saturate( ( ( tex2D( _hi02, uv_hi02 ) - temp_cast_8 ) / _hi02StepFeather ) ) ):( float4( 0,0,0,0 ) )) );
				float4 lerpResult1378 = lerp( weightedBlend1307 , ( weightedBlend1307 * Shadow1322 ) , shad_lerp1312);
				float HighlightLightFactor1710 = _HighlightLightFactor;
				float4 lerpResult1712 = lerp( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) , ( (( _HighLightShadow )?( lerpResult1378 ):( weightedBlend1307 )) * float4( LightColor208 , 0.0 ) ) , HighlightLightFactor1710);
				float4 blend_diff916 = ( lerpResult1711 + lerpResult1712 );
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
Node;AmplifyShaderEditor.CommentaryNode;1906;-2980.197,-595.7455;Inherit;False;2145.526;1260.091;;44;1706;1704;825;773;304;875;303;876;1705;301;780;1882;779;778;776;800;797;781;1718;1719;1709;1710;1708;1707;1895;1896;1897;1898;826;1900;1901;1899;1903;1904;1905;208;1915;1916;1911;1907;1908;1909;1910;1917;Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1880;-4061.302,4568.221;Inherit;False;1668.578;944.9541;;35;1747;1735;1745;1875;1876;1733;1741;1739;1743;1740;1742;1744;1734;1877;1748;1736;1749;1752;1750;1763;1758;1759;1760;1878;1753;1879;1756;1755;1754;1765;1764;1751;1757;1761;1762;Custom Transform;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1874;-746.8922,2961.557;Inherit;False;1249.787;829.2251;;16;1399;1597;1398;1746;1726;1871;1872;1766;1802;1804;1731;1732;1873;1728;1729;1730;Vertex Fuction Output;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1869;-2359.336,4297.288;Inherit;False;1570.03;1315.75;;31;1806;1807;1808;1809;1810;1811;1812;1813;1814;1826;1827;1828;1829;1830;1831;1832;1837;1838;1839;1840;1846;1847;1848;1849;1850;1825;1841;1855;1858;1864;1867;RightEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1868;-2365.5,2877.605;Inherit;False;1570.031;1309.381;;31;1457;1458;1777;1778;1455;1782;1776;1771;1438;1789;1770;1783;1509;1510;1792;1797;1800;1508;1791;1798;1799;1769;1786;1801;1790;1441;1460;1854;1857;1862;1866;LeftEyeTracking;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1865;-3977.381,3562.524;Inherit;False;1512.629;875.1907;;34;1499;1500;1501;1502;1503;1504;1505;1506;1496;1512;1675;1497;1430;1418;1416;1417;1419;1428;1853;1450;1454;1453;1452;1856;1465;1466;1463;1461;1794;1795;1796;1793;1859;1863;Tracking PreCaculate;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1860;-3999.255,2859.168;Inherit;False;1440.917;557.0159;;18;1415;1422;1420;1448;1414;1410;1447;1423;1429;1479;1421;1411;1405;1407;1409;1408;1413;1412;Tracking Basis;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1696;-3744.793,1585.925;Inherit;False;2589.269;1182.234;;38;1307;1304;1378;1376;1377;1379;1382;1234;1285;1286;1370;1389;1342;1683;1679;1678;1681;1682;913;65;1343;1686;1687;1688;1689;1690;1344;1691;1692;1693;1253;1252;66;914;1694;1695;1712;1714;HighLight Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1426;-2976.086,748.0109;Inherit;False;2172.378;763.1063;;24;1345;1325;1323;1324;1318;1309;1310;1312;1316;1314;1317;1315;1322;1321;1380;916;1390;1359;1424;1425;932;933;1711;1713;Main Blend;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;911;-3689.378,277.36;Inherit;False;563.0215;1092.147;;10;345;888;906;907;889;908;909;910;68;600;Texture Input;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;870;-620.4099,505.4407;Inherit;False;356.8159;717.053;;7;869;865;864;868;866;867;863;Stencil;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;643;-601.8802,1347.168;Inherit;False;946.0739;1196.966;;19;609;610;605;604;611;606;612;602;613;616;614;617;615;618;1697;1720;1721;1722;1723;Emissive and other Process;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;600;-3350.354,1139.867;Inherit;False;Emissive;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;889;-3372.952,728.0302;Inherit;False;_hi01;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;910;-3368.124,928.8741;Inherit;False;_hi02;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.GetLocalVarNode;613;-512.1442,2338.781;Inherit;False;612;Refined_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DotProductOpNode;614;-263.2475,2199.979;Inherit;False;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;616;-139.797,2250.183;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;617;-563.7191,2426.13;Inherit;False;Property;_Saturation;Saturation;29;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;132.6317,2238.969;Inherit;False;output_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;610;-212.5704,1797.96;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;869;-533.9653,1106.494;Inherit;False;Property;_StencilZFailFront;Stencil ZFailFront;63;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;868;-532.9438,1017.606;Inherit;False;Property;_StencilFailFront;Stencil FailFront;62;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;864;-533.2119,925.4492;Inherit;False;Property;_StencilPassFront;Stencil PassFront;61;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.StencilOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;865;-535.2554,831.3844;Inherit;False;Property;_StencilComparison;Stencil Comparison;60;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CompareFunction;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;866;-563.5936,733.5771;Inherit;False;Property;_StencilWriteMask;Stencil WriteMask;59;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;-568.7032,644.6902;Inherit;False;Property;_StencilReadMask;Stencil ReadMask;58;0;Create;True;0;0;0;True;0;False;255;255;0;255;0;1;FLOAT;0
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
Node;AmplifyShaderEditor.RangedFloatNode;863;-570.4095,555.4409;Inherit;False;Property;_StencilReference;Stencil Reference;57;1;[Header];Create;True;1;Stencil Buffer;0;0;True;0;False;0;0;0;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.SummedBlendNode;1307;-2429.248,2034.079;Inherit;False;5;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1304;-2640.523,1696.898;Inherit;False;FLOAT3;4;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1378;-1962.042,2099.704;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1376;-2414.771,2200.299;Inherit;False;1322;Shadow;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1377;-2246.161,2143;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1379;-2121.344,2208.726;Inherit;False;1312;shad_lerp;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1382;-1820.089,2037.122;Inherit;False;Property;_HighLightShadow;HighLightShadow;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1234;-2924.441,1635.925;Inherit;False;Property;_hi00Strength;hi00 Strength;14;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1285;-2922.423,1717.319;Inherit;False;Property;_hi01Strength;hi01 Strength;19;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1286;-2918.032,1797.441;Inherit;False;Property;_hi02Strength;hi02 Strength;24;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1370;-1778.037,2147.822;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1389;-1588.238,2114.655;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1342;-2702.802,1879.026;Inherit;False;Property;_hi00Toggle;hi00 Toggle;10;0;Create;True;0;0;0;False;1;Header(HighLight00);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1683;-3212.793,1901.157;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1679;-2987.677,1906.574;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1678;-2864.176,1907.875;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1681;-3503.791,2085.257;Inherit;False;Property;_hi00Step;hi00Step;12;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1682;-3220.095,2087.355;Inherit;False;Property;_hi00StepFeather;hi00StepFeather;13;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;913;-3693.15,1890.393;Inherit;False;888;_hi00;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1343;-2693.673,2162.425;Inherit;False;Property;_hi01Toggle;hi01 Toggle;15;0;Create;True;0;0;0;False;1;Header(HighLight01);False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1686;-3206.657,2187.732;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1687;-2981.541,2193.149;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1688;-2858.04,2194.45;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1689;-3497.656,2362.331;Inherit;False;Property;_hi01Step;hi01Step;17;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1690;-3209.793,2366.013;Inherit;False;Property;_hi01StepFeather;hi01StepFeather;18;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1344;-2694.001,2454.018;Inherit;False;Property;_hi02Toggle;hi02 Toggle;20;0;Create;True;0;0;0;False;1;Header(HighLight02);False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1691;-3204.31,2473.878;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1692;-2979.194,2479.295;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1693;-2855.693,2480.596;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1253;-3682.411,2461.618;Inherit;False;910;_hi02;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;1252;-3505.862,2461.065;Inherit;True;Property;_HighLight3;HighLight02;6;0;Create;True;0;0;0;False;0;False;-1;0e45854869fbfb241a580844ed684344;201ad45eeb9b1814983e4236fee69232;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;66;-3519.084,2167.468;Inherit;True;Property;_HighLight01;HighLight01;2;0;Create;True;0;0;0;False;0;False;-1;None;7ab07b24411a8464c93e7c9db344a4b0;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;914;-3692.774,2166.36;Inherit;False;889;_hi01;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1694;-3495.309,2648.477;Inherit;False;Property;_hi02Step;hi02Step;22;0;Create;True;0;0;0;False;0;False;0;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1695;-3207.446,2652.159;Inherit;False;Property;_hi02StepFeather;hi02StepFeather;23;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;888;-3369.182,526.5605;Inherit;False;_hi00;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;345;-3379.124,318.6331;Inherit;False;_eye;-1;True;1;0;SAMPLER2D;0,0,0,0;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;65;-3520.539,1893.072;Inherit;True;Property;_HighLight0;HighLight0;1;1;[Header];Create;True;1;Shadow;0;0;False;0;False;-1;None;ceb81bf925c34a24ebbcaf9bd3b69644;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;908;-3630.479,727.13;Inherit;True;Property;_hi01;HighLight01 (_hi01);16;0;Create;False;0;0;0;False;0;False;None;a8a103ca80612c44882fd0265ec16a8b;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;909;-3630.473,930.1114;Inherit;True;Property;_hi02;HighLight02 (_hi02);21;0;Create;False;0;0;0;False;0;False;None;cbc89d6e9af9d474094d8c98c93b4519;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;906;-3648.479,321.3369;Inherit;True;Property;_MainTex;Diffuse Map (_eye);0;1;[Header];Create;False;1;Diffuse;0;0;False;0;False;None;784ceb657845ba045b7c7cede00feb22;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;907;-3634.948,525.9529;Inherit;True;Property;_hi00;HighLight0 (_hi00);11;0;Create;False;0;0;0;False;0;False;None;54d97392ddf2dd64a8ce854afd9582e4;False;black;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;68;-3639.376,1139.507;Inherit;True;Property;_EmiTex;Emissive (_emi) [optional];25;1;[Header];Create;False;1;Emissive and Other;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;609;-499.472,1747.211;Inherit;False;600;Emissive;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1697;-552.4951,2025.478;Inherit;False;Property;_EmmisiveStrength;EmmisiveStrength;27;0;Create;True;0;0;0;False;0;False;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1702;538.3658,1799.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ShadowCaster;0;4;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1698;538.3658,1661.995;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1701;559.4426,2028.477;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;Deferred;0;3;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1390;-1602.253,1189.009;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1713;-1654.814,1306.242;Inherit;False;1707;EyeLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1711;-1431.252,1113.943;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;-1688.36,2239.709;Inherit;False;1710;HighlightLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1712;-1424.692,2045.981;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1424;-2721.632,1299.117;Inherit;False;Property;_AdditionalDiffuseColor;AdditionalDiffuseColor;1;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;611;-523.3725,1836.114;Inherit;False;Property;_EmissiveColor;EmissiveColor;26;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;615;-523.7452,2153.081;Inherit;False;Property;_UnsaturationColor;UnsaturationColor;30;1;[HDR];Create;True;0;0;0;False;0;False;0.2117647,0.7137255,0.07058824,0;0.2117647,0.7137255,0.07058824,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1715;-185.392,1000.932;Inherit;False;225;166;;1;1716;Cull;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1716;-135.392,1050.931;Inherit;False;Property;_CullMode;Cull Mode;64;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1700;453.0906,2348.346;Float;False;False;-1;2;ASEMaterialInspector;100;12;New Amplify Shader;fe4af87006695164d84819765fe282b7;True;ForwardAdd;0;2;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;True;True;4;1;False;;1;False;;1;0;False;;1;False;;True;5;False;;5;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ColorNode;602;-572.1188,1397.168;Inherit;False;Property;_CharaColor;CharaColor;28;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;605;-542.1444,1574.089;Inherit;False;916;blend_diff;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1720;-335.5077,1692.509;Inherit;False;1719;GlobalLightFactor;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;604;-315.8462,1561.11;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1722;-318.1076,1457.409;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1723;-147.8668,1503.37;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;606;29.08198,1677.367;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;612;155.4932,1674.52;Inherit;False;Refined_diff;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1699;453.0906,2238.346;Float;False;True;-1;2;ASEMaterialInspector;100;12;LCumashader/Eye(AS);fe4af87006695164d84819765fe282b7;True;ForwardBase;0;1;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_CullMode;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;True;_StencilReadMask;255;True;_StencilWriteMask;0;True;_StencilComparison;0;True;_StencilPassFront;0;True;_StencilFailFront;0;True;_StencilZFailFront;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;5;False;True;True;False;True;False;;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1415;-3349.73,2984.41;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1422;-3057.822,3158.562;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1420;-3309.872,3073.191;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1448;-2924.438,3158.585;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1414;-3350.746,2909.168;Inherit;False;1412;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1410;-3178.345,2934.381;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1447;-3026.438,2936.585;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformPositionNode;1423;-3272.037,3229.656;Inherit;False;Object;World;False;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1429;-2783.138,3154.208;Inherit;False;Center2Cam;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1479;-3051.547,3272.746;Inherit;False;FCenterPos;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1421;-3452.855,3230.583;Inherit;False;Property;_FaceCenterPos;FaceCenterPos;54;1;[Header];Create;True;1;Tracking Basis(In ObjectSpace);0;0;False;0;False;0,0.15,0;0,0.125,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1411;-2886.345,2933.381;Inherit;False;Left;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1405;-3949.255,2979.878;Inherit;False;Property;_FaceForward;FaceForward;55;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;1407;-3940.842,3136.809;Inherit;False;Property;_FaceUp;FaceUp;56;0;Create;True;0;0;0;False;0;False;0,1,0;0,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1409;-3779.8,3136.487;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TransformDirectionNode;1408;-3778.172,2978.795;Inherit;False;Object;World;True;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1413;-3569.243,3135.807;Inherit;False;Up;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1412;-3566.243,2977.807;Inherit;False;Forward;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1499;-3696.403,3783.243;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1500;-3549.259,3774.318;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LengthOpNode;1501;-3539.962,3857.446;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1502;-3567.73,3936.268;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1503;-3378.225,3826.365;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1504;-3251.256,3896.471;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1505;-3117.316,3949.937;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1506;-3858.981,3966.363;Inherit;False;1479;FCenterPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1496;-2972.884,3888.101;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1512;-2835.207,3900.758;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1675;-2692.368,3899.626;Inherit;False;Cylinder;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1497;-3927.381,3612.524;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1430;-3916.556,4142.401;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1418;-3742.825,4142.61;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1416;-3904.958,4063.623;Inherit;False;1411;Left;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;1417;-3742.758,4062.123;Inherit;False;True;False;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DotProductOpNode;1419;-3546.826,4090.611;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1428;-3424.712,4092.608;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1853;-3308.201,4088.55;Inherit;False;Xsign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1450;-2934.203,4089.262;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ACosOpNode;1454;-2810.741,4091.182;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1453;-3117.79,4059.851;Inherit;False;1412;Forward;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1452;-3119.205,4148.86;Inherit;False;1675;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1856;-2689.552,4084.593;Inherit;False;Xvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1465;-3640.105,4263.963;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SignOpNode;1466;-3517.992,4265.96;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1463;-3817.237,4234.975;Inherit;False;1413;Up;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1461;-3828.837,4313.754;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1794;-3005.168,4270.3;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1795;-3194.635,4235.692;Inherit;False;1429;Center2Cam;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1796;-3190.852,4322.313;Inherit;False;1675;Cylinder;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ACosOpNode;1793;-2886.551,4270.482;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1859;-2766.169,4264.25;Inherit;False;Yvalue;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1863;-3394.364,4261.119;Inherit;False;Ysign;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1457;-1749.165,3011.828;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1458;-1569.66,3013.265;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1777;-1752.733,3297.722;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1778;-1573.227,3299.159;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1455;-1956.072,2997.101;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1782;-1900.807,3072.979;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1776;-1954.839,3306.994;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1771;-1407.024,3300.936;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1438;-1408.861,3008.082;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1789;-2315.5,3483.943;Inherit;False;Property;_WorkingAngleLxxyy;+/-WorkingAngleL.xxyy;43;0;Create;True;0;0;0;False;0;False;30,45,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Compare;1770;-1176.302,2954.316;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1783;-1896.309,3378.451;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1509;-1748.48,3702.776;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1510;-1569.858,3703.27;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1792;-1752.08,3978.84;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1797;-1573.458,3979.333;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1800;-1407.642,3969.849;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1508;-1948.733,3702.491;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1791;-1897.081,3783.203;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1798;-1948.773,3972.475;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1799;-1897.121,4053.185;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1769;-1690.436,3489.617;Inherit;False;Property;_MoveRangeLxxyy;+/-MoveRangeL.xxyy;42;0;Create;True;0;0;0;False;0;False;0.003,0.004,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NegateNode;1786;-1231.291,3298.517;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1801;-1236.111,3971.01;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1790;-1109.225,3862.818;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1441;-956.269,3365.455;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1460;-1400.842,3697.986;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1854;-1394.787,2927.605;Inherit;False;1853;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1857;-1926.704,3198.014;Inherit;False;1856;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1862;-1933.928,3884.327;Inherit;False;1859;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1866;-1336.177,3878.398;Inherit;False;1863;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1806;-1743.001,4437.88;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1807;-1563.496,4439.317;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1808;-1746.569,4723.775;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1809;-1567.063,4725.211;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1810;-1949.908,4423.153;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1811;-1894.643,4499.032;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1812;-1948.675,4733.047;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1813;-1400.861,4726.988;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1814;-1402.698,4434.134;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1826;-1170.138,4380.369;Inherit;False;5;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1827;-1890.145,4804.502;Inherit;False;2;0;FLOAT;180;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1828;-1742.316,5128.829;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1829;-1563.694,5129.322;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1830;-1745.916,5404.893;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1831;-1567.294,5405.386;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1832;-1401.478,5395.902;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1837;-1942.569,5128.543;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1838;-1890.917,5209.255;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PiNode;1839;-1942.61,5398.527;Inherit;False;1;0;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1840;-1890.958,5479.239;Inherit;False;2;0;FLOAT;90;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1846;-1225.127,4724.57;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1847;-1229.948,5397.062;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1848;-1103.061,5288.871;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1849;-950.1057,4791.507;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCRemapNode;1850;-1394.678,5124.039;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;1825;-2309.336,4909.996;Inherit;False;Property;_WorkingAngleRxxyy;+/-WorkingAngleR.xxyy;47;0;Create;True;0;0;0;False;0;False;45,30,30,30;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;1841;-1684.272,4915.668;Inherit;False;Property;_MoveRangeRxxyy;+/-MoveRangeR.xxyy;46;0;Create;True;0;0;0;False;0;False;0.004,0.003,0.004,0.004;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1855;-1385.918,4347.288;Inherit;False;1853;Xsign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1858;-1922.588,4616.724;Inherit;False;1856;Xvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1864;-1927.05,5313.07;Inherit;False;1859;Yvalue;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1867;-1323.722,5303.791;Inherit;False;1863;Ysign;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1399;-365.3116,3255.921;Inherit;False;Property;_FakeEyeTrackingL;FakeEyeTrackingL;41;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1597;-481.1573,3346.162;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1398;-696.8922,3248.503;Inherit;False;Property;_VertexOffsetL;Vertex OffsetL;40;1;[Header];Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1746;-338.301,3355.752;Inherit;False;1745;CustomMatrixL;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1726;-136.1975,3313.661;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1872;4.58773,3180.214;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1766;-360.0476,3662.945;Inherit;False;1760;CustomMatrixR;1;0;OBJECT;;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1802;-377.2906,3548.371;Inherit;False;Property;_FakeEyeTrackingR;FakeEyeTrackingR;45;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1804;-506.4134,3656.982;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1731;-688.907,3547.854;Inherit;False;Property;_VertexOffsetR;Vertex OffsetR;44;0;Create;True;1;Vertex Function;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1732;-135.9866,3619.686;Inherit;False;2;2;0;FLOAT3;0,1,1;False;1;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1873;9.479233,3477.768;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1728;323.2944,3132.945;Inherit;False;3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1729;157.6807,3134.827;Inherit;False;Constant;_0_6;0.5_;16;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexCoordVertexDataNode;1730;114.3092,3011.557;Inherit;False;0;2;0;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.NormalizeNode;1747;-3214.176,4626.403;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1735;-2847.385,4624.064;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1745;-2636.682,4618.221;Inherit;False;CustomMatrixL;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RangedFloatNode;1875;-3631.085,4621.311;Inherit;False;Property;_IsBlenderCoordinateSystem;IsBlenderCoordinateSystem;49;1;[Toggle];Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1876;-3360.523,4619.781;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1733;-3837.864,4694.093;Inherit;False;Property;_XAxisVectorL;+X Axis Vector L;50;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DynamicAppendNode;1741;-3524.196,4773.979;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1739;-3647.326,4768.639;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1743;-3652.396,4850.31;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1740;-3641.533,4964.331;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1742;-3518.646,4968.048;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1744;-3634.396,5039.92;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1734;-3839.452,4897.322;Inherit;False;Property;_YAxisVectorL;+Y Axis Vector L;51;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Compare;1877;-3346.414,4835.953;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1748;-3205.036,4843.019;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1736;-3009.423,4831.229;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1749;-2847.328,4841.464;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1752;-3504.552,5154.894;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1750;-3623.482,5154.955;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1763;-3839.244,5081.5;Inherit;False;Property;_XAxisVectorR;+X Axis Vector R;52;0;Create;True;2;Custom Transform Vector;(In Blender Coordinate System);0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1758;-3192.625,5016.822;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.MatrixFromVectors;1759;-2839.813,5019.672;Inherit;False;FLOAT3x3;True;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1760;-2622.324,5013.128;Inherit;False;CustomMatrixR;-1;True;1;0;FLOAT3x3;0,0,0,1,1,1,1,0,1;False;1;FLOAT3x3;0
Node;AmplifyShaderEditor.Compare;1878;-3343.702,5014.316;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1753;-3633.241,5218.315;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1879;-3339.646,5182.196;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1756;-3461.533,5323.389;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NegateNode;1755;-3585.825,5402.775;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1754;-3584.42,5326.518;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1765;-3709.055,5327.655;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.NegateNode;1764;-3834.831,5261.131;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1751;-4011.302,5259.266;Inherit;False;Property;_YAxisVectorR;-Y Axis Vector R;53;0;Create;True;0;0;0;False;0;False;0,0,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1757;-3195.353,5191.298;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CrossProductOpNode;1761;-3016.795,5208.261;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1762;-2861.03,5205.693;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1871;-236.2894,3440.137;Inherit;False;Property;_UseCustomTransform;Use Custom Transform;48;2;[Header];[Toggle];Create;True;1;Custom Transform Direction;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1309;-1766.423,801.9286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1310;-1901.123,802.2278;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1312;-1610.077,794.7646;Inherit;False;shad_lerp;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1316;-2070.338,798.7106;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1322;-1642.755,901.1058;Inherit;False;Shadow;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1321;-1863.83,901.0179;Inherit;False;Property;_Shadow;Shadow;4;1;[HDR];Create;True;0;0;0;False;0;False;0.699,0.699,0.699,0;0.5188679,0.5188679,0.5188679,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1314;-2387.788,802.8782;Inherit;False;Property;_ShadowStep;ShadowStep;5;0;Create;True;0;0;0;False;0;False;0.3;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1315;-2153.83,1005.542;Inherit;False;Property;_ShadowFeather;ShadowFeather;6;0;Create;True;0;0;0;False;0;False;0.01;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1912;-2427.925,957.8497;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1913;-2294.426,894.0496;Inherit;False;Property;_ReceiveShadowLerp;ReceiveShadowLerp;7;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1914;-2683.497,973.9708;Inherit;False;1911;HalfShadowAttenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1317;-2660.395,888.7229;Inherit;False;781;HalfLambertTerm;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1721;-537.1075,1660.709;Inherit;False;208;LightColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1718;-1316.397,-504.7964;Inherit;False;Property;_GlobalLightFactor;GlobalLightFactor;39;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1719;-1047.397,-503.7964;Inherit;False;GlobalLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1709;-1337.116,-326.249;Inherit;False;Property;_HighlightLightFactor;HighlightLightFactor;38;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1710;-1064.85,-327.3133;Inherit;False;HighlightLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1708;-1324.644,-418.428;Inherit;False;Property;_EyeLightFactor;EyeLightFactor;37;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1707;-1052.034,-419.695;Inherit;False;EyeLightFactor;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1705;-1708.644,396.2424;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-2032.432,479.6969;Inherit;False;Property;_MinIndirectLight;MinIndirectLight;34;0;Create;True;0;0;0;False;0;False;0.1;0.3;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;301;-2014.459,564.2768;Inherit;False;Property;_MaxIndirectLight;MaxIndirectLight;35;0;Create;True;0;0;0;False;0;False;1;1;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;304;-2238.701,349.8797;Inherit;False;Tangent;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;875;-2017.222,376.3657;Inherit;False;Property;_UnifyIndirectDiffuseLight;Unify IndirectDiffuseLight;33;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;876;-2182.738,432.3668;Inherit;False;return max(ShadeSH9(half4(0, 0, 0, 1)).rgb, ShadeSH9(half4(0, -1, 0, 1)).rgb)@;3;Create;0;MaxShadeSH9;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1706;-1544.001,122.7164;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;826;-1916.707,189.5829;Inherit;False;Property;_MaxDirectLight;MaxDirectLight;32;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1900;-1975.501,-20.86246;Inherit;False;Property;_NoShadowinDirectionalLightColor;NoShadow in DirectionalLightColor;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1901;-2266.944,-28.86216;Inherit;False;Property;_Keyword2;Keyword 0;6;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1899;-2254.872,154.5155;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1903;-1218.982,125.7524;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TFHCGrayscale;1904;-1420.076,189.5185;Inherit;False;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1905;-1478.822,268.5694;Inherit;False;Property;_LightColorGrayScale;LightColor GrayScale;36;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1704;-1673.085,-6.843266;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;773;-2685.688,-16.09187;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ClampOpNode;1915;-2465.965,32.26193;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;2,2,2;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;825;-2787.758,107.7158;Inherit;False;Property;_MinDirectLight;MinDirectLight;31;1;[Header];Create;True;1;Light;0;0;False;0;False;0;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1895;-2859.365,218.4727;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LightAttenuation;1896;-2683.683,285.7096;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1897;-2490.205,233.7517;Inherit;False;Property;_ShadowinLightColor;Shadow in LightColor;8;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1898;-2687.652,200.9997;Inherit;False;#ifdef POINT$        unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz@ \$        return tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r@$#endif$$#ifdef SPOT$#if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1))$#else$#define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord4 lightCoord = input._LightCoord$#endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz)@$#endif$$#ifdef DIRECTIONAL$        return 1@$#endif$$#ifdef POINT_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xyz$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord3 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTextureB0, dot(lightCoord, lightCoord).rr).r * texCUBE(_LightTexture0, lightCoord).w@$#endif$$#ifdef DIRECTIONAL_COOKIE$#   if !defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS)$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(worldPos, 1)).xy$#   else$#       define DECLARE_LIGHT_COORD(input, worldPos) unityShadowCoord2 lightCoord = input._LightCoord$#   endif$        DECLARE_LIGHT_COORD(input, worldPos)@ \$        return tex2D(_LightTexture0, lightCoord).w@$#endif;1;Create;1;True;worldPos;FLOAT3;0,0,0;In;;Inherit;False;Pure Light Attenuation;False;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;208;-1070.931,123.1252;Inherit;False;LightColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1907;-2750.166,-209.8593;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;1908;-2613.467,-178.8054;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1909;-2770.055,-130.5744;Float;False;Constant;_RemapValue3;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1910;-2944.108,-214.7763;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1916;-2413.858,-239.3494;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1911;-2262.588,-230.633;Inherit;False;HalfShadowAttenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1917;-2564.834,-267.4665;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1882;-2936.544,-555.9268;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;780;-2915.565,-408.8456;Inherit;False;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;779;-2680.312,-509.6523;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;778;-2704.166,-398.1227;Float;False;Constant;_RemapValue1;Remap Value;0;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScaleAndOffsetNode;776;-2526.396,-472.4172;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;797;-2483.865,-544.9473;Inherit;False;return any(_WorldSpaceLightPos0.xyz)@;1;Create;0;Is There A Light;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;800;-2317.201,-519.0161;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;781;-2141.415,-516.3571;Inherit;False;HalfLambertTerm;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
WireConnection;600;0;68;0
WireConnection;889;0;908;0
WireConnection;910;0;909;0
WireConnection;614;0;615;0
WireConnection;614;1;613;0
WireConnection;616;0;614;0
WireConnection;616;1;613;0
WireConnection;616;2;617;0
WireConnection;618;0;616;0
WireConnection;610;0;609;0
WireConnection;610;1;611;0
WireConnection;610;2;1697;0
WireConnection;1345;0;1425;0
WireConnection;1345;1;1325;0
WireConnection;1325;0;1425;0
WireConnection;1325;1;1324;0
WireConnection;1325;2;1318;0
WireConnection;1324;0;1425;0
WireConnection;1324;1;1323;0
WireConnection;1380;0;1711;0
WireConnection;1380;1;1712;0
WireConnection;1425;0;932;0
WireConnection;1425;1;1424;0
WireConnection;916;0;1380;0
WireConnection;932;0;933;0
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
WireConnection;1389;0;1382;0
WireConnection;1389;1;1370;0
WireConnection;1342;1;1678;0
WireConnection;1683;0;65;0
WireConnection;1683;1;1681;0
WireConnection;1679;0;1683;0
WireConnection;1679;1;1682;0
WireConnection;1678;0;1679;0
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
WireConnection;66;0;914;0
WireConnection;888;0;907;0
WireConnection;345;0;906;0
WireConnection;65;0;913;0
WireConnection;1390;0;1345;0
WireConnection;1390;1;1359;0
WireConnection;1711;0;1345;0
WireConnection;1711;1;1390;0
WireConnection;1711;2;1713;0
WireConnection;1712;0;1382;0
WireConnection;1712;1;1389;0
WireConnection;1712;2;1714;0
WireConnection;604;0;602;0
WireConnection;604;1;605;0
WireConnection;604;2;1721;0
WireConnection;1722;0;602;0
WireConnection;1722;1;605;0
WireConnection;1723;0;1722;0
WireConnection;1723;1;604;0
WireConnection;1723;2;1720;0
WireConnection;606;0;1723;0
WireConnection;606;1;610;0
WireConnection;612;0;606;0
WireConnection;1699;0;618;0
WireConnection;1699;2;1728;0
WireConnection;1422;0;1420;0
WireConnection;1422;1;1423;0
WireConnection;1448;0;1422;0
WireConnection;1410;0;1414;0
WireConnection;1410;1;1415;0
WireConnection;1447;0;1410;0
WireConnection;1423;0;1421;0
WireConnection;1429;0;1448;0
WireConnection;1479;0;1423;0
WireConnection;1411;0;1447;0
WireConnection;1409;0;1407;0
WireConnection;1408;0;1405;0
WireConnection;1413;0;1409;0
WireConnection;1412;0;1408;0
WireConnection;1499;0;1497;0
WireConnection;1499;1;1506;0
WireConnection;1500;0;1499;0
WireConnection;1501;0;1499;0
WireConnection;1503;0;1500;0
WireConnection;1503;1;1502;0
WireConnection;1504;0;1503;0
WireConnection;1504;1;1501;0
WireConnection;1504;2;1502;0
WireConnection;1505;0;1504;0
WireConnection;1505;1;1506;0
WireConnection;1496;0;1497;0
WireConnection;1496;1;1505;0
WireConnection;1512;0;1496;0
WireConnection;1675;0;1512;0
WireConnection;1418;0;1430;0
WireConnection;1417;0;1416;0
WireConnection;1419;0;1417;0
WireConnection;1419;1;1418;0
WireConnection;1428;0;1419;0
WireConnection;1853;0;1428;0
WireConnection;1450;0;1453;0
WireConnection;1450;1;1452;0
WireConnection;1454;0;1450;0
WireConnection;1856;0;1454;0
WireConnection;1465;0;1463;0
WireConnection;1465;1;1461;0
WireConnection;1466;0;1465;0
WireConnection;1794;0;1795;0
WireConnection;1794;1;1796;0
WireConnection;1793;0;1794;0
WireConnection;1859;0;1793;0
WireConnection;1863;0;1466;0
WireConnection;1457;0;1857;0
WireConnection;1457;2;1455;0
WireConnection;1457;4;1782;0
WireConnection;1458;0;1457;0
WireConnection;1777;0;1857;0
WireConnection;1777;2;1776;0
WireConnection;1777;4;1783;0
WireConnection;1778;0;1777;0
WireConnection;1782;1;1789;1
WireConnection;1771;0;1778;0
WireConnection;1771;4;1769;2
WireConnection;1438;0;1458;0
WireConnection;1438;4;1769;1
WireConnection;1770;0;1854;0
WireConnection;1770;2;1438;0
WireConnection;1770;3;1786;0
WireConnection;1783;1;1789;2
WireConnection;1509;0;1862;0
WireConnection;1509;2;1508;0
WireConnection;1509;4;1791;0
WireConnection;1510;0;1509;0
WireConnection;1792;0;1862;0
WireConnection;1792;2;1798;0
WireConnection;1792;4;1799;0
WireConnection;1797;0;1792;0
WireConnection;1800;0;1797;0
WireConnection;1800;4;1769;4
WireConnection;1791;1;1789;3
WireConnection;1799;1;1789;4
WireConnection;1786;0;1771;0
WireConnection;1801;0;1800;0
WireConnection;1790;0;1866;0
WireConnection;1790;2;1460;0
WireConnection;1790;3;1801;0
WireConnection;1441;0;1770;0
WireConnection;1441;1;1790;0
WireConnection;1460;0;1510;0
WireConnection;1460;4;1769;3
WireConnection;1806;0;1858;0
WireConnection;1806;2;1810;0
WireConnection;1806;4;1811;0
WireConnection;1807;0;1806;0
WireConnection;1808;0;1858;0
WireConnection;1808;2;1812;0
WireConnection;1808;4;1827;0
WireConnection;1809;0;1808;0
WireConnection;1811;1;1825;1
WireConnection;1813;0;1809;0
WireConnection;1813;4;1841;2
WireConnection;1814;0;1807;0
WireConnection;1814;4;1841;1
WireConnection;1826;0;1855;0
WireConnection;1826;2;1814;0
WireConnection;1826;3;1846;0
WireConnection;1827;1;1825;2
WireConnection;1828;0;1864;0
WireConnection;1828;2;1837;0
WireConnection;1828;4;1838;0
WireConnection;1829;0;1828;0
WireConnection;1830;0;1864;0
WireConnection;1830;2;1839;0
WireConnection;1830;4;1840;0
WireConnection;1831;0;1830;0
WireConnection;1832;0;1831;0
WireConnection;1832;4;1841;4
WireConnection;1838;1;1825;3
WireConnection;1840;1;1825;4
WireConnection;1846;0;1813;0
WireConnection;1847;0;1832;0
WireConnection;1848;0;1867;0
WireConnection;1848;2;1850;0
WireConnection;1848;3;1847;0
WireConnection;1849;0;1826;0
WireConnection;1849;1;1848;0
WireConnection;1850;0;1829;0
WireConnection;1850;4;1841;3
WireConnection;1399;0;1398;0
WireConnection;1399;1;1597;0
WireConnection;1597;0;1398;0
WireConnection;1597;1;1441;0
WireConnection;1726;0;1399;0
WireConnection;1726;1;1746;0
WireConnection;1872;0;1871;0
WireConnection;1872;2;1726;0
WireConnection;1872;3;1399;0
WireConnection;1802;0;1731;0
WireConnection;1802;1;1804;0
WireConnection;1804;0;1731;0
WireConnection;1804;1;1849;0
WireConnection;1732;0;1802;0
WireConnection;1732;1;1766;0
WireConnection;1873;0;1871;0
WireConnection;1873;2;1732;0
WireConnection;1873;3;1802;0
WireConnection;1728;0;1730;2
WireConnection;1728;1;1729;0
WireConnection;1728;2;1872;0
WireConnection;1728;3;1873;0
WireConnection;1747;0;1876;0
WireConnection;1735;0;1747;0
WireConnection;1735;1;1748;0
WireConnection;1735;2;1749;0
WireConnection;1745;0;1735;0
WireConnection;1876;0;1875;0
WireConnection;1876;2;1741;0
WireConnection;1876;3;1733;0
WireConnection;1741;0;1739;0
WireConnection;1741;1;1733;3
WireConnection;1741;2;1743;0
WireConnection;1739;0;1733;1
WireConnection;1743;0;1733;2
WireConnection;1740;0;1734;1
WireConnection;1742;0;1740;0
WireConnection;1742;1;1734;3
WireConnection;1742;2;1744;0
WireConnection;1744;0;1734;2
WireConnection;1877;0;1875;0
WireConnection;1877;2;1742;0
WireConnection;1877;3;1734;0
WireConnection;1748;0;1877;0
WireConnection;1736;0;1747;0
WireConnection;1736;1;1748;0
WireConnection;1749;0;1736;0
WireConnection;1752;0;1750;0
WireConnection;1752;1;1763;3
WireConnection;1752;2;1753;0
WireConnection;1750;0;1763;1
WireConnection;1758;0;1878;0
WireConnection;1759;0;1758;0
WireConnection;1759;1;1757;0
WireConnection;1759;2;1762;0
WireConnection;1760;0;1759;0
WireConnection;1878;0;1875;0
WireConnection;1878;2;1752;0
WireConnection;1878;3;1763;0
WireConnection;1753;0;1763;2
WireConnection;1879;0;1875;0
WireConnection;1879;2;1756;0
WireConnection;1879;3;1764;0
WireConnection;1756;0;1754;0
WireConnection;1756;1;1765;2
WireConnection;1756;2;1755;0
WireConnection;1755;0;1765;1
WireConnection;1754;0;1765;0
WireConnection;1765;0;1764;0
WireConnection;1764;0;1751;0
WireConnection;1757;0;1879;0
WireConnection;1761;0;1758;0
WireConnection;1761;1;1757;0
WireConnection;1762;0;1761;0
WireConnection;1309;0;1310;0
WireConnection;1310;0;1316;0
WireConnection;1310;1;1315;0
WireConnection;1312;0;1309;0
WireConnection;1316;0;1314;0
WireConnection;1316;1;1913;0
WireConnection;1322;0;1321;0
WireConnection;1912;0;1317;0
WireConnection;1912;1;1914;0
WireConnection;1913;0;1317;0
WireConnection;1913;1;1912;0
WireConnection;1719;0;1718;0
WireConnection;1710;0;1709;0
WireConnection;1707;0;1708;0
WireConnection;1705;0;875;0
WireConnection;1705;1;303;0
WireConnection;1705;2;301;0
WireConnection;875;0;304;0
WireConnection;875;1;876;0
WireConnection;1706;0;1704;0
WireConnection;1706;1;1705;0
WireConnection;1900;0;1899;0
WireConnection;1900;1;1901;0
WireConnection;1901;0;1899;0
WireConnection;1899;0;1915;0
WireConnection;1899;1;1897;0
WireConnection;1903;0;1706;0
WireConnection;1903;1;1904;0
WireConnection;1903;2;1905;0
WireConnection;1904;0;1706;0
WireConnection;1704;0;1900;0
WireConnection;1704;2;826;0
WireConnection;1915;0;773;1
WireConnection;1915;1;825;0
WireConnection;1897;0;1898;0
WireConnection;1897;1;1896;0
WireConnection;1898;0;1895;0
WireConnection;208;0;1903;0
WireConnection;1907;0;1910;0
WireConnection;1908;0;1907;0
WireConnection;1908;1;1909;0
WireConnection;1908;2;1909;0
WireConnection;1916;0;1917;0
WireConnection;1916;2;1908;0
WireConnection;1911;0;1916;0
WireConnection;779;0;1882;0
WireConnection;779;1;780;0
WireConnection;776;0;779;0
WireConnection;776;1;778;0
WireConnection;776;2;778;0
WireConnection;800;0;797;0
WireConnection;800;2;776;0
WireConnection;781;0;800;0
ASEEND*/
//CHKSM=9E1789109C87C0C520F6DD95C95A96D8B6EFE261